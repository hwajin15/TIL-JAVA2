select location_id , street_address, city , state_province ,country_name
from locations
NATURAL join COUNTRIES;

select last_name , department_id , department_name 
from EMPLOYEES join departments
using (department_id);


SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
USING (location_id)
WHERE LOWER(l.city) = 'toronto';

SELECT w.last_name "Employee", w.employee_id "EMP#",
 m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w JOIN employees m
ON (w.manager_id = m.employee_id);

SELECT w.last_name "Employee", w.employee_id "EMP#",
 m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w JOIN employees m
ON (w.manager_id = m.employee_id)
order by m.MANAGER_ID;

SELECT w.last_name "Employee", w.employee_id "EMP#",
 m.last_name "Manager", m.employee_id "Mgr#"
FROM employees w
LEFT OUTER JOIN employees m
ON (w.manager_id = m.employee_id)
ORDER BY 2;

SELECT e.department_id department, e.last_name employee,
 c.last_name colleague
FROM employees e JOIN employees c
ON (e.department_id = c.department_id)
WHERE e.employee_id <> c.employee_id
ORDER BY e.department_id, e.last_name, c.last_name;

