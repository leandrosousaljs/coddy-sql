/* Challenge

Available tables and columns:
grades: course_id, student_id, grade
students: id, name

Create a query that fetches student_name, course_id, student_id and grade in one table. Order the result by grade in ascending order. */

SELECT name AS student_name, course_id, student_id, grade
FROM students, grades
WHERE students.id = grades.student_id
ORDER BY grade;
