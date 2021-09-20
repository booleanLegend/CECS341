library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control is
    Port ( reset: in std_logic;
		opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           RegWrite : out  STD_LOGIC
			  );
end Control;

architecture Behavioral of Control is
signal Rwrite,MRead,MWrite:std_logic;

begin
with opcode select
RWrite<= '1' when "000000",
				'1' when "100011", --lw
				'1' when "001000",--addi
				'1' when "001100",--andi
			'1' when "001101",--ori
			'1' when "000011", --jal
				'0' when others;
RegWrite <= Rwrite and not(reset);
				
			

end Behavioral;