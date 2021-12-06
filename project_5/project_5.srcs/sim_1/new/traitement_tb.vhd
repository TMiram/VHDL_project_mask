library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity traitement_tb is
       
end;

architecture arch_traitement_tb of traitement_tb is

component traitement1 is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           D1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Q1 : out  STD_LOGIC_VECTOR (7 downto 0);
           enWrite : in  STD_LOGIC;
           enRead: out  STD_LOGIC
           );
end component;



  signal I1 : std_logic_vector (7 downto 0):= (others=>'0');
  signal CLK : std_logic;
  signal RESET : std_logic :='1';
  signal O1 : std_logic_vector (7 downto 0):= (others=>'0');
  signal DATA_AVAILABLE : std_logic:='0';
  signal OUTPUT_AVAILABLE : std_logic;
  signal FLAG : std_logic:='1';
  constant clock_period: time := 10 ns;
  
begin

traitement: traitement1 port map( CLK=>CLK, RESET=>RESET, D1=>I1,Q1=>O1,enWrite=>DATA_AVAILABLE,enRead=>OUTPUT_AVAILABLE);

  init_process: process
  begin 
  RESET<='1';
  FLAG <= '1';
  wait for 10*clock_period;  
  RESET<='0';
  wait for 10*clock_period;
  FLAG <= '0';
  wait;
  end process;
  
  
  clocking: process
  begin
        clk <= '0';
        wait for clock_period/2;
        clk<= '1';
        wait for clock_period/2;
  end process;
  
 p_read : process
  FILE vectors : text;
  variable Iline : line;
  variable I1_var :std_logic_vector (7 downto 0);
 
    begin
    
	DATA_AVAILABLE <= '0';
    file_open (vectors,"C:\Users\tm780870\Desktop\PROJET_TP\Lena128x128g_8bits.dat", read_mode);

    wait until (FLAG ='0');
      
    while not endfile(vectors) loop
      readline (vectors,Iline);
      read (Iline,I1_var);
                
      I1 <= I1_var;
	  DATA_AVAILABLE <= '1';
	  wait for 10 ns;
    end loop;
    DATA_AVAILABLE <= '0';
    wait for 10 ns;
    file_close (vectors);
    wait;
 end process;

p_write: process
  file results : text;
  variable OLine : line;
  variable O1_var :std_logic_vector (7 downto 0);
    
    begin
    file_open (results,"C:\Users\tm780870\Desktop\PROJET_TP\Lena128x128g_8bits_r.dat", write_mode);
    wait for 10 ns;
    wait until OUTPUT_AVAILABLE = '1';

    while (OUTPUT_AVAILABLE ='1' and DATA_AVAILABLE = '1') loop
      write (Oline, O1, right, 2);
      writeline (results, Oline);
      wait for 10 ns;
    end loop;
    file_close (results);
    wait;
 end process;
--Instancier composant filtre à place de la simple recopie entre I1 vers sortie O1 (top)
--O1 <= I1;
  
end arch_traitement_tb;

