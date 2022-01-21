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
signal coeff1 :signed(8 downto 0) := ("111111111");
signal coeff2 :signed (8 downto 0) := ("111111110");
signal coeff3 :signed (8 downto 0) := ("111111111");

signal coeff4 :signed (8 downto 0) := ("000000000");
signal coeff5 :signed (8 downto 0) := ("000000000");
signal coeff6 :signed (8 downto 0) := ("000000000");

signal coeff7 :signed (8 downto 0) := ("000000001");
signal coeff8 :signed (8 downto 0) := ("000000010");
signal coeff9 :signed (8 downto 0) := ("000000001");

--coeff*pixel de taille +1 (on met un 0 à gauhe =>poids fort)
signal pounded_px1:  signed (17 downto 0);
signal pounded_px2:  signed (17 downto 0);
signal pounded_px3:  signed (17 downto 0);
signal pounded_px4:  signed (17 downto 0);
signal pounded_px5:  signed (17 downto 0);
signal pounded_px6:  signed (17 downto 0);
signal pounded_px7:  signed (17 downto 0);
signal pounded_px8:  signed (17 downto 0);
signal pounded_px9:  signed (17 downto 0);

--sommes:
--MODIFIER LES TAILLES ET AJOUTER DES BITS DE POIDS FORT
signal signedNewPx3: signed(18 downto 0);
signal tempSum1: signed(18 downto 0);

signal signedNewPx6: signed(18 downto 0);
signal tempSum2: signed(18 downto 0);

signal signedNewPx9: signed(18 downto 0);
signal tempSum3: signed(18 downto 0);

signal sumLine1: signed(19 downto 0);
signal sumLine2: signed(19 downto 0);
signal sumLine3: signed(19 downto 0);
signal sumLine12: signed(20 downto 0);

signal SumL1L2: signed(20 downto 0);
signal NewsumLine3: signed(20 downto 0);
signal totalSum: signed(21 downto 0);
signal tempOUT: signed(21 downto 0);

--COMPTEUR
signal temp1: std_logic;
signal temp2: std_logic;
signal temp3: std_logic;
signal temp4: std_logic;
signal temp5: std_logic;
signal temp6: std_logic;
signal temp7: std_logic;
signal temp8: std_logic;
signal temp9: std_logic;
signal temp10: std_logic;

--bascules
signal bascPX3: signed(18 downto 0);
signal bascPX6: signed(18 downto 0);
signal bascPX9: signed(18 downto 0);

signal bascLine3: signed(20 downto 0);

begin



process(CLK,RESET)
begin
    if (RESET='1')
    then
    OUTPUT_PX<="00000000";

    elsif (rising_edge(CLK))
    then
    temp1<=enWrite;
--ajustement du poids ET de la taille des pixels
                --Ligne1
    pounded_px1<=coeff1*signed('0'&PX1);
    pounded_px2<=coeff2*signed('0'&PX2);
    pounded_px3<=coeff3*signed('0'&PX3);
                --Ligne2
    pounded_px4<=coeff4*signed('0'&PX4);
    pounded_px5<=coeff5*signed('0'&PX5);
    pounded_px6<=coeff6*signed('0'&PX6);
                --Ligne3
    pounded_px7<=coeff7*signed('0'&PX7);
    pounded_px8<=coeff8*signed('0'&PX8);
    pounded_px9<=coeff9*signed('0'&PX9);
    
    
--SOMMES
                        --Ligne1
    --on concatène le pixel 3 avec son bit de poids fort pour augmenter sa taille sans modifier sa valeur
    temp1<=enWrite;
    temp2<=temp1;
    temp3<=temp2;
    temp4<=temp3;
    temp5<=temp4;
    temp6<=temp5;
    temp7<=temp6;
    temp8<=temp7;
    temp9<=temp8;
    temp10<=temp9;
    
    enRead<=temp5;
    
    bascPx3<=pounded_px3(17)&pounded_px3;
    signedNewPx3<=bascPx3;
    --on fait la somme des trois pixels
    tempSum1<=(pounded_px1(17)&pounded_px1)+(pounded_px2(17)&pounded_px2);
    
    sumLine1<=(tempSum1(17)&tempSum1)+(signedNewPx3(17)&signedNewPx3);
    
                        --Ligne2
    bascPx6<=pounded_px6(17)&pounded_px6;
    signedNewPx6<=bascPx6;
    tempSum2<=(pounded_px4(17)&pounded_px4)+(pounded_px5(17)&pounded_px5);
    sumLine2<=(tempSum2(18)&tempSum2)+(signedNewPx6(18)&signedNewPx6);
        
                        --Ligne3    
    bascPx9<=pounded_px9(17)&pounded_px9;
    signedNewPx9<=bascPx9;
    tempSum3<=(pounded_px6(17)&pounded_px6)+(pounded_px7(17)&pounded_px7);
    sumLine3<=(tempSum3(18)&tempSum3)+(signedNewPx9(18)&signedNewPx9);
        
                        --SOMME DES LIGNES
    --enRead
    bascLine3<=sumLine3(19)&sumLine3;
    NewsumLine3<=bascLine3;
    SumL1L2<=(sumLine1(19)&sumLine1)+(sumLine2(19)&sumLine2);
    --temp5<=temp4;
    totalSum<=(SumL1L2(20)&SumL1L2)+(NewsumLine3(20)&NewsumLine3);
    --temp6<=temp5;
    tempOut<=-totalSum;
    if (tempOut>"000000000000000000000")
    then
    OUTPUT_PX<=STD_Logic_Vector(tempOut(16 downto 9));
    elsif (totalSum>"000000000000000000000")
    then
    OUTPUT_PX<=STD_Logic_Vector(totalSum(16 downto 9));
    end if;
    --enRead<=temp6;
    
    
    --enRead<=enWrite;
    
    end if;
    
    
end process;
end Mask1_arch;
