library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
  port (
    clk : in std_logic;
    led : out std_logic_vector(7 downto 0)
  );
end counter;

architecture arch of counter is
  signal n : natural range 0 to 255;
begin
  counter : process(clk)
  begin
    if rising_edge(clk) then
      n <= n + 1;
      led <= std_logic_vector(to_unsigned(n, led'length));
    end if;
  end process;
end arch;
