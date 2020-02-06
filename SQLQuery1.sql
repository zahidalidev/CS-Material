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
	Primary key (EMPLOYEE_ID, MANAGER_ID)   /*cOmpOsit primary keys like One key*/
)
   
/*tw0 primary keys f0t f0reign keys that in unique key */

CREATE TABLE EMPLOYEES(
	EMPLOYEE_ID INT primary key,
	COMMISION_PCT FLOAT(24),
	MANAGER_ID INT UNIQUE,  /*unique key*/
	DEPARTMENT_ID INT
)
