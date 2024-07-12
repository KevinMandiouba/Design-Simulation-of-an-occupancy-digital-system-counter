library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all;

-- Entity
entity project is 
port(
    x:                  in std_logic;
    y:                  in std_logic;
    z:                  out std_logic;
    reset:              in std_logic;
    clk:                in std_logic;
    current_occupancy: 	out std_logic_vector(5 downto 0)
);
end entity;

-- Architecture
architecture behavior of project is

signal red_light: std_logic;
signal max_occupancy: std_logic_vector(5 downto 0) := "111111";
signal current: std_logic_vector(5 downto 0);

begin

	p0: process(clk, reset)
	begin

		if (reset = '1') then
		    current <= (others => '0');

		elsif (clk' event and clk = '1') then

		    if (x = '1' and current < max_occupancy) then
			current <= current + 1;
		    end if;
		    
		    if (y = '1' and current > "000000") then
			current <= current - 1;
		    end if;

		end if;

	end process;

	p1: process(current, max_occupancy)
	begin

		if (current = max_occupancy) then
		    red_light <= '1';

		else
		    red_light <= '0';

		end if;

	end process;
	
	z <= red_light;
	current_occupancy <= current;

end;

