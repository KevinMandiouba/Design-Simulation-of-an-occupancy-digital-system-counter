library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity project_tb is
end project_tb;

architecture behavior of project_tb is

    component project
    port(
        x:      in std_logic;
        y:      in std_logic;
        z:      out std_logic;
        reset:  in std_logic;
        clk:    in std_logic;
	current_occupancy : out std_logic_vector(5 downto 0)
    );
    end component;

    signal x : std_logic := '0';
    signal y : std_logic := '0';
    signal z : std_logic;
    signal reset : std_logic := '1';
    signal clk : std_logic := '0';
    signal current_occupancy : std_logic_vector(5 downto 0);
    signal max_occupancy : std_logic_vector(5 downto 0) := "111111";

begin

    uut: project port map (
        x => x,
        y => y,
        z => z,
        reset => reset,
        clk => clk,
	current_occupancy => current_occupancy
    );

    p0: process
    begin
	
        reset <= '1';
	clk <= '0';
        x <= '0';
        y <= '0';
        wait for 10 ns;
        
        reset <= '0';
        wait for 10 ns;
        
        -- Check decrementor by decrementing three times (current_occupancy should remain 0)
        for i in 1 to 3 loop
            clk <= '1';
            x <= '0';
            y <= '1';
            wait for 10 ns;
            
            clk <= '0';
            x <= '0';
            y <= '0';
            wait for 10 ns;
        end loop;
        
        -- Check incrementor by incrementing 65 times (current_occupancy should go from 0 to 63 and not exceed 63)
        for i in 1 to 65 loop
            clk <= '1';
            x <= '1';
            y <= '0';
            wait for 10 ns;
            
            clk <= '0';
            x <= '0';
            y <= '0';
            wait for 10 ns;
        end loop;
        
        -- Decrementing to 62 then incrementing to 63 five times
        for i in 1 to 5 loop
            clk <= '1';
            x <= '0';
            y <= '1';
            wait for 10 ns;
            
            clk <= '0';
            x <= '0';
            y <= '0';
            wait for 10 ns;
            
            clk <= '1';
            x <= '1';
            y <= '0';
            wait for 10 ns;
            
            clk <= '0';
            x <= '0';
            y <= '0';
            wait for 10 ns;
        end loop;
        
        -- Decrement back to 0 (current_occupancy should decrement from 63 to 0)
        for i in 1 to 63 loop
            clk <= '1';
            x <= '0';
            y <= '1';
            wait for 10 ns;
            
            clk <= '0';
            x <= '0';
            y <= '0';
            wait for 10 ns;
        end loop;
        
        -- Increment by 10 then reset
        for i in 1 to 10 loop
            clk <= '1';
            x <= '1';
            y <= '0';
            wait for 10 ns;
            
            clk <= '0';
            x <= '0';
            y <= '0';
            wait for 10 ns;
        end loop;
        
        reset <= '1';
        wait for 10 ns;

        wait;
    end process;

end architecture;

