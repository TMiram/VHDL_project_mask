----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 15:36:13
-- Design Name: 
-- Module Name: MAIN - Behavioral
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

entity MAIN is
    Port( clk_m: in STD_LOGIC;
          reset_m: in STD_LOGIC;
          in_px: in STD_LOGIC_VECTOR (7 downto 0)
    );
end MAIN;

architecture Behavioral of MAIN is

component fifo_generator_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    prog_full_thresh : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_full : OUT STD_LOGIC;
    wr_rst_busy : OUT STD_LOGIC;
    rd_rst_busy : OUT STD_LOGIC
  );
END component;

component flip_flop8 generic (bus_width: integer:= 8);
    Port ( d_f: in STD_LOGIC_VECTOR (bus_width-1 downto 0);
           clk_f : in STD_LOGIC;
           reset_f : in STD_LOGIC;
           Q_f : out STD_LOGIC_VECTOR (bus_width-1 downto 0));
end component;

signal RESET_s : STD_LOGIC;
signal prog_full_thresh_signal : STD_LOGIC_VECTOR(9 downto 0) :=("0001111011"); --124 = 128-4
signal prog_full_signal : STD_LOGIC := '0' ; --vaut 1 si buffer rempli

signal full_signal : STD_LOGIC := '0' ; 
signal almost_full_signal : STD_LOGIC := '0' ; 
signal empty_signal : STD_LOGIC := '0' ; 
signal data_count_signal : STD_LOGIC_VECTOR(9 DOWNTO 0):= (others=>'0');
signal wr_rst_busy_signal : STD_LOGIC := '0' ; 
signal rd_rst_busy_signal : STD_LOGIC := '0' ; 

signal out_fifo1: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal out_fifo2: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');


signal temp0: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal temp1: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal temp2: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');

signal temp3: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal temp4: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal temp5: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');

signal temp6: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal temp7: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal temp8: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');

signal temp: STD_LOGIC_VECTOR (77 downto 0) := (others=>'0'); -- 7*(9+2) 2 car effets de bord sur fenêtre glissante


begin
    Loop_label : for i in 0 to 1 generate
        flip : fifo_generator_0 port map (
           clk=>clk_m,
           rst=> reset_m,
           din=>temp6,
           wr_en=> '1',
           rd_en=> prog_full_signal,
           prog_full_thresh=>prog_full_thresh_signal,
           dout=>out_fifo1,                             --soit instancier avec index soit instancier sans le for et de manière manuelle
           full=>full_signal,
           almost_full=>almost_full_signal,
           empty=>empty_signal ,
           data_count=>data_count_signal,
           prog_full=>prog_full_signal,
           wr_rst_busy=>wr_rst_busy_signal,
           rd_rst_busy=>rd_rst_busy_signal
           );

    Loop_label : for i in 0 to 8 generate
        flip : flip_flop8 generic map (Bus_width => 8) port map (
           d_f => temp(7*(i+2) downto 7*(i+1)),
           clk_f =>clk_m,
           Q_f =>temp(7*(i+1) downto 7*i),
           reset_f =>reset_m); 
end Behavioral;
