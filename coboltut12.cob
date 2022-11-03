       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut12.

DATA DIVISION.

WORKING-STORAGE SECTION.
01 Table1.
       02 Friend PIC X(15) OCCURS 4 TIMES.

PROCEDURE DIVISION.
MOVE 'Joy' TO Friend(1).
MOVE 'Willow' TO Friend(2).
MOVE 'Ivy' TO Friend(3).

DISPLAY Friend(1).
DISPLAY Table1.

STOP RUN.          



       
      

     
       





