drop database Testdb
create database Testdb
create login mrzahidali with password='zahidali'
create user testUser for login mrzahidali    
Use Testdb                     /*start using table */

create table persons (         /*creating persons table with following column*/
	personID int primary key,
	lastName varchar (255),
	firstName varchar (255),
	address2 varchar (255), 
	city varchar (255)
);

drop table persons           /*to delete the table */
truncate table persons       /*to delete the data in the table */

alter table persons add email varchar (255)     /* adding column named email in persons table*/
alter table persons drop column email          /*deleting column in persons table*/
alter table persons alter column personID varchar /*changing datatype of column*/

/*inserting data into table write only values if want to insert in all column*/
insert into persons (personID, lastName, firstName, address2, city)
values (1, 'ali', 'zahid', 'zubairhall', 'lahore');
insert into persons values (2, 'kashif', 'hamza', 'uet2', 'lahore2');
insert into persons values (3, 'shahid', 'ali', 'uet3', 'lahore3');

select * from persons  /*select all data from persons table*/
select firstName, lastName from persons /*selecting specific columns from persons table*/


select distinct firstName from persons /*to return different values*/
select count(distinct firstName) from persons  /*return the numbers of different values*/
select firstName from persons where(personID=3) /*select data from persons table where condition meets*/

update student set student_name='Zahdi Ali' where (cnic='1')  /*to update the content of the column*/

ALTER TABLE DEPARTMENTS /*name 0f table in which f0reign key will be added nad l0cati0n_ID will be f0reign key*/
   ADD FOREIGN KEY (LOCATION_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID);  /*table name and primary key 0f that table*/
   
/*adding tw0 primary keys in 0ne table*/   
 CREATE TABLE EMPLOYEES(
	EMPLOYEE_ID INT,
	MANAGER_ID INT,
	DEPARTMENT_ID INT foreign key references DEPARTMENTS(DEPARTMENT_ID)
	Primary key (EMPLOYEE_ID, MANAGER_ID)   /*cOmpOsit primary keys like One key act like 0ne primary key*/
)
   
/*tw0 primary keys f0r f0reign recerences that is unique key, inique act like primary key */

CREATE TABLE EMPLOYEES(
	EMPLOYEE_ID INT primary key,
	COMMISION_PCT FLOAT(24),
	MANAGER_ID INT UNIQUE,  /*unique key*/
	DEPARTMENT_ID INT
)

/*update row */
UPDATE crudApp SET column1 = value1, column2 = value2, ... WHERE condition;













-- transaction
begin transaction
	update employees set manager_id = null where manager_id = 101
	delete from dependents where employee_id = 101
	delete from employees where employee_id = 101
commit

-- transaction with rollback
begin tran
	create table newTable (
		personID int primary key,
		fullname varchar (255)
	);
commit

begin tran
	insert into newTable values(1, 'zahid1');
	insert into newTable values(2, 'zahid2');
	insert into newTable values(3, 'zahid3');
	insert into newTable values(4, 'zahid4');
	insert into newTable values(5, 'zahid5');
commit

begin tran
	insert into newTable values(6, 'zahid6');
	insert into newTable values(7, 'zahid7');
	rollback	-- rollBack
commit

select * from newTable



-- roolbasck to the save transaction
begin tran
	insert into newTable values(6, 'zahid6');
	insert into newTable values(7, 'zahid7');
	UPDATE newTable SET fullname = 'ali_1' WHERE personID = 1;

	save tran one

	UPDATE newTable SET fullname = 'ali_2' WHERE personID = 2;
	UPDATE newTable SET fullname = 'ali_3' WHERE personID = 3;
	UPDATE newTable SET fullname = 'ali_4' WHERE personID = 4;
	UPDATE newTable SET fullname = 'ali_5' WHERE personID = 5;

	rollback tran one

select * from newTable
