# Digital-Numberlock-Using-Systemverilog
Digital Number Lock System (Using SystemVerilog)
This repository contains the implementation and verification of a Digital Number Lock System designed in SystemVerilog. The system uses a state machine to verify the entered code and unlocks when the correct 4-bit code is entered.

System Overview:
The lock system stores entered digits using a shift register mechanism, where the entered digits are shifted into a 4-bit state register on each clock cycle.
The unlock signal is triggered when the correct 4-bit sequence 1011 is entered, signaling that the lock has been unlocked.
Design Details:
Inputs:

clk: Clock signal.
reset: Resets the system to the initial state when high.
code: A 4-bit input representing the entered code.
Outputs:

unlock: A signal that goes high (1) when the correct code 1011 is entered.
State Machine: The system uses a simple finite state machine (FSM) with a 4-bit state register. The entered digits are shifted in as they arrive, and the system checks for the correct sequence to unlock.

Testbench Overview:
The SystemVerilog testbench is created to verify the functionality of the lock system. Key actions in the testbench include:

Clock Generation: The clock (clk) has a period of 10 time units.
Reset Application: The system is reset initially, and the reset signal is toggled to simulate system startup.
Unlock Code Entry: The correct unlock code 1011 is applied to the system.
Output Monitoring: The unlock signal is monitored and displayed using $display to ensure it goes high when the correct code is entered.
Project Highlights:
Design & Implementation: The project demonstrates the application of digital logic using SystemVerilog to create a simple yet secure lock system.
Verification: The testbench verifies that the system unlocks correctly when the right sequence is entered and ensures proper reset functionality.
This project showcases how digital design techniques can be used to create security systems, providing a practical example of finite state machines (FSMs) and hardware verification in SystemVerilog.
