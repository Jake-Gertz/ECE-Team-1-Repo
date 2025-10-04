# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary Answers

In this lab we learned how to use binary addition to create an XOR gate that simulated a light switch system in the typical household. The circuit used a basic adder to simulate the light switch system, where the LED lights up if one or the other is flipped, but not when both are flipped. The second portion of the lab also implemented a full adder which involved adding two bit numbers together, a carry in value, a result, and a carry out value. This was all used to showcase the power of combinatorial logic and addition using binary values when implemented on a circuit board.

### 1 - How might you add more than two bits together?

If you wanted to do addition on numbers with more than 2 bits, you could implement a system where multiple full adders compute "portions" or "sections" addition, and then ultimately combine the values together to get the result. Similar to 2 bit addition, with 4 bit addition you could have a full adder combine the LSB of both 4 bit values and produce a result and a carry out value. The carry out value would then be used in the computation of the bit that is more significant than the one before until the 4 bit number has been computed in its entirety.

### 2 - What is the importance of the XOR gate in an adder?

An XOR gate is important in the context of addition because it's a way of representing a change in the "decimal place" and to "carry over" the value from the previous "decimal place" in terms of binary values. Since binary addition doesn't necessarily have these "places", the adders use XOR gates to simulate such things, so that when both the bits have a value of 1, when added together they move to the next "place" and "carry over" the 1 value to the next bit that is more significant than it.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

The largest number a two bit adder can handle is 3, which can be represented as "11" in binary. This is because when the numbers are only represented in two bits, the maximum value they can achieve is 3, since it can be summed up as (1 * 1) + (1 * 2). If you attempt to go over such value, another bit must be added to the most significant bit's place (all the way to the left of the binary representation) to allow for larger/broader values. For example, if you wanted to achieve a value of "5" in binary, you must add a "0" to the most significant bit's place, compute the addition, and your result will be the value "101".