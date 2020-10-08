LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY fulladder IS
PORT(a, b, cin:IN std_logic;
sum, cout:OUT std_logic);
END fulladder;
ARCHITECTURE fulladder_BH OF fulladder IS
SIGNAL x:std_logic_vector(2 downto 0);
BEGIN
x<= a & b & cin;
PROCESS(x)
BEGIN
IF(x="001"OR x="010" OR x="100" OR x="111") THEN
 sum<='1';ELSE sum<='0';END IF;
IF(x="011"OR x="101" OR x="110" OR x="111") THEN
 cout<='1';ELSE cout<='0';END IF;
END PROCESS;
END fulladder_BH;

--Test Bench
ENTITY Testbench_full_adder IS
END Testbench_full_adder;

ARCHITECTURE behavior OF Testbench_full_adder IS 
 -- Component Declaration for the Unit Under Test (UUT)
 COMPONENT full_adder
 PORT(
 A : IN bit;
 B : IN bit;
 Cin : IN bit;
 S : OUT bit;
 Cout : OUT bit
 );
 END COMPONENT;
 --Inputs
 signal A : bit := '0';
 signal B : bit := '0';
 signal Cin : bit := '0';
 --Outputs
 signal S : bit;
 signal Cout : bit;
BEGIN
-- Instantiate the Unit Under Test (UUT)
 uut: full_adder PORT MAP (
 A => A,
 B => B,
 Cin => Cin,
 S => S,
 Cout => Cout
 );
 -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns; 
 -- insert stimulus here
 A <= '1';
 B <= '0';
 Cin <= '0';
 wait for 10 ns;
 A <= '0';
 B <= '1';
 Cin <= '0';
 wait for 10 ns;
 A <= '1';
 B <= '1';
 Cin <= '0';
 wait for 10 ns;
 A <= '0';
 B <= '0';
 Cin <= '1';
 wait for 10 ns;
 A <= '1';
 B <= '0';
 Cin <= '1';
 wait;
wait for 10 ns;
 A <= '1';
 B <= '0';
 Cin <= '1';
 wait for 10 ns;
 A <= '0';
 B <= '1';
 Cin <= '1';
 wait for 10 ns;
 A <= '1';
 B <= '1';
 Cin <= '1';
 wait for 10 ns;
 end process;
END;
