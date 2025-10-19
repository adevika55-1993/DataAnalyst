create database university;
use	university;

create table students(
student_id int primary key,
student_name varchar(50),
department_name varchar(100),
gender varchar(30),
email_id varchar(100),
course_name varchar(50),
cgpa decimal (3,2)
);

insert into students values
(101, "vijay"," computer science", " M", "vijaytvk@gmail.com", "DATA_ANALYST", 6.5),
(102, "Raghu"," computer science", " M", null, "DATA_ANALYST", 9.2),
(103, "Dhoni"," computer science", " M", "dhoni7tn@gmail.com", "FULL STACK", 5.7),
(104, "Divya"," information technology", " F", "divya44k@gmail.com", "AI", 8.3),
(105, "Uma"," computer science", " F", null, "ML", 6.8);


-- DISTINCT --
select distinct department_name from departments;

-- IS NULL OR NOT NULL --
select student_name from students where email_id is null;
select student_name from students where email_id is not null;

-- IN, BETWEEN, NOT BETWEEN --
select student_name from students where course_name in ("DATA ANALYSY", "FULL STACK", "AI");

select student_name from students where cgpa between "6" and "8";

select student_name from students where cgpa not between "6" and "8";

