----------------------
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from Employees e 
join Salaries s
on e.emp_no = s.emp_no
order by emp_no ASC;

