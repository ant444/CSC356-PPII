-- Name: Anthony Nelson
-- Major: Computer Science
-- Course: CSC 356 - Intro To Database Management Systems
-- Semester & Year: Spring 2024
-- Instructor: Dr. Hussain
-- Assignment #: Project Phase II
-- Filename: allheads.sql

 1 SET SERVEROUTPUT ON
 2 
 3 DECLARE
 4   CURSOR head_cursor IS
 5     SELECT code, name, htype, hdate, opbal
 6     FROM Head
 7     ORDER BY name;
 8 
 9   CURSOR subhead_cursor(hcode_val NUMBER) IS
10     SELECT subcode, name, opbal, sdate
11     FROM Subhead
12     WHERE hcode = hcode_val
13     ORDER BY subcode;
14 
15   v_head_name VARCHAR2(100);
16 BEGIN
17   FOR head_rec IN head_cursor LOOP
18     v_head_name := head_rec.name;
19     DBMS_OUTPUT.PUT_LINE('Head: ' || v_head_name);
20 
21     FOR subhead_rec IN subhead_cursor(head_rec.code) LOOP
22 	 DBMS_OUTPUT.PUT_LINE(
23         RPAD(subhead_rec.subcode, 4) ||
24         RPAD(subhead_rec.name, 25) ||
25         '$' ||
26         TO_CHAR(subhead_rec.opbal, '99999.99') ||
27         ' ' ||
28         TO_CHAR(subhead_rec.sdate, 'DD-MON-YY')
29 	 );
30     END LOOP;
31   END LOOP;
32 
33   DBMS_OUTPUT.PUT_LINE('PL/SQL procedure successfully completed.');
34 END;
35 /
