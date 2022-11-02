       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut3.
AUTHOR. 
DATE-WRITTEN.November 2nd 2022
ENVIRONMENT DIVISION.

CONFIGURATION SECTION.


DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.


PROCEDURE DIVISION.
SubOne.
       DISPLAY "In paragraph 1"
       PERFORM SubTwo
       DISPLAY "Returned to paragraph 1"
       PERFORM SubFour 2 TIMES     
       STOP RUN.

SubThree.
       DISPLAY "In paragraph 3".

SubTwo.
       DISPLAY "In paragraph 2"
       PERFORM SubThree
       DISPLAY "Returned to paragraph 2".
       
SubFour.
       DISPLAY "Repeat".

STOP RUN.
