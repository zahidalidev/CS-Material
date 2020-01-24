drop database Testdb
create database Testdb
create login mrzahidali with password='zahidali'
create user testUser for login mrzahidali    
Use Testdb                     /*start using table */
create table persons (         /*creating persons table with following column*/
	personID int,
	lastName varchar (255),
	firstName varchar (255),
	address2 varchar (255), 
	city varchar (255)
);
drop table persons           /*to delete the table */
truncate table persons       /*to delete the data in the table */
