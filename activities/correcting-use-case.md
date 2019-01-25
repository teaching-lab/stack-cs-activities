# Correcting a textual use case specification

The activity focuses on understanding and exercising text specifications of use cases. The students receive a specification with mistakes, and their task is to fix them.

| Parameters:        |                                     |
| -----------------: | :---------------------------------- |
| **Duration:**      | 15 minutes                          |
| **Participants:**  | 1-18 students                       |
| **Instructors:**   | 1 teacher                           |
| **Class:**         | projector or board                  |
| **Resources:**     | none                                |
| **Prerequisites:** | basic understanding of use cases    |

## Learning outcomes

* Students will be aware of common mistakes in text specifications.
* Students will learn to write correct text specifications.

## Setup and preparation

* Prepare a textual document with the specification below and show it on the projector.
* Alternatively, if you don't have a projector, you can write the specification on the board.

```
Use Case: Cash Deposit
Primary actor: Customer
Secondary actor: Bank Teller, Branch manager
Pre-conditions: The Customer demonstrates a valid ID card.
Main flow:
1. The Customer shows his/her ID card and tells the number of his/her bank account to the Bank Teller.
2. The Bank Teller inputs the bank account number to the system
3. IF the account exists:
3.1 The Bank Teller takes money from the Customer
3.2 Add them to the account
3.3 The Bank Teller prints the confirmation
3.4 The Customer gets confirmation SMS about the deposit
Post-conditions: None.
```

The errors are:
* Incorrect primary and secondary actors. The primary actor executes the use case by interacting with the system. This is the task of the Bank Teller.
* Precondition. It has to be relevant to the model of the system.
* The main flow should start with: "The use case starts once..."
* Syntax of the main flow. Each item must include "who" (actor or the system) + "performs action".
* Useless steps in the main flow that do not include interaction with the system (e.g., "The Bank Teller takes money from the Customer").
* Missing steps as the reaction of the system after an actor performs an action.
* There might be more correct results, an example is shown below. It can also be extended by adding an alternative flow ("If data are not verified...").

```
Use Case: Cash Deposit
Primary actor: Bank Teller
Secondary actor: Customer
Pre-conditions: The Customer has an account in the bank system.
Main flow:
1. The use case starts once Bank Teller selects "deposit money" in the system.
2. The system displays the page for depositing money.
3. Bank Teller inputs the Customer's bank account number, ID, and deposit amount to the system.
4. Bank Teller clicks the button "verify".
5. The system verifies the data.
6. IF data are verified:
6.1. The system raises available credit of Customer's account by the amount of deposit.
7. The system prints a deposit receipt.
Post-conditions: The credit of Customer's account is raised by the amount of deposit.
```

## Activity overview

* The instructor shows the text specification to students. 
* The students have a few minutes to read it and think about the mistakes.
* The instructor prompts the students to say a mistake out loud, along with an explanation why they believe it is a mistake.
* The instructor corrects the mistake in the document/on the board and follows each report with a brief discussion on why it is a mistake and why the proposed fix is correct.
* The activity ends when all mistakes are corrected.

## Tips and tricks

* If students do not see any mistakes, you can read a sentence after sentence and ask what could be written better.
* You can show an example of a different correct use case specification to help students realize what is right and what is not.
* The activity can spark a discussion on where the mistakes are and why.

## Related material

* http://agilemodeling.com/style/useCaseDiagram.htm
* http://uml.czweb.org/pripad_uziti.htm
* http://www.drdobbs.com/top-ten-use-case-mistakes/184414701

## Author

Bibiána Ťureková, 2019
