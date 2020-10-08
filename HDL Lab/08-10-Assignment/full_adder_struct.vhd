LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY fulladder IS
PORT(a, b, cin:IN std_logic;
sum, cout:OUT std_logic);
END fulladder;
ARCHITECTURE fulladder_ST OF fulladder IS
COMPONENT ha is
Port(x,y:in std_logic;
S,c: out std_logic);
End component;
COMPONENT or2 is
Port(x,y:in std_logic;
z: out std_logic);
End component;
Signal s1,s2,s3: std_logic;
BEGIN
U1: ha port map(a,b,s1,s2);
U2: ha port map(s1,cin,sum,s3);
U3: or2 port map(s2,s3,cout);
End fulladder_ST;

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
