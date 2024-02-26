-- Constraints available in SQL are:
-- NOT NULL
-- UNIQUE
-- PRIMARY KEY
-- FOREIGN KEY
-- CHECK
-- DEFAULT
-- CREATE INDEX



-- NOT NULL
CREATE TABLE student(StudentID INT NOT NULL, Student_FirstName VARCHAR(20),
 Student_LastName VARCHAR(20), Student_PhoneNumber VARCHAR(20), Student_Email_ID VARCHAR(40));  
ALTER TABLE student CHANGE StudentID StudentID INT NOT NULL;  


-- UNIQUE
CREATE TABLE student(StudentID INT UNIQUE, Student_FirstName VARCHAR(20),
 Student_LastName VARCHAR(20), Student_PhoneNumber VARCHAR(20), Student_Email_ID VARCHAR(40)); 
 
CREATE TABLE student(StudentID INT, Student_FirstName VARCHAR(20), 
Student_LastName VARCHAR(20), Student_PhoneNumber VARCHAR(20), Student_Email_ID VARCHAR(40), UNIQUE(StudentID, Student_PhoneNumber));  
ALTER TABLE student ADD UNIQUE (StudentID);  

-- PRIMARY KEY
CREATE TABLE student(StudentID INT PRIMARY KEY, Student_FirstName VARCHAR(20), 
Student_LastName VARCHAR(20), Student_PhoneNumber VARCHAR(20), Student_Email_ID VARCHAR(40));  
ALTER TABLE student ADD PRIMARY KEY (StudentID);  


-- FOREIGN KEY
 CREATE TABLE employee (Emp_ID INT NOT NULL PRIMARY KEY, Emp_Name VARCHAR (40), Emp_Salary VARCHAR (40));  
 CREATE TABLE department(Dept_ID INT NOT NULL PRIMARY KEY, Dept_Name VARCHAR(40), Emp_ID INT NOT NULL, FOREIGN KEY(Emp_ID) REFERENCES employee(Emp_ID));  
 ALTER TABLE department ADD FOREIGN KEY (Emp_ID) REFERENCES employee (Emp_ID);  
 
 
 -- CHECK
CREATE TABLE student(StudentID INT, Student_FirstName VARCHAR(20), Student_LastName VARCHAR(20),
 Student_PhoneNumber VARCHAR(20), Student_Email_ID VARCHAR(40), Age INT CHECK( Age <= 15));  
CREATE TABLE student(StudentID INT, Student_FirstName VARCHAR(20), Student_LastName VARCHAR(20), 
Student_PhoneNumber VARCHAR(20), Student_Email_ID VARCHAR(40), Age INT, Percentage INT, CHECK( Age <= 15 AND Percentage > 85));  
ALTER TABLE student ADD CHECK ( Age <=15 );  


-- DEFAULT
CREATE TABLE student(StudentID INT, Student_FirstName VARCHAR(20), Student_LastName VARCHAR(20),
 Student_PhoneNumber VARCHAR(20), Student_Email_ID VARCHAR(40) DEFAULT "anuja.k8@gmail.com");  
 ALTER TABLE student ALTER Student_Email_ID SET DEFAULT "anuja.k8@gmail.com";  

-- CREATE INDEX
CREATE INDEX idx_Student ON student (StudentID, Student_PhoneNumber); 
ALTER TABLE student ADD INDEX (StudentID);  


