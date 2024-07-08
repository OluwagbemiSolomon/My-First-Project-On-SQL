drop database student_exam_scores;

Create database Student_exam_scores;
use student_exam_scores;

create table exam_scores(StudentID int,
	                     STUDENT_NAMES varchar(50),
                         PYTHON_scores int,
                         SQL_scores int,
                         ML_scores int,
                         TABLEAU_scores int,
                         EXCEL_scores int,
                         STUDENT_PLACE varchar(50)
                         );
                         
                         
select * from exam_scores;
insert into exam_scores values();




-- Retrieve all records
Select *
From student_exam_scores.exam_scores;

select *
from student_exam_scores.exam_scores;






-- Retrieve specific columns(e.g, student names and their SQL scores
Select Student_Names, SQL_scores
From student_exam_scores.exam_scores;

-- Find students who scored more than 80 in Python
Select Student_Names, Python_Scores
From student_exam_scores.exam_scores
where Python_Scores > 80;

-- Find students who scored exactly 100 in sql
Select Student_Names, SQL_Scores
from student_exam_scores.exam_scores
where SQL_Scores = 100;

-- Retrieve all students scores sorted by their ML scores in descending order
Select Student_Names, ML_Scores
From Student_exam_scores.exam_scores
order by ML_Scores desc;

-- Retrieve all student scores sorted by their names in ascending order
Select Student_Names, StudentID, Python_Scores, SQL_Scores, ML_Scores, Tableau_SCores, Excel_Scores
from student_exam_scores.exam_scores
order by Student_Names asc;

-- Calculate the average score in python
Select avg(python_scores)
from student_exam_scores.exam_scores;


-- Find the highest score in ML
select max(ML_Scores)
from student_exam_scores.exam_scores;

-- Select average of sql scores
select avg(sql_scores)
from student_exam_scores.exam_scores;


-- Count total number of students
select count(student_names)
from student_exam_scores.exam_scores;

-- (If there are two tables: students and scores) Retrieve student names along with their Python scores
Select Studentid, student_names,Python_scores
from student_exam_scores.exam_scores;

-- Find students who scored above the average score in ML
Select student_names, ml_scores
from student_exam_scores.exam_scores
where ML_Scores > (select avg(ml_scores) from student_exam_scores.exam_scores);

-- Classify students SQL scores into categories (HIgh, Medium, Low)
Select student_names, Sql_scores,
case
when sql_scores >= 90 then 'high'
when sql_scores >=60 then 'medium'
else 'low'
end as score_category
from student_exam_scores.exam_scores;

-- Calculate total score for each student across all subjects
Select student_names, python_scores + Sql_scores + ML_scores + Tableau_scores + Excel_scores as 'total_scores'
from student_exam_scores.exam_scores;

select *
from student_exam_scores.exam_scores;


Select *
from student_exam_scores.exam_scores;

select StudentID,STUDENT_NAMES, 
(select avg(python_scores)
from student_exam_scores.exam_scores) AS AVG_PSC
from student_exam_scores.exam_scores;

Select student_names, PYTHON_scores
from student_exam_scores.exam_scores
where PYTHON_scores >= 44.1950;








