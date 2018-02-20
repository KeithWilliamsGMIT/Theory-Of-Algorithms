# Theory Of Algorithms
This repository contains work from my 4th year theory of algorithms module for college. For this module we were assigned a number of tasks which we had to complete.

### Problems
1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function `decide-prime`.

2. Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.

    ```
    ni + 1 = 3ni + 1 if ni is odd
    ni + 1 = ni ÷ 2 otherwise
    ```

   End the recursion when (or if) the number becomes 1. Call the function `collatz-list`. So, `collatz-list` should return a list whose first element is n0, the second element is n1, and so on. For example:

    ```
    > (collatz-list 5)
    '(5 16 8 4 2 1)
    > (collatz-list 9)
    '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
    > (collatz-list 2)
    '(2 1)
    ```

3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it returns the list cyclically shifted one place to the right. For example:

    ```
    > (lcycle (list 1 2 3 4 5))
    '(2 3 4 5 1)
    > (rcycle (list 1 2 3 4 5))
    '(5 1 2 3 4)
    ```
