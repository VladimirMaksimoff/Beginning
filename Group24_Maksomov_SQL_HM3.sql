--1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary 
from employees   
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 

--2.������� ���� ���������� � ������� �� ������ 2000.
select employee_name
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
where monthly_salary < '2000'

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary, employee_name   
from salary
join employees_salary
on salary.id = employees_salary.id_salary 
left join employees 
on employees.id = employees_salary.id_employees 
where employee_name is null

--4. ������� ��� ���������� ������� ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary, employee_name   
from salary
join employees_salary
on salary.id = employees_salary.id_salary 
left join employees 
on employees.id = employees_salary.id_employees 
where monthly_salary < '2000' and employee_name is null

 --5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name from employees
left join employees_salary
on employees.id = employees_salary.id_employees
left join salary
on salary.id = employees_salary.id_salary 
where monthly_salary is null

--6.������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 

--7.������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Java%'

--8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Python%'

--9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--10. ������� ����� � ��������� ������ QA ���������
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Manual%'

--11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Auto%'

-- 12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Jun%'


--13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Mid%'

--14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Sen%'


--15. ������� �������� Java �������������
select monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Java%'

--16. ������� �������� Python �������������
select monthly_salary
from employees 
join employees_salary 
on employees.id = employees_salary.id_employees
join salary 
on salary.id = employees_salary.id_salary
join roles_employee  
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Python%'

--17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Junior Python%'

--18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Middle Java%'

--19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Senior Java%'

-- 20. ������� �������� Junior QA ���������
select employee_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Junior%QA%'

-- 21. ������� ������� �������� ���� Junior ������������
select AVG (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Jun%'

-- 22. ������� ����� ������� JS �������������
select SUM (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%Java%'

--23. ������� ����������� �� QA ���������
select MIN (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--24. ������� ������������ �� QA ���������
select MAX (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--25. ������� ���������� QA ���������
select COUNT (role_name)
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%QA%'

--26. ������� ���������� Middle ������������.
select COUNT (role_name)
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like 'Mid%'

--27. ������� ���������� �������������
select COUNT (role_name)
from employees 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%dev%'

-- 28. ������� ���� (�����) �������� �������������.
select SUM (monthly_salary)
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where role_name like '%dev%'

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
order by monthly_salary asc 

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where monthly_salary between'1700' and '2300'
order by monthly_salary asc 

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where monthly_salary < '2300'
order by monthly_salary asc 

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000-
select employee_name, role_name, monthly_salary
from employees 
join employees_salary
on employees.id = employees_salary.id_employees 
join salary
on salary.id = employees_salary.id_salary 
join roles_employee  
on employees.id = roles_employee.employee_id 
join roles 
on roles.id = roles_employee.role_id 
where monthly_salary in ('1100','1500','2000')
order by monthly_salary asc 


