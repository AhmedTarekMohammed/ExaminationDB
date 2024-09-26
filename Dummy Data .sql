

use ExaminationDB;
go

USE ExaminationDB;

-- Insert dummy data into Course table
INSERT INTO Course ( course_name, description, min_degree, max_degree, duration) VALUES
( 'C#', 'high level programming language', 60, 100, 36),
( 'OOP', 'Basic OOP principles', 60, 100, 36),
( 'HTML5', 'Advanced HTML5 ', 60, 100, 36),
('JavaScript', 'Basic Browser/ client side Tech', 60, 100, 40);

-- Insert dummy data into Instructor table
INSERT INTO Instructor ( ins_name, phone, address, training_manager) VALUES
( 'Ahmed Osman', '01512345899', 'Minya', NULL),
( 'Ahmed Do', '01012345678', 'Minya', 1),
( 'Mohammed O', '01187654321', 'Fauym', 2),
( 'Aya', '01223456789', 'benisueif', 2);

-- Insert dummy data into InstructorTeachCourse table
INSERT INTO InstructorTeachCourse (course_id, instructor_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert dummy data into Options table
INSERT INTO Options ( option_text) VALUES
('True'),
('False'),
( '4'),
( 'Paris'),
('Water Evaoprates from Sea and then condenstates in sky and it rains back');

--update Options 
--set option_text='Paris' where option_id=4;

SET IDENTITY_INSERT Options ON;

-- Optionally, add more options if needed
INSERT INTO Options (option_id, option_text) VALUES
(6, 'Photosynthesis is the process by which green plants and some other organisms use sunlight to synthesize foods with the help of chlorophyll');

SET IDENTITY_INSERT Options OFF;

-- Insert dummy data into QuestionsPool table
INSERT INTO QuestionsPool ( question_body, question_type, degree, correct_answer) VALUES
( 'What is 2+2?', 'mcq', 10, 3),
( 'The earth is flat.', 'true_false', 5, 2),
( 'Describe the water cycle.', 'text_question', 20, 5);


----------------
SET IDENTITY_INSERT QuestionsPool ON;
-- Insert more dummy data into QuestionsPool table

INSERT INTO QuestionsPool (question_id, question_body, question_type, degree, correct_answer) VALUES
(4, 'What is the capital of France?', 'mcq', 10, 4), -- Assuming option 4 corresponds to 'Paris'
(5, 'The sun rises in the east.', 'true_false', 5, 1), -- Assuming option 1 corresponds to 'True'
(6, 'Explain the process of photosynthesis.', 'text_question', 25, 6); -- Assuming option 6 corresponds to a predefined text answer
SET IDENTITY_INSERT QuestionsPool OFF;

---------------------
-- Insert dummy data into Exam table
INSERT INTO Exam ( exam_type, exam_degree, allowance_option) VALUES
( 'normal_exam', 100, 1),
('corrective_exam', 100, 0);

-- Insert dummy data into Students table
INSERT INTO Students ( student_name, NID, phone, age, gender, military_status) VALUES
('Ahmed Tarek' ,2970927,'01025128390',26,'M','Completed'),
('Khaled Mohammed' ,3211234,'01686228390',24,'M','Exempted'),
('Nourhan Hamdy' ,3020810,'01025128390',26,'F',''),
( 'Mother of Dragons', 123456789, '01534567890', 22, 'F', 'NA'),
( 'Mostafa Essam', 987654321, '01256789212', 25, 'M', 'Completed'),
( 'Mohammed Amin', 456789123, '01067891123', 24, 'M', 'Exempted'),
( 'Ahmed Gomma ', 546789321, '01167890123', 23, 'M', 'Exempted'),
( 'Ali Moses', 654789312, '01067890123', 23, 'M', 'Completed');

UPDATE Intake
SET intake_name = '4M R1 2024'
WHERE intake_id = 1;


-- Insert dummy data into Intake table
INSERT INTO Intake ( intake_name) VALUES
( '4M R1 2024'),
( '4M R2 2024'),
( '4M R3 2024'),
( '4M R1 2025'),
( '4M R2 2025');




-- Insert dummy data into Branch table
INSERT INTO Branch ( branch_name) VALUES
( 'BeniSeuif'),
( 'CairoUni'),
( 'Smart Village'),
( 'Menoufia'),
( 'Mansoura'),
( 'Benha');

-- Insert dummy data into Track table
INSERT INTO Track ( track_name) VALUES
( ' .NET '),
( 'MEARN Stack'),
( 'MEAN Stack'),
( 'Social Media'),
( 'Power BI'),
( '2D'),
( 'DevOPs');

-- Insert dummy data into Department table
INSERT INTO Department ( dept_name,branch_id) VALUES

( 'OpenSource',2),
( 'AI',2),
( 'HR',1),
( 'PR',2);

--UpdATE
update Department
set branch_id=1 where dept_id=1;

-- Insert dummy data into StudentTakeExam table
INSERT INTO StudentTakeExam (std_ex_id, student_id, exam_id, question_id, student_answer, question_result) VALUES
(1, 1, 1, 1, '3', 10),
(2, 2, 1, 2, 'False', 5),
(3, 3, 1, 3, 'Water cycle is ...', NULL);

-- Insert dummy data into InstructorSelectedStudents table
INSERT INTO InstructorSelectedStudents (selected_std_id, student_id, instructor_id, exam_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1);

-- Insert dummy data into ExamQuestions table
INSERT INTO ExamQuestions (ex_ques_id, exam_id, question_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- Insert dummy data into CourseExam table
INSERT INTO CourseExam (course_exam_id, exam_id, course_id) VALUES
(1, 1, 1),
(2, 2, 2);

-- Insert dummy data into InstructorMakeExam table
INSERT INTO InstructorMakeExam (exam_id, instructor_id, start_time, end_time, exam_date, year) VALUES
(1, 1, '09:00', '11:00', '2024-07-01', 2024),
(2, 2, '13:00', '15:00', '2024-07-02', 2024);

-- Insert dummy data into InstructorChoosesQuestion table
INSERT INTO InstructorChoosesQuestion (question_id, instructor_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert dummy data into DepartmentTracks table
INSERT INTO DepartmentTracks (track_id, dept_id) VALUES
(1, 1),
(2, 2);

-- Insert dummy data into CourseQuestions table
INSERT INTO CourseQuestions (question_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert dummy data into StudentIntake table
INSERT INTO StudentIntake (std_intake_id, student_id, intake_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);

-- Insert dummy data into StudentBranch table
INSERT INTO StudentBranch (student_id, branch_id) VALUES
(1, 1),
(2, 2),
(3, 1);

-- Insert dummy data into StudentTrack table
INSERT INTO StudentTrack (student_id, track_id) VALUES
(1, 1),
(2, 2),
(3, 1);

-- Insert dummy data into TrackCourses table
INSERT INTO TrackCourses (track_cr_id, course_id, track_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);

INSERT INTO Classes (course_id,instructor_id,Year) values 
(1,2,2024),
(2,3,2024);
