create table Titles(
	title_id char(5) not null primary key,
	title varchar(100)
);
	

create table Employees(
	emp_no int not null primary key,
	emp_title varchar(5) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(1) not null,
	hire_date date not null,
	foreign key (emp_title) references Titles(title_id)
);

create table Departments(
	dept_no varchar(100) not null primary key,
	dept_name varchar(100) not null
);

create table Department_Employees(
	emp_no int not null,
	dept_no varchar(100) not null,
	foreign key (emp_no) references Employees(emp_no),
	foreign key (dept_no) references Departments(dept_no)
);

create table Department_Manager(
	emp_no int not null,
	dept_no varchar(100) not null,
	foreign key(emp_no) references Employees(emp_no),
	foreign key(dept_no) references Departments(dept_no)
);

create table Salaries(
	emp_no int not null,
	salary float not null,
	foreign key (emp_no) references Employees(emp_no)
);

select * from Titles;
select * from Employees;
select * from Departments;
select * from Department_Employees;
select * from Department_Manager;
select * from Salaries;