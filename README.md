# Assembly Access Violation Bug

This repository demonstrates a common error in assembly language programming: an access violation caused by incorrect pointer arithmetic. The bug occurs when calculating a memory address using `ebx+4*ecx`, resulting in an address outside the valid memory range. 

The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version with appropriate bounds checking.  This example highlights the importance of rigorous memory management and the need for careful pointer arithmetic when working with assembly language. 

## How to reproduce the bug

1. Assemble and link `bug.asm`.
2. Run the resulting executable.
3. Observe the access violation exception.

## Solution

The solution involves adding boundary checks to ensure that `ebx + 4 * ecx` remains within the permissible address range.