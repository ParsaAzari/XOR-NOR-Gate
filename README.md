# XOR-NOR Gate in VHDL

## Description
The XOR-NOR Circuit is a digital logic circuit that implements both XOR and NOR operations. It takes two 1-bit inputs and produces one output for each operation. The XOR gate outputs true when exactly one of its inputs is true, while the NOR gate outputs true only when both inputs are false.

## Entity

Entity

The entity defines the inputs and outputs of the XOR-NOR circuit. It specifies the signal types and establishes the interface for the circuit.

```vhdl
-- Define the entity and specify input and output ports
entity XOR_NOR_Circuits is
    Port (
        -- Define the 1-bit input ports
        InPutNumberOne, InPutNumberTwo : in STD_LOGIC;
        -- Define the output ports
        XorOutPut, NorOutPut : out STD_LOGIC
    );
end entity XOR_NOR_Circuits;
```
## Architecture

Architecture

The architecture implements the functionality of the XOR-NOR circuit. It defines how the output signals are derived from the input signals using logical operations.

```vhdl
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
```
## File Structure
```
/XORNORGate
│
├── vhd
│   └── XORNORCircuit.vhd       # Main VHDL file containing the XOR-NOR Circuit code
├── XORNORCircuit.vhdpproj       # Project file for the VHDL compiler or IDE
├── vhd|_Is.toml                       # Configuration file
└── README.md      # Documentation for the XOR-NOR Circuit Gate
```
## Truth Table for XOR-NOR Circuit

| Input 1 | Input 2 | XorOutPut | NorOutPut |
|---------|---------|-----------|-----------|
|    0    |    0    |     0     |     1     |
|    0    |    1    |     1     |     0     |
|    1    |    0    |     1     |     0     |
|    1    |    1    |     0     |     0     |


## How to Compile and Simulate

To compile and simulate the VHDL code, you can use the **VHDPlus IDE**. Follow these steps to get started:

1. Install the VHDPlus IDE by following the instructions at the official documentation:  
   [VHDPlus IDE Installation Guide](https://vhdplus.com/docs/getstarted/#install-vhdplus-ide)
   
2. After installing the software, open the project file (`XORNORCircuit.vhdpproj`) in the VHDPlus IDE.

3. Compile the project by using the compile button or the appropriate option within the IDE.

4. You can also simulate the circuit within the VHDPlus environment to observe the outputs for various inputs.

## License

MIT License

Copyright (c) 2024

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
[MIT LINK](https://choosealicense.com/licenses/mit/)
