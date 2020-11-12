       *****************************************************************
       IDENTIFICATION DIVISION.
       *****************************************************************
       PROGRAM-ID.  STUDENT-LIST
       AUTHOR.  JOHN HAMM
       DATE-WRITTEN.    NOVEMBER 12, 2020
       DATE-COMPILED.  NOVEMBER 12, 2020
       *   This program illustrates the structured form of a COBOL
       *   program where the primary procedure level in the PROCEDURE
       *   DIVISION is at the SECTION level
       *****************************************************************
       ENVIRONMENT DIVISION.
       *****************************************************************
       *---------------------------------------------------------------*
       CONFIGURATION LINKAGE SECTION.
       *---------------------------------------------------------------*
       SOURCE-COMPUTER. IBM.
       OBJECT-COMPUTER. IBM.
       SPECIAL-NAMES.  C01 IS TOP-OF-NEXT-PAGE.
       *---------------------------------------------------------------*
       INPUT-OUTPUT SECTION.
       *---------------------------------------------------------------*
       FILE-CONTROL.
           SELECT STUDENT-FILE ASSIGN TO UT-S-INPUT.
           SELECT  STUDENT-REPORT  ASSIGN TO UT-S-OUTPUT.
       *****************************************************************
       DATA DIVISION.
       *****************************************************************
       *---------------------------------------------------------------*
       FILE-SECTION.
       *---------------------------------------------------------------*
       FD STUDENT-FILE LABEL RECORDS ARE OMITTED.
       01  DUMMY-RECORD    PIC X(80).

       FD STUDENT-REPORT LABEL RECORDS ARE OMITTED.
       01 REPORT-LINE  PIC X(133).
       *---------------------------------------------------------------*
       WORKING-STORAGE SECTION.
       *---------------------------------------------------------------*
       01  WORKING-RECORD.
           04  FILE-STATUS PIC X(05).

       01  STUDENT-RECORD.
           05 STUDENT-IDENTIFICATION.
               10 LAST-NAME-IN PIC X(10).
               10 FIRST-NAME-IN PIC X(10).
               10 MIDDLE-INITIAL-IN PIC X(01).
               10  STUDENT-ID-IN PIC X(05).
           05 FILLER
           05 ENROLLMENT-INFO.
               10 CLASSIFICATION-IN PIC X(02).
               10 TOTAL-HOURS-IN   PIC 9(03).
               10 HOURS-THIS-SEM-IN PIC 9(02).
               10 MAJOR-IN PIC X(03).
       01  REPORT-HEADING
           05 FILLER   PIC X(29) VALUE SPACES.
           05 FILLER   PIC X(21) VALUE
           'Semester Student List'.

       01  SEPARATOR-LINE.
           05 FILLER   PIC X(01) VALUE SPACES.
           05 FILLER   PIC X(79) VALUE ALL '-'.

       01 COLUMN-HEADING-1
           05 FILLER   PIC X(01)   VALUE SPACE.
           05 FILLER   PIC X(79)   VALUE '|    Student
           'Name   | Student ID.   | Class | Major |   Current | Total'
            | '.
       
       01  COLUMN-HEADING-2.
           05 FILLER   PIC X(28) VALUE ' |'
           05 FILLER   PIC X(14) VALUE '|  Number'.
           05 FILLER   PIC X(08) VALUE '|'.
           05 FILLER   PIC X(08) VALUE '|'.
           05 FILLER   PIC X(22) VALUE '| Enrollment | Hours |'.

       