#pdsql7
create database basic_sql ;
use basic_sql;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade VARCHAR(5),
    email VARCHAR(100) UNIQUE,
    marks INT,
    location VARCHAR(100)
);


INSERT INTO students (student_id,first_name, last_name, age, grade, email, marks, location)
VALUES
    (1,'John', 'Doe', 20, 'A', 'john.doe@example.com', 85, 'New York'),
    (2,'Jane', 'Smith', 22, 'B', 'jane.smith@example.com', 78, 'Los Angeles'),
    (3,'Mike', 'Johnson', 21, 'C', 'mike.johnson@example.com', 92, 'Chicago'),
    (4,'Emily', 'Williams', 19, 'A', 'emily.williams@example.com', NULL, 'San Francisco'),
    (5,'Chris', 'Anderson', 23, 'B', NULL, 75, 'Seattle'),
    (6,'Sara', 'Brown', 20, 'A', 'sara.brown@example.com', 88, NULL),
    (7,'Daniel', 'Miller', 22, 'C', 'daniel.miller@example.com', 94, 'Boston'),
    (8,'Amy', 'Taylor', NULL, 'B', 'amy.taylor@example.com', 82, 'Denver'),
    (9,'Mark', 'Davis', 21, 'A', 'mark.davis@example.com', 90, 'Houston'),
    (10,'Jessica', 'Clark', 24, 'C', NULL, 79, 'Miami'),
    (11,'Kevin', 'Moore', 20, NULL, 'kevin.moore@example.com', 86, 'Dallas'),
    (12,'Amanda', 'White', 22, 'B', 'amanda.white@example.com', 91, 'Atlanta');





#select all data from table 
-- select <column names > or <*> from <table name >; 

select * from students;

select first_name,location from students;

-- by using conditions we can retrive the data here we are using where clause :

select first_name, age, marks from students
where first_name ="Mike";

select * from students
where location = "New york";


#select location column only from table students
select location from students;

# Select first_name, last_name  and email columns from students 
select first_name, last_name, email from students;


#Where Clause 
select * from students 
where age = 20;

#and operator  
select * from students 
where age < 20 and grade ="A";


select * from students 
where age = 25 or age > 20;


#OR operator
select * from students 
where marks < 80 or grade =  "B";

select * from students
where student_id = 2 or student_id= 5 or student_id= 6  or student_id = 7 or student_id = 3 or student_id = 12;




#Not Operator
Select student_id, first_name ,location from students
where location = 'Denver';

Select student_id, first_name ,location from students
where not (location = 'new york');

select * from student
where student_id=2 or  student_id= 5 or student_id =6;



#In Operator:
-- we can save our time by avoiding continue use of or operator to retrive data :

select * from students
where student_id in (2,5,6,8,7,3,1);

select * from students 
where student_id = '4' or student_id = '9' or student_id = '2' or student_id='5' or student_id='7';


#Like operator:
-- special character retrive operator :
--  wild card operators (%, _)

-- start with A =  "A%"
-- ends with A = "%A"
-- A at any position = "%A%"
-- start with A and end with Y = "A%y"   

-- A is at 2nd position from start  = "_A%"
-- A is at 2nd position from end  = "%A_"

select * from students
where email  like "%com%";


select * from students
where location like "%r";

select * from students
where location like "m%i";

select * from students
where first_name like "_a%";

select * from students
where location like "%t__";



#Between and Not Between:
select * from students
where marks  between 80 and 85;

select * from students
where student_id not between 4 and 9;


select * from students
where marks in (80, 90);



