       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut13.

DATA DIVISION.

WORKING-STORAGE SECTION.
01 ProdTable.
       02 ProdData.
           03 FILLER PIC X(8) VALUE 'Red SML'.
           03 FILLER PIC X(8) VALUE 'Blue SML'.
           03 FILLER PIC X(8) VALUE 'GreenSML'.
       02 FILLER REDEFINES ProdData.
           03 Shirt OCCURS 3 TIMES.
              04 ProdName PIC X(5).
              04 ProdSizes PIC A OCCURS 3 TIMES.
             
*> If data is stored as string but you wanna use it as a numeric
*> here's another use for REDEFINE
01 ChangeMe.
       02 TextNum PIC X(6).
       02 FloatNum REDEFINES TextNum PIC 9(4)V99.

PROCEDURE DIVISION.
DISPLAY Shirt(1).
MOVE '123456' TO TextNum.
DISPLAY FloatNum



STOP RUN.          



       
      

     
       





