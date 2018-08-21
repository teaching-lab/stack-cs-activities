# Vulnerable source code

The students form small groups and cooperatively find vulnerabilities in C code snippets.

| Parameters:        |               |
| -----------------: | :------------ |
| **Duration:**      | 30 minutes    |
| **Participants:**  | 2–20 students |
| **Instructors:**   | 1 teacher     |
| **Class:**         | tables        |
| **Resources:**     | printed cards with code snippets |
| **Prerequisites:** | read C code |

## Learning outcomes

* Practice code understanding.
* Evaluate code quality and correct it.

## Setup and preparation

* Print the [code snippets](code.pdf) for each group. Use one-sided printing.
* Print the [solution](solution.pdf) for the instructor.

## Activity overview

1. Divide the students into small groups of about 3 people.
2. Explain that they will receive printed pieces of C code from a real (albeit older) production software.
3. The task is to cooperatively determine: the purpose of the code, the contained vulnerability, and a proposed fix.
4. Emphasize that there are security vulnerabilities, not syntax errors. That is, the code compiles correctly, although it may contain non-standard extensions to the language.
5. Each group receives the printed code snippets.
6. When everyone is finished, pair the groups so that they can compare and discuss their choices.

## Tips and tricks

* This activity can be easily extended with more snippets of varying difficulty (one or two lines, short functions, or larger blocks of code).
* The snippet 5 can be difficult and take more time. You can stop the students after 20 minutes even if they are not finished with everything.
* There is only one "primary" vulnerability in each code snippet. However, the students may find other problems, such as violations of best practices.

## Related material

* This book chapter on [C language issues](https://trailofbits.github.io/ctf/vulnerabilities/references/Dowd_ch06.pdf) provides many vulnerable code samples with explanations.
* Some of the snippets for this activity were taken from [ESET security blog](https://www.welivesecurity.com/2017/01/30/examples-vulnerable-code-find/). 

## Author

Valdemar Švábenský, 2018