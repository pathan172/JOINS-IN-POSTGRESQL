create table employees3 (
	employee_id serial primary key,
	first_name varchar(50),
	last_name varchar (50),
	department_id int
);

insert into employees3 (first_name,last_name,department_id)
values
('rahul','sharma', 101),
('priya', 'mehta',102),
('ankit','kaur',null),
('simran','verma',103),
('aman','singh',101);
select * from employees3;

create table departments(
	department_id int primary key,
	department_name varchar(50)
	
);

insert into departments (department_id, department_name)
	values
	(101 ,'sales'),
	(102 ,'marketing'),
	(103 , 'IT'),
	(104, 'HR');
select * from departments;

--INNER JOIN retrieve employees3 and their department names where a match exixsts.
select 
	e.employee_id,
	e.first_name,
	e.last_name,
	d.department_name

FROM 
	employees3 e
INNER JOIN 
 departments d
ON
	e. department_id = d.department_id;


--LEFT JOIN retrieve all employees3 and their departments name,including those without department

	select 
	e.employee_id,
	e.first_name,
	e.last_name,
	d.department_name

FROM 
	employees3 e
LEFT JOIN 
 departments d
ON
	e. department_id = d.department_id;

--RIGHT JOIN retrieve all departments and the employees3 working in them including departments without
select 
	e.employee_id,
	e.first_name,
	e.last_name,
	d.department_name

FROM 
	employees3 e
RIGHT JOIN 
 departments d
ON
	e.department_id = d.department_id;
--FULL OUTER JOIN retrieve all employees3 and departments including non matching records from both tables
select 
	e.employee_id,
	e.first_name,
	e.last_name,
	d.department_name

FROM 
	employees3 e
FULL OUTER JOIN
 departments d
ON
	e. department_id = d.department_id;

--CROSS JOIN retrieve all possible combinations of employees 3 and departments 
select 
	e.employee_id,
	e.first_name,
	e.last_name,
	d.department_name

FROM 
	employees3 e
CROSS JOIN
 departments d;

--SELF JOIN find all employees3 who share the same departmnet

select 
	e1.first_name as employee1,
	e2.first_name as employee2,
	d.department_name
FROM 
 employees3 e1
JOIN 
	employees3 e2
ON 
	e1.department_id = e2.departmnet_id AND e1.employee_id != e2.employee_id
JOIN
    departments d
ON 
  e1.department_id = d.department_id;


