





CREATE DATABASE hospital;
USE  hospital;
CREATE table department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);
DROP TABLE staff;
CREATE table staff(
staff_id INT NOT NULL UNIQUE PRIMARY KEY ,
name VARCHAR(50) NOT NULL,
Salary INT DEFAULT 0,
age INT CHECK(age>18),
dept_id INT,
foreign key(dept_id) references department(dept_id)
);

INSERT INTO department
VALUES
(1,"cooking"),
(2,"management"),
(3,"cleaning"),
(4,"reception");

INSERT INTO staff
VALUES
(101,"Mohit",15000,21,1),
(102,"Shaksham",12000,23,2),
(103,"Pooja",16000,19,2),
(104,"Mehtab",25000,27,3),
(105,"Aman",15500,28,3),
(106,"Shubham",17000,29,4);

-- 4. Display staff members whose salaries fall between ₹25,000 and ₹50,000.

SELECT *
FROM staff
WHERE salary between 25000 AND 50000;



-- 6. Display staff members belonging to selected departments using IN.
SELECT *
FROM staff
WHERE dept_id=3;

-- 7. Display unique staff designations using DISTINCT.
SELECT DISTINCT dept_name
FROM department;

-- 8. Count the number of staff members in each department using GROUP BY and COUNT().
SELECT dept_id, COUNT(staff_id)
FROM staff
GROUP BY dept_id;

-- 9. Display the maximum and minimum salary using MAX() and MIN().
SELECT MAX(Salary),MIN(Salary)
FROM staff;

-- 10. Update the salary of a staff member.
UPDATE staff
SET Salary=20000
WHERE staff_id=102;


-- 11. Display the final staff records using SELECT with appropriate column aliases.
SELECT staff_id as ID, name as Name, Salary , age as Age, dept_id as Dept_ID
From staff;
