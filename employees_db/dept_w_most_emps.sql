select *
  from dept_emp;

select d.dept_no, dept_name, count(*) total
  from dept_emp de
  join departments d
    on de.dept_no = d.dept_no
 where to_date = '9999-01-01'
 group by dept_no
 order by total desc;