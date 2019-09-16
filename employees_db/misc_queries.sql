-- most common title
select title, count(*)
 from titles
 group by title;
 
-- most tenured employee
 select e.first_name, e.last_name, hire_date
   from employees e
   join titles t
     on e.emp_no = t.emp_no
 where to_date = '9999-01-01'
 order by hire_date;
 
 -- highest avg salaried dept
 select de.dept_no, d.dept_name, concat('$', format(avg(salary),2)) as 'avg salary'
   from salaries s
   join dept_emp de
     on s.emp_no = de.emp_no
   join departments d
     on de.dept_no = d.dept_no
  where s.to_date = '9999-01-01'
  group by dept_no;

-- oldest employee, male
select birth_date, first_name, last_name, gender
  from employees e
  join dept_emp de
    on e.emp_no = de.emp_no
 where to_date = '9999-01-01'
   and gender = 'M'
 order by birth_date;
 
-- youngest employee, female
select birth_date, first_name, last_name, gender
  from employees e
  join dept_emp de
    on e.emp_no = de.emp_no
 where to_date = '9999-01-01'
  -- and gender = 'F'
 order by birth_date;
 
 -- highest salaries
 /*
 select s.emp_no, salary
   from salaries s
   join employees e
     on s.emp_no = e.emp_no
  where salary = 
 
  select *, (year(curdate()) - year(birth_date))
    from employees
   where (year(curdate()) - year(birth_date)) < 60
    */