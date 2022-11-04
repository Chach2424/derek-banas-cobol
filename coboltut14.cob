       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut14.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
       SELECT WorkFile ASSIGN TO 'work.tmp'.
       SELECT OrgFile ASSIGN TO 'student.dat'
           ORGANIZATION IS LINE SEQUENTIAL.
       SELECT SortedFile ASSIGN TO 'student2.dat'
           ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD OrgFile.
01 StudData.
       02 IDNum PIC 9.
       02 StudName PIC X(10).

*> SD is going to be used whenever you're working with sorted files
SD WorkFile.
01 WStudData.
       02 WIDNum PIC 9.
       02 WStudName PIC X(10).
FD SortedFile.
01 SStudData.
       02 SIDNum PIC 9.
       02 SStudName PIC X(10).

WORKING-STORAGE SECTION.


PROCEDURE DIVISION.
SORT WorkFile ON ASCENDING KEY SIDNum
       USING OrgFile
       GIVING SortedFile

STOP RUN.          



       
      

     
       





