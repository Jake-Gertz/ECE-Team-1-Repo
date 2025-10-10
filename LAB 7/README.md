# Number Theory: Subtraction


In this lab you've learned the basics of number theory as it relates to subtraction.


## Rubric


| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |


## Lab Questions


### Summary Answers
In this lab we learned about how we can use boolean logic and binary adders to create a way to subtract numbers using hardware gates!
We learned how to create a subtractor that uses 1's compliment and why that is impractical in real world applications and we learned
how to create a subtractor that uses 2's compliment which is what practically everyone who works in this field uses when creating a subtractor! Also in this lab we practiced giving our program vectored inputs and outputs and how to assign those inputs and outputs
within verilog!


### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
There are two key differences between our half adder from Lab 6 and our half subtractor from this lab, Lab 7. Firstly in our half adder
we have an output that we declared Carry meaning that our adder will cause a binary value to be propagated forward if the addition results in a number that has a carry. In our half subtractor this carry output is replaced with a Borrow output meaning that instead of propagating a value up the stack as we did with the adder the output is signifying whether or not we need to take a bit from our next number to complete the subtraction. The second difference between the two is that on our adder the Carry output is equal to the equation A & B whereas the Borrow output in our subtractors equation is !A & B.


### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The problem with the end around carry of One's Compliment is that it adds a second round of addition to your calculation which costs you both time and resources within your circuit design. While this time might not be that noticeable when dealing with small scale problems when you are scaling your design the time and resources cost of this second addition step will begin to add up and it could potentially cause problems in your design that could be solved by using a different method of binary subtraction such as 2's compliment!


### 3 - What is the edge case and problem with Two’s Complement number representation?
When using twos compliment the edge case which can sometimes cause odd problems is that there are more negative numbers than positive numbers represented by twos compliment. For example if you have a 4 bit number that is using two's complement you can represent a number from -8 to +7 assuming the most significant bit of the group is the bit that represents the sign of the number being represented! When using two's complement there will always be 1 more number in the negative range than there will be in the positive range. This could cause a problem in some logic circuits if you did not know this and therefore try to assign a value like +8 to a 4 bit twos compliment number which would not be possible! This could cause your system to think that you actually have -8 which wouldn't be what you wanted in this scenario!

