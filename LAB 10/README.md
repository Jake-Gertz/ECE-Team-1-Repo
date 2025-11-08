# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary Answers

In this lab we learned about the different types of flipflop circuits, their functions, and how to build them. We learned that the D flip flop can be a building block for the JK flip flop, which can then be used to create the T flip flop. Each one builds on the other, creating unique functionality while also reusing assets and preventing uncessary repetition in code.

### What is different between edge and level sensitive circuits?

An edge sensitive circuit will only capture input at the precise moment that the clock transitions from low to high or high to low, that being positive edge and negative edge circuits respectively. A level sensitive circuit will capture input during a particular state (low or high), and will continue to capture input until the state changes (from low to high or high to low).

### Why is it important to declare initial state?

An initial state gives the circuit something to base its tests and functions on. If the intial state is unknown or undefined, it could cause the program to start in an unsafe state and not perform the correct functions or not work as intended. It also makes the ciruict predictable, because when you give it an initial state, you know where it's going to start and how the circuit should perform when it starts from that state.

### What do edge sensitive circuits let us build?

Edge sensitive circuits are the foundation of flip flop circuits, which can then be used for things such as counters and registers. For example, you could use the flip flop design for a counter, because it triggers based on the clock's edges and can be used to count up or down values depending on the edge that is triggered and when.