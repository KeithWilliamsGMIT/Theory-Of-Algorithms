# Theory Of Algorithms
This repository contains work from my 4th year theory of algorithms module for college. For this module we were assigned a number of tasks which we had to complete.

### Getting Started
The solutions to these problems were solved using the [Racket](https://racket-lang.org/) programming language. This is a functional programming language. The easiest way to get started with racket is to install [Dr Racket](https://download.racket-lang.org/). After installing Dr Racket, clone this repository with the following command.

```
git clone https://github.com/KeithWilliamsGMIT/Theory-Of-Algorithms.git
```

Once cloned you can open the files with Dr Racket and run using the shortcut `Ctrl + R`. There is one Racket file per problem with the naming convention `problem-[number].rkt`.

### Problems
The following is the list of problems which we had to solve.

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

3. Write, from scratch, two functions in Racket. The first is called `lcycle`. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called `rcycle`, and it returns the list cyclically shifted one place to the right. For example:

    ```
    > (lcycle (list 1 2 3 4 5))
    '(2 3 4 5 1)
    > (rcycle (list 1 2 3 4 5))
    '(5 1 2 3 4)
    ```

4. Write a function `sublsum` in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the `combinations` built-in function. Note the order of the sublists and their elements doesn’t matter. For example:

    ```
    > (sublsum (list 1 2 3 4 -5))
    '((2 3 -5) (-5 1 4))
    > (sublsum (list 1 2 3 4 5))
    '()
    ```

5. Write a function `hamming-weight` in Racket that takes a list `l` as input and returns the number of non-zero elements in it. For example:

    ```
    > (hamming-weight (list 1 0 1 0 1 1 1 0))
    5
    ```

6. Write a function `hamming-distance` in Racket that takes two lists and returns the number of positions in which they differ. For example:

    ```
    > (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
    5
    ```

7. Write a function `maj` in Racket that takes three lists `x`, `y` and `z` of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of `x`, `y` and `z` contain 1’s, and 0 otherwise. For example:

    ```
    > (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
    '(0 0 0 1 0 1 1 1)
    ```

8. Write a function `chse` in Racket that takes three lists `x`, `y` and `z` of equal length and containing only 0’s and 1’s. It should return a list containing the elements of `y` in the positions where `x` is 1 and the elements of `z` otherwise. For example:

    ```
    > (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
    '(0 1 0 1 0 0 1 1)
    ```

9. Write a function `sod2` in Racket that takes three lists `x`, `y` and `z` of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise. For example:

    ```
    > (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
    '(0 1 1 0 1 0 0 1)
    ```

10. Write a function `lstq` in Racket that takes as arguments two lists `l` and `m` of equal length and containing numbers. It should return `d`, the distance given by the sum of the square residuals between the numbers in the lists. This means take the `i` th element of `m` from the `i` th element of `l` and square the result for all `i`. Then add all of those to get `d`. For example:

    ```
    > (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
    54.61
    ```

# Conclusion
This was my first experience with using a functional programming language. Although we did not use it to build a full application, it did provide an insight into functional programming, which requires a different mindset than when programming in an imperative language such as Java. In many ways I found functional programming to be much more simple. Besides Racket, I found the problems themselves really interesting, many of which are common calculations performed by computers, but which I have never implemented myself or understood the importance of. I also felt that the scope of these problems was just right for a semester long module. After completing this module I feel that I have gained a better understanding, not only of functional programming, but programming as a whole.

### References
+ [Racket](https://racket-lang.org/)
