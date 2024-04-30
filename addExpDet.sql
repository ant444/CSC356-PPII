-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- File: addexpDet.sql
  
  
  ACCEPT ExpNum PROMPT	'Enter Expense Number: '
  
  SELECT * FROM ExpDet	        
  Where ExpNum	= '&ExpNum' ;
  
  ACCEPT LineNum PROMPT 'Enter	Line Number: '
  ACCEPT DESCRIP PROMPT 'Enter Description: '
  ACCEPT AMT PROMPT 'Enter Amount: $'
  ACCEPT HCODE	PROMPT 'Enter HCODE: '
  ACCEPT SUBCODE PROMPT 'ENTER	SubCode:'
 
  INSERT INTO ExpDet (ExpNum, LineNum,	Descrip, Amt, HCode, SubCode)
  VALUES ('&ExpNum', '&LineNum', '&Descrip', '&Amt', '&HCode',	'&SubCode') ;
      

