# Number Theory: Addition


In this lab, you’ve learned about One Hot and Binary state machines and how to build them.


## Rubric


| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |


## Lab Questions


### Summary Answers
In this lab we learned all about state machines! We learned how to create a state machine, how to look at a K-map of states, how to turn the states k-maps into actual logical expressions, and how to code several states, each being represented by a binary number, into our circuits!


### Compare and contrast One Hot and Binary encodings
For One Hot encoding we had to have the same number of bits as states we had, this could become a drawback as we get larger circuits. The simplicity of only having to check one condition to see what state we were in and what state we should then go into was easy to understand as a human but again the drawback there is that the computer has to dedicate more memory and larger circuits to One Hot encodings compared to Binary encoding. The main benefit of binary encoding is that each binary number can be its own state, this simplifies how many variables we have to keep track of, and it requires less bits for the same number of states compared to a One Hot system! The drawback is that it is more complicated to implement than a One Hot system and is quite easy to make mistakes while trying to code the state machine!


### Which method did your team find easier, and why?
For us the One Hot method was far easier for Jonathan and I. I believe it was easier since for some reason both our brains were able to connect the dot that only one bit will be a 1 ever in our system and that you only had to check to see what bit was 1 in order to figure out which state the machine was in and what state it should be going to next. This made it quite easy to implement! Also for the Binary system we had a large problem with both setting up and solving our K-maps and that confusion contributes to our liking of the One Hot over method over the Binary method as well!


### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
I think the best use case for the One Hot system is when you have a limited number of states, if your FPGA only has 16 switches (inputs) you could only represent 16 states with the One Hot system. If you have a small number of inputs the simplicity of the One Hot system makes it the better choice to implement but if you need to represent a large number of states that is when the Binary System would be better. For the same FPGA if you had 16 switches (inputs) you  could represent 2^16 states instead of just 16. This system is more complicated to implement but it is the better choice if you have a limited number of inputs!





