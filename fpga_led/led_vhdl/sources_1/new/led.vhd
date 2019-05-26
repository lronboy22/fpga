----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2019/05/22 22:07:40
-- Design Name: 
-- Module Name: led - Behavioral
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led is
  Port ( 
   led0 : out std_logic;
   clk : in std_logic
  );
end led;

architecture Behavioral of led is
signal led : std_logic;
signal cnt : integer range 0 to 25000000 :=0; 
begin
led0<=led;
process(clk)
--variable cnt : integer:=0;
begin
if rising_edge(clk) then
    if (cnt >= 25000000) then
        led <= not led;
        cnt<=0;
    else
        led<=led;
        cnt <= cnt+1;
    end if;
end if;
end process;
end Behavioral;
