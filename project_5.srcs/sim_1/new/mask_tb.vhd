----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2021 10:25:10
-- Design Name: 
-- Module Name: mask_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity mask_tb is
end mask_tb;


architecture Behavioral of mask_tb is


component Mask1 is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           OUTPUT_PX : out  STD_LOGIC_VECTOR (7 downto 0);
           PX1: in  STD_LOGIC_VECTOR (7 downto 0);
           PX2: in  STD_LOGIC_VECTOR (7 downto 0);
           PX3: in  STD_LOGIC_VECTOR (7 downto 0);
           PX4: in  STD_LOGIC_VECTOR (7 downto 0);
           PX5: in  STD_LOGIC_VECTOR (7 downto 0);
           PX6: in  STD_LOGIC_VECTOR (7 downto 0);
           PX7: in  STD_LOGIC_VECTOR (7 downto 0);
           PX8: in  STD_LOGIC_VECTOR (7 downto 0);
           PX9: in  STD_LOGIC_VECTOR (7 downto 0);
           enWrite : in  STD_LOGIC;
           enRead: out  STD_LOGIC
           );
end component;

signal clk : std_logic;
signal RESET : std_logic;
constant clock_period: time := 10 ns;

signal p1: std_logic_vector (7 downto 0):= (others=>'0');
signal p2: std_logic_vector (7 downto 0):= (others=>'0');
signal p3: std_logic_vector (7 downto 0):= (others=>'0');
signal p4: std_logic_vector (7 downto 0):= (others=>'0');
signal p5: std_logic_vector (7 downto 0):= (others=>'0');
signal p6: std_logic_vector (7 downto 0):= (others=>'0');
signal p7: std_logic_vector (7 downto 0):= (others=>'0');
signal p8: std_logic_vector (7 downto 0):= (others=>'0');
signal p9: std_logic_vector (7 downto 0):= (others=>'0');

signal outputpx: std_logic_vector (7 downto 0):= (others=>'0');
signal enR: std_logic:='1';
signal enW: std_logic:='1';


begin

mask:Mask1 port map(CLK=>clk, 
           RESET=>RESET,
           OUTPUT_PX=>outputpx, 
           PX1=>p1,
           PX2=>p2,
           PX3=>p3,
           PX4=>p4,
           PX5=>p5,
           PX6=>p6,
           PX7=>p7,
           PX8=>p8,
           PX9=>p9,
           enWrite=>enW,
           enRead=>enR);


  clocking: process
  begin
        clk <= '0';
        wait for clock_period/2;
        clk<= '1';
        wait for clock_period/2;
  end process;

process
begin
p1<="00000000";
p2<="00000000";
p3<="00000000";

p4<="00000000";
p5<="00000000";
p6<="00000000";

p7<="11111111";
p8<="11111111";
p9<="11111111";
wait for 10*clock_period;
p1<="11111111";
p2<="11111111";
p3<="11111111";

p4<="00000000";
p5<="00000000";
p6<="00000000";

p7<="11111111";
p8<="11111111";
p9<="11111111";
wait;
end process;
    
end Behavioral;
