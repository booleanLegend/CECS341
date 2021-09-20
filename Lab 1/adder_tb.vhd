


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_2bit_tb is
--  Port ( );
end adder_2bit_tb;

architecture Behavioral of adder_2bit_tb is
signal A, B : std_logic_vector(1 downto 0);
signal sum : std_logic_vector(2 downto 0);



component adder_2bit_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    B : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component adder_2bit_wrapper;
begin
design_1_i:  adder_2bit_wrapper
     port map (
      A => A,
      B => B,
      sum => sum
    );
A <= "11";
B <= "11";
end Behavioral;
