-- max salary
 select e.emp_no, first_name, last_name, concat('$',format(salary,2))
   from salaries s
	join employees e
      on e.emp_no = s.emp_no
  where salary in (select max(salary) from salaries);
 
 -- max salary
 select e.emp_no, first_name, last_name, concat('$',format(salary,2))
   from salaries s
	join employees e
      on e.emp_no = s.emp_no
  where salary in (select min(salary) from salaries);
