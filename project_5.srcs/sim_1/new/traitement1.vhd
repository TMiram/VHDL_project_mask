----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2021 15:55:52
-- Design Name: 
-- Module Name: traitement1 - traitement1_arch
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

entity traitement1 is
    Port ( 
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    D1 : in  STD_LOGIC_VECTOR (7 downto 0);
    Q1 : out  STD_LOGIC_VECTOR (7 downto 0);
    enWrite : in  STD_LOGIC;
    enRead: out  STD_LOGIC
    );
end traitement1;

architecture traitement1_arch of traitement1 is
component top is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           D1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Q1 : out  STD_LOGIC_VECTOR (7 downto 0);
           PX1: out  STD_LOGIC_VECTOR (7 downto 0);
           PX2: out  STD_LOGIC_VECTOR (7 downto 0);
           PX3: out  STD_LOGIC_VECTOR (7 downto 0);
           PX4: out  STD_LOGIC_VECTOR (7 downto 0);
           PX5: out  STD_LOGIC_VECTOR (7 downto 0);
           PX6: out  STD_LOGIC_VECTOR (7 downto 0);
           PX7: out  STD_LOGIC_VECTOR (7 downto 0);
           PX8: out  STD_LOGIC_VECTOR (7 downto 0);
           PX9: out  STD_LOGIC_VECTOR (7 downto 0);
           enWrite : in  STD_LOGIC;
           enRead: out  STD_LOGIC
           );
end component;

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

signal input_write: std_logic;
signal output_bin:STD_LOGIC_VECTOR (7 downto 0);
signal input_component:STD_LOGIC_VECTOR (7 downto 0);
--
signal input_enWrite: STD_LOGIC;
signal input_D1:STD_LOGIC_VECTOR (7 downto 0);
signal input_signal: STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
signal output_Mread: STD_LOGIC;

--PIXELS
signal p1: std_logic_vector (7 downto 0):= (others=>'0');
signal p2: std_logic_vector (7 downto 0):= (others=>'0');
signal p3: std_logic_vector (7 downto 0):= (others=>'0');
signal p4: std_logic_vector (7 downto 0):= (others=>'0');
signal p5: std_logic_vector (7 downto 0):= (others=>'0');
signal p6: std_logic_vector (7 downto 0):= (others=>'0');
signal p7: std_logic_vector (7 downto 0):= (others=>'0');
signal p8: std_logic_vector (7 downto 0):= (others=>'0');
signal p9: std_logic_vector (7 downto 0):= (others=>'0');
--END PIXELS
signal output_signal:std_logic_vector (7 downto 0):= (others=>'0');
signal output_read: STD_LOGIC;


begin

top1: top port map( 
           CLK=>CLK,
           RESET=>RESET,
           D1=>D1,
           Q1=>output_bin,
           PX1=>p1,
           PX2=>p2,
           PX3=>p3,
           PX4=>p4,
           PX5=>p5,
           PX6=>p6,
           PX7=>p7,
           PX8=>p8,
           PX9=>p9,
           enWrite=>input_write,
           enRead=>output_Mread
           );
           
mask: Mask1 port map (
           CLK=>CLK,
           RESET=>RESET,
           OUTPUT_PX=>output_signal,
           PX1=>p1,
           PX2=>p2,
           PX3=>p3,
           PX4=>p4,
           PX5=>p5,
           PX6=>p6,
           PX7=>p7,
           PX8=>p8,
           PX9=>p9,
           enWrite=>output_Mread,
           enRead=>output_read);


process(CLK)
begin
    if rising_edge(CLK)
    then
    input_D1<=D1;
    Q1<=output_signal;
    input_write<=enWrite;
    enRead<=output_read;
    end if;

end process;
end traitement1_arch;
