# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the role of the Top Level file.
The Top Level file acts like the "main function" in software. It does not contain logic by itself, but instead instantiates and connects lower-level modules (in this case, circuit_a and circuit_b). The top file defines the I/O ports that connect to physical FPGA pins, wires the outputs of one module into the inputs of another, and ensures that switches (sw) and LEDs (led) are mapped correctly.
 In short:
It organizes all modules into one complete design.


It defines how modules interact.


It provides a single entry point for synthesis and pin-mapping.


### 2 - Explain the function of the Constraints file.
The constraints file (.xdc) tells Vivado how to connect the logical signals in Verilog to the physical FPGA pins on the Basys3 board. For example, it maps sw[0] in the code to FPGA pin V17. Without constraints, Vivado would synthesize the design but wouldn’t know which hardware pins to use.
Key functions of the .xdc file:
Pin mapping: Associates Verilog signals (like sw[0], led[1]) with the Basys3’s physical switches and LEDs.


Electrical standards: Declares logic voltage levels (e.g., LVCMOS33 for 3.3V).


Board-specific wiring: Ensures your design matches the hardware schematic.


This file is essential for testing on real FPGA hardware.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
Yes, the selections were intentional and correct:
Circuit A was implemented using Maxterms (canonical POS form) because its truth table specified output 0 conditions clearly. Maxterm form makes it straightforward to express outputs that are 0.


Circuit B was implemented using Minterms (canonical SOP form) because its truth table specified output 1 conditions more clearly. Minterm form is natural when the function is defined by the inputs that make the output 1.


If I had a choice, I would:
Still use Minterms for functions where the 1 outputs are fewer/easier to enumerate.


Still use Maxterms for functions where the 0 outputs are fewer/easier to enumerate.


This minimizes complexity, reduces the number of terms, and makes debugging simpler.


