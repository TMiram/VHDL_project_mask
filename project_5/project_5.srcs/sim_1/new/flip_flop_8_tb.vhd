-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity flip_flop8_tb is
end;

architecture bench of flip_flop8_tb is

  component flip_flop8
  generic (bus_width: integer:= 9);
      Port ( D : in STD_LOGIC_VECTOR (bus_width-1 downto 0);
             CLK : in STD_LOGIC;
             RESET : in STD_LOGIC;
             Q : out STD_LOGIC_VECTOR (bus_width-1 downto 0));
  end component;

  signal D: STD_LOGIC_VECTOR (8 downto 0);
  signal CLK: STD_LOGIC;
  signal RESET: STD_LOGIC;
  signal Q: STD_LOGIC_VECTOR (8 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: flip_flop8 generic map ( bus_width =>9  )
                     port map ( D         => D,
                                CLK       => CLK,
                                RESET     => RESET,
                                Q         => Q );

  stimulus: process
  begin
D<="000000000";
RESET<='0';  
    -- Put initialisation code here
wait for 10*clock_period;
D<="111000000";
wait for clock_period;    
D<="111000000";
wait for clock_period; 
D<="100000001";
wait for clock_period; 
D<="100000001";
wait for clock_period; 
D<="100000000";
wait for clock_period;
D<="100000000";
wait for clock_period;      
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