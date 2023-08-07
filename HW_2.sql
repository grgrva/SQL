--1. Вывести всех работников чьи ,зарплаты есть в базе, вместе с зарплатами.
--Используем inner join чтобы вывел только строки с данными имеющиеся в 2х таблицах

select employee_name
from employees
join employee_salary on employees.id = employee_salary.employee_id;

--2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary, employee_salary.employee_id 
from employees
join employee_salary on employees.id = employee_salary.employee_id
left join salary on salary_id = employee_salary.salary_id
where monthly_salary < 2000
order by employee_name;

select * from employee_salary;
select * from employees;
select * from salary;