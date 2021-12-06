----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2021 13:39:56
-- Design Name: 
-- Module Name: Mask - Mask_arch
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mask1 is
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
           
end Mask1;


architecture Mask1_arch of Mask1 is
--COEFFS           
signal coeff1 : signed(8 downto 0) := ("100000001");
signal coeff2 :signed (8 downto 0) := ("100000001");
signal coeff3 :signed (8 downto 0) := ("100000001");

signal coeff4 :signed (8 downto 0) := ("000000000");
signal coeff5 :signed (8 downto 0) := ("000000000");
signal coeff6 :signed (8 downto 0) := ("000000000");

signal coeff7 :signed (8 downto 0) := ("000000001");
signal coeff8 :signed (8 downto 0) := ("000000001");
signal coeff9 :signed (8 downto 0) := ("000000001");

signal resized_px1 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX1);
signal signed_px1 : signed (8 downto 0) := signed(resized_px1);
signal pounded_px1:  signed (17 downto 0);

signal resized_px2 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX2);
signal signed_px2 : signed (8 downto 0) := signed(resized_px2);
signal pounded_px2:  signed (17 downto 0);


signal resized_px3 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX3);
signal signed_px3 : signed (8 downto 0) := signed(resized_px3);
signal pounded_px3:  signed (17 downto 0);


signal resized_px4 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX4);
signal signed_px4 : signed (8 downto 0) := signed(resized_px4);
signal pounded_px4:  signed (17 downto 0);


signal resized_px5 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX5);
signal signed_px5 : signed (8 downto 0) := signed(resized_px5);
signal pounded_px5:  signed (17 downto 0);


signal resized_px6 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX6);
signal signed_px6 : signed (8 downto 0) := signed(resized_px6);
signal pounded_px6:  signed (17 downto 0);


signal resized_px7 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX7);
signal signed_px7 : signed (8 downto 0) := signed(resized_px7);
signal pounded_px7:  signed (17 downto 0);


signal resized_px8 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX8);
signal signed_px8 : signed (8 downto 0) := signed(resized_px8);
signal pounded_px8:  signed (17 downto 0);


signal resized_px9 : STD_LOGIC_VECTOR (8 downto 0) := ('0'&PX9);
signal signed_px9 : signed (8 downto 0) := signed(resized_px9);
signal pounded_p9:  signed (17 downto 0);


signal sumLine1: signed(17 downto 0) --pas le bon format!!!!
signal temp_out: unsigned(7 downto 0);

begin
process(CLK,RESET)
begin
    if (RESET='1')
    then
    OUTPUT_PX<=(others=>'0');
    end if;
    
    if (rising_edge(CLK))
    then
    --temp vaut la somme du pixel multiplié par lo coeff
    --temp<= coeff1*signed_px1 + coeff2*signed_px2 + coeff3*signed_px3 + coeff4*signed_px4 + coeff5*signed_px5 + coeff6*signed_px6 + coeff7*signed_px7 + coeff8*signed_px8 + coeff9*signed_px9;
    temp_out<= unsigned(temp(7 downto 0));
    OUTPUT_PX<=Std_logic_vector(temp_out);
    end if;
    
end process;

end Mask1_arch;
