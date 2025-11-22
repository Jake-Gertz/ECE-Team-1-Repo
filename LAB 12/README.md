# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

### Summary Answers

In this lab we learned about the differences between ripple counters and modulo counters. We also learned about how to construct the two using flip-flops such as T Flip Flops and D Flip Flops. We then impleneted this on a circuit board, where the LEDs on the board would represent numbers in binary digits and simulated counting up in value.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

The modulo counter is implented specifically as a Johnson counter, which has 2 * Count distinct states. This is why it divides clocks by 2 * Count, because the clock cycle operates differently compared to a one-hot modulo counter.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

If the flip flops don't have a preset/desired state when running at first, they will default to a state of "1" and will run as such. This is why the counter could go to all 1s during the first cyle, because the flip flops weren't preset correctly.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

You would need a width of 17 bits.