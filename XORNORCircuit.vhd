-- Import standard libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Define the entity and specify input and output ports
entity XOR_NOR_Circuits is
    Port (
        -- Define the 1-bit input ports
        InPutNumberOne, InPutNumberTwo : in STD_LOGIC;
        -- Define the output ports
        XorOutPut, NorOutPut : out STD_LOGIC
    );
end entity XOR_NOR_Circuits;

-- Define the architecture and implement the circuit's functionality
architecture Functional of XOR_NOR_Circuits is
begin
    -- Implementing XOR logic: output is 1 when one input is 1 and the other is 0
    -- Output is 0 when both inputs are the same (both 0 or both 1)
    XorOutPut <= InPutNumberOne xor InPutNumberTwo;

    -- Implementing NOR logic: output is 1 when both inputs are 0
    -- Output is 0 when at least one input is 1
    NorOutPut <= not (InPutNumberOne or InPutNumberTwo);
end Functional; -- End of architecture