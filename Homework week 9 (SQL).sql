create database lutonhr;
create table people(
employee_id int not null,
surname varchar (30) not null,
firstname varchar (30) not null,
Age int not null,
primary key (employee_id)
);
create table pay(
employee_id int not null,
salary int not null,
jobcode varchar (3) not null
);
insert into pay (employee_id, salary, jobcode) values ("20001", "30000", "ENG");
insert into pay (employee_id, salary, jobcode) values ("20002", "45000", "DOC");
insert into pay (employee_id, salary, jobcode) values ("20003", "56000", "IT");
insert into people (employee_id, surname, firstname, Age) values ("20001", "Smith", "Aaron", "24");
insert into people (employee_id, surname, firstname, Age) values ("20002", "Jordan", "Luke", "32");
insert into people (employee_id, surname, firstname, Age) values ("20004", "Douglas", "Darren", "45");
select pay.salary,
people.Age
from pay
inner join people on
pay.employee_id=people.employee_id;
desc pay;
desc people;
select * from people
where Age between 25 and 40;
select * from pay, people
where pay.employee_id = people.employee_id and jobcode = "ENG";
select * from pay, people
where jobcode = "IT" and Age between 20 and 37;

