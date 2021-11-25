-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity top_tb is
end;

architecture bench of top_tb is

  component top
      Port ( CLK : in STD_LOGIC;
             RESET : in STD_LOGIC;
             D1 : in  STD_LOGIC_VECTOR (7 downto 0);
             Q1 : out  STD_LOGIC_VECTOR (7 downto 0);
             enWrite : in  STD_LOGIC;
             enRead: out  STD_LOGIC
             );
  end component;

  signal CLK: STD_LOGIC;
  signal RESET: STD_LOGIC;
  signal D1: STD_LOGIC_VECTOR (7 downto 0);
  signal Q1: STD_LOGIC_VECTOR (7 downto 0);
  signal enWrite: STD_LOGIC;
  signal enRead: STD_LOGIC ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: top port map ( CLK     => CLK,
                      RESET   => RESET,
                      D1      => D1,
                      Q1      => Q1,
                      enWrite => enWrite,
                      enRead  => enRead );

  stimulus: process
  begin
-- Put initialisation code here
enWrite<='0';
D1<="00000000";
wait for 10*clock_period;
D1<="11111111";
wait for 20*clock_period;

D1<="00000000";
enWrite<='1';

wait for clock_period;
D1<="00000001";
enWrite<='1';
wait for clock_period;
D1<="00000010";
wait for clock_period;
D1<="00000011";
wait for clock_period;
D1<="00000100";
wait for clock_period;
D1<="00000101";
wait for clock_period;
D1<="00000110";
wait for clock_period;
D1<="00000111";
wait for clock_period;
D1<="00001000";
wait for clock_period;
D1<="00001001";
wait for 20*clock_period;


    -- Put test bench stimulus code here
wait for 10*clock_period; 
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;