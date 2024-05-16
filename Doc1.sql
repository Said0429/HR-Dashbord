SELECT
    employee_id AS "Employee ID",
    first_name ||  ' ' || last_name AS "Full Name",
    hire_date AS "Hire Date",
    EXTRACT(YEAR FROM hire_date) AS "Year", 
    EXTRACT(MONTH FROM hire_date) AS "Month", 
    e.job_id AS "Job ID",
    j.job_title AS "Job Title",
    salary AS "Salary",
    e.department_id AS "Department ID",
    d.department_name AS "Department Name",
    c.country_name AS "Country Name", 
    l.city AS "City",
    CASE gender
        WHEN 'F' THEN 'Female'
        WHEN 'M' THEN 'Male'
    END AS "Gender"
FROM
    employees e 
    LEFT JOIN jobs j ON e.job_id = j.job_id
    LEFT JOIN departments d ON e.department_id = d.department_id
    LEFT JOIN locations l ON l.location_id = d.location_id
    LEFT JOIN countries c ON c.country_id = l.country_id;
    
    
    
    
    
    
    
    
    
    
    
