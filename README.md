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

## Name
Steven Greene
Diego Vargas
## Lab Summary
This lab we combined two circuits together by creating two modules and adding them to the top file. In each module/circuit, we input the maxterms for circuit A and minterms for circuit B, and then combined them in the Top.V file. When we ran the bitstream and plugged in the Basys board, we were able to verify that our truth tables were accurate by the corresponding switches and two LED's based on how Circuit A's output fed into circuit B. 
## Lab Questions

### 1 - Explain the role of the Top Level file.
The Top Level file is the file that connects all the circuits together, assigning the switches and assigning the LEDs. We reference the module's from the individual circuit files in the TOP file and wire them in the top file. 



### 2 - Explain the function of the Constraints file.

The Constraints file serves as the essential bridge between the abstract Verilog code and the physical hardware of the Basys3 board. It translates logical signal names used in the code into specific physical package pins determined by the board's electrical layout. Without this file, the Vivado compiler would have no way of knowing which physical components on the board should respond to the programmed logic.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

Yes, the selection of Minterm and Maxterm were accurate. I would have chosen the maxterm because the maxterm for circuit A was the least expensive to implement having only f(M) = (~AD) (whether we chose minterms or maxterms resulted in the same circuit for circuit A). The Minterm for circuit B was also the least expensive to implement as we were able to only OR 3 terms together. 

