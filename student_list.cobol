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
       