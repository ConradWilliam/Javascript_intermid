CREATE DATABASE moodle;

--@Block
USE moodle;

--@Block
CREATE TABLE Students(  
      Student_No INT PRIMARY KEY AUTO_INCREMENT,
      Student_Name VARCHAR(20) ,
      Course VARCHAR(50),
        Student_Name VARCHAR(20), 
        Date_of_Birth VARCHAR(20)
) ;
--@Block
CREATE TABLE Grades( 
    Marks_id INT PRIMARY KEY AUTO_INCREMENT,
    Course VARCHAR(50),
    Marks INT,
    Student_No INT 
    
) ;

--@Block
DROP TABLE students;

--@Block
ALTER TABLE Grades ADD FOREIGN KEY (Student_No) REFERENCES Students(Student_No);

--@Block
INSERT INTO students (Student_Name, Course)
VALUES ("Mabira Conrad" ,"Computer Science");

--@Block
INSERT INTO students (Student_Name, Course)
VALUES ("Muweresa" ,"Econ and Stat");

--@Block
INSERT INTO students (Student_Name, Course)
VALUES ("Mafabi" ,"Social Works");


--@Block
INSERT INTO Grades (Course, Marks, Student_No)
VALUES ("Computer Science", 98, 1);

--@Block
INSERT INTO Grades (Course, Marks, Student_No)
VALUES ( "Econ and Stat", 78, 2);

--@Block
INSERT INTO Grades (Course, Marks, Student_No)
VALUES ( "Social Works", 67, 3);


--Exercise--
--@Block--Select all columns from the "students" table.
SELECT * FROM students;

--@Block--Alter the "grades" table to add a column "teacher" of data type varchar(50).
ALTER TABLE Grades ADD teacher VARCHAR(50);

--@Block--Update the "grades" table to set the value of the "teacher" column to "Mr. Smith" for all rows
UPDATE Grades SET teacher = 'Mr. Smith';

--@Block--Delete all rows from the "grades" table where the grade is less than 60.
DELETE FROM Grades WHERE Marks < 60;

--@Block--Drop the "grades" table.
DROP TABLE Grades;

--@Block--Insert a new row into the "students" table with values for "name" and "date_of_birth".
INSERT INTO Students (Student_Name, Date_of_Birth) VALUES ('John Doe', '2005-05-05');

--@Block--Select all rows from the "students" table where the "name" column contains the string "John".
SELECT * FROM Students WHERE Student_Name LIKE '%John%';

--@Block--Select all rows from the "students" table where the "date_of_birth" column is between '2000-01-01' and '2010-12-31', ordered by the "name" column in descending order.
SELECT * FROM Students WHERE Date_of_Birth BETWEEN '2000-01-01' AND '2010-12-31' ORDER BY Student_Name DESC;

--@Block--Select all rows from the "grades" table where the "subject" column contains the string "Math".
SELECT * FROM Grades WHERE Course LIKE '%Math%';

--@Block--Set the "Student_No" column of the "students" table as the primary key.
ALTER TABLE Students ADD PRIMARY KEY (Student_No);

--@Block--Set the "student_id" column of the "grades" table as the foreign key referencing the "Student_No" column of the "students" table.
ALTER TABLE results_db.Grades ADD FOREIGN KEY (Student_Name) REFERENCES Students(Student_Name);

--@Block--Use a join to select the "name" and "subject" columns from the "students" and "grades" tables respectively, where the "grade" column in the "grades" table is greater than or equal to 80, using an equi join.
SELECT Students.Student_Name, Grades.Course
FROM Students
INNER JOIN Grades ON Students.Student_Name = Grades.Student_Name
WHERE Grades.Marks >= 80;

--@Block--Use a join to select the "name" and "subject" columns from the "students" and "grades" tables respectively, where the "grade" column in the "grades" table is less than 60, using a left outer join.
SELECT Students.Student_Name, Grades.Course
FROM results_db.Students
LEFT JOIN results_db.Grades ON Students.Student_Name = Grades.Student_Name
WHERE Grades.Marks < 60;

--@Block--Use a join to select the "name" and "subject" columns from the "students" and "grades" tables respectively, where the "subject" column in the "grades" table contains the string "Science", using a natural join.
SELECT Student_Name, Course
FROM Students
NATURAL JOIN moodle;







