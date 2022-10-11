SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_title
FROM employees as e
INNER JOIN title as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO recent_title
FROM retirement_title AS rt;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no)
rt.first_name,
rt.last_name,
rt.title
INTO Unique_title
FROM retirement_title as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;


SELECT COUNT(ut.title) as count,ut.title
INTO retiring_titles
FROM unique_title as ut
GROUP BY ut.title
ORDER BY count DESC ;

SELECT DISTINCT ON (e.emp_no)
e.first_name, 
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligbility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no=de.emp_no)
INNER JOIN title as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;