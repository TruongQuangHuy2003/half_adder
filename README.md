
### Half Adder Overview

A **Half Adder** is a basic combinational logic circuit used in digital electronics to perform the addition of two single-bit binary numbers. It is a fundamental building block in the design of arithmetic circuits.

The half adder has two inputs:
- **A**: First binary input.
- **B**: Second binary input.

And it produces two outputs:
- **Sum (S):** The XOR result of the two inputs, representing the sum of the bits without carrying.
- **Carry (C):** The AND result of the two inputs, representing the carry bit to the next significant position.

#### Truth Table

| A | B | Sum (S) | Carry (C) |
|---|---|---------|-----------|
| 0 | 0 |    0    |     0     |
| 0 | 1 |    1    |     0     |
| 1 | 0 |    1    |     0     |
| 1 | 1 |    0    |     1     |

#### Circuit Diagram
The half adder is typically implemented using:
- **XOR gate** for the Sum output.
- **AND gate** for the Carry output.

#### Applications
Half adders are commonly used in:
- Arithmetic circuits such as full adders.
- ALUs (Arithmetic Logic Units).
- Simple binary addition operations.

