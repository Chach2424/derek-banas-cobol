       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut3.
AUTHOR. Tajul Tijerina
DATE-WRITTEN.November 1st 2022
ENVIRONMENT DIVISION.

CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 Age PIC 99        VALUE 0.
01 Grade PIC 99      VALUE 0.
01 Score PIC X(1)    VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0.
       88 CanVote    VALUE 1.
       88 CantVote   VALUE 0.
01 TestNumber PIC X.
       88 IsPrime    VALUE "1", "3", "5", "7".
       88 IsOdd      VALUE "1", "3", "5", "7", "9".
       88 IsEven     VALUE "2", "4", "6", "8".
       88 LessThan5  VALUE "1" THRU "4".
       88 ANumber    VALUE "0" THRU "9".          

PROCEDURE DIVISION.
DISPLAY "Enter your age: " WITH NO ADVANCING
ACCEPT Age
IF Age > 18 THEN 
       DISPLAY "You can vote"
ELSE 
       DISPLAY "You can't vote"
END-IF   

*> > GREATER THAN
*> NOT > NOT GREATER THAN
*> < LESS THAN
*> NOT < NOT LESS THAN
*> = EQUAL TO
*> NOT = NOT EQUAL TO

IF Age LESS THAN 5 THEN
       DISPLAY "Stay home"
END-IF
IF Age = 5 THEN
       DISPLAY "Go to kindergarten"
END-IF
IF Age > 5 AND Age < 18 THEN
       COMPUTE Grade = Age - 5
       DISPLAY "Go to grade " Grade
END-IF        
IF Age GREATER THAN OR EQUAL TO 18 THEN
       DISPLAY "Go to college"
END-IF


STOP RUN.
