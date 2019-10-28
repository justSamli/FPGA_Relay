----------------------------------------------------------------------------------
-- Company: 		ESIGELEC	
-- Engineer: 		Samira ALI, David HERNANDEZ
-- 
-- Create Date:    14:25:15 05/28/2019 
-- Design Name: 
-- Module Name:    fpga_start_stop_relay - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fpga_start_stop_relay is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           ena : in  STD_LOGIC;
           pulse_in : in  STD_LOGIC;
           start_stop : out  STD_LOGIC);
end fpga_start_stop_relay;

architecture Behavioral of fpga_start_stop_relay is
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT start_stop_relay
	
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           ena : in  STD_LOGIC := '1';
           pulse_in : in  STD_LOGIC;
           start_stop : out  STD_LOGIC);
    END COMPONENT;
  
begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut: start_stop_relay PORT MAP (
          rst => rst,
          clk => clk,
          ena => ena,
          pulse_in => pulse_in,
          start_stop => start_stop
        );
end Behavioral;
