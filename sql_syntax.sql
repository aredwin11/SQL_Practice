create database ed_prac;						--creating a new databse named ed_prac
use ed_prac;									--using the ed_prac database
create table test(sno int ,name varchar(20));   --creating a table
insert into test(sno,name)values(1,'Edwin');	--inserting values into the table
insert into test(sno,name)values(2,'Kumar');	
select * from test;								--reading or displaying the table

update test set name='Arun'where sno=2;			--updating the values in the table
select * from test;								--displaying the updates made

delete from test where name='Arun';				--deleting the value from the table based on the condition
select * from test;								--displaying the table after the deleting the value 

ALTER TABLE test alter column email VARCHAR(50) not null;
select * from test;	
INSERT INTO test (sno, name,email) VALUES (3, 'mahesh', 'mahesh@example.com');