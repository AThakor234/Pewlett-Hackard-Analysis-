# Pewlett-Hackard-Analysis-

## Overview:
  Pewlett Hackard is a large company boasting several thousand employees, and it's been around for a long time. As baby boomers begin to retire at a rapid rate, Pewlett Hackard is looking toward the future in two ways. First, it's offering a retirement package for those who meet certain criteria. Second, it's starting to think about which positions will need to be filled in the near future.
    The task is to perform employeee research. Specifically, to find the answers of the following:
    1. The Number of Retiring Employees by Title
    2. The Employees Eligible for the Mentorship Program
  This analysis will help future-proof Pewlett Hackard by generating a list of all employees eligible for the retirement package.
  
## Resources:

  Tools: PostgreSQL(11.x) and pgAdmin
  
## Results:

  1. Number of Retiring Employees by Title:
      
        Retirement Title holds all the title of employees who were born between January 1,1952 and December 31,1955. The table include columns like emp_no, first_name, last_name, title. Finally, total employees by title were as follows:
        
          1. 25916 Senior Engineer
          2. 24926 Senior Staff
          3. 9285  Engineer
          4. 7636  Staff
          5. 3603  Technique Leader
          6. 1090  Assistant Engineer
          7. 2     Manager
          
   2. Employees Eligible for the Mentorship Program:
      
      Mentorship Eligibility table has emp_no, first_name, last_name, birth_date, from_date, to_date and title. The tables holds the data of the employees who are eligible to participate in a mentorship program.
      
 ## Summary:
 
    Senior Enginners were in maximum number for retirement , followed by Senior staff. Managers seems to be least in retirement list.     
        
