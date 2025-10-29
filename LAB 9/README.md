# Sequential Circuits: Latches
In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric
| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary Answers:
In this lab we learned about how to create storage using digital logic. We implemented a latch that was level sensitive and stored values that we passed into it! We also learned a lot about behavioral verilog including how to use arrays, case statements, an easy way to make both multiplexors and demultiplexors, plus we also learned about how to tell verilog that a variable is going to be used in a always block.

###  Why can we not just use structural Verilog to implement latches?
Within structural verilog when you change an input the output is instantly changed. If this were to happen to a circuit that you wish was a latch you would no longer have a latch or any way to store/remember the output of the circuit. In order to not have our circuit instantly react to changes within our inputs we have to use behavioral verilog, structural verilog does not support this feature hence why latches have to be created using structural verilog.

### What is the meaning of always @(*) in a sensitivity block?
The meaning of the always @(*) syntax within a sensitivity block tells verilog to automatically include all signals that are read within the always block so that way when your always block is using a lot of variables you don't have to explicitly tell verilog every single variable that you are going to include within the always block. An always block allows you to tell the system that you do not want to instantly change the output at any given time. It allows you to create sequential logic with triggers so that the code will only execute within the block if one of the signals denoted within the () after the @, changes.

### What importance is memory to digital circuits?
Memory is quite important because without it we would limit the applications for which digital logic could be applied to! Memory allows us to save computational costs, refer back to something we calculated before, and overall increase the complexity of what we can do with digital logic. Without memory you might never be able to reset the password to your computer for example. If you did tell the circuit that you wanted the new password to be 1234 the circuit would not remember that when you shut the computer off and you might always be stuck with the default password that is hard wired into your system. Another thing you would not be able to do if we did not create a way to store items within digital circuits is we could not display text on a screen (a function that would be required if you wanted to read this README). If our large circuit we call a computer could not remember what the screen is supposed to look like at a given time it would not be able to display a full screen of changing text, it would only be able to show one key stroke at a time which would not be much help.
