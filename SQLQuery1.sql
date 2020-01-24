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
