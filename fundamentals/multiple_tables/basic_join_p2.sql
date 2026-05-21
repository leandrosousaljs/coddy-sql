/* Challenge

Available tables and columns:
grades: course_id, student_id, grade
students: id, name

Calculate for each student their average grade and return the name and the average grade for each.

Name the columns student, grade.

Round the average to 2 decimal places and sort the result by the average grade in ascending order. */

SELECT name AS student, ROUND(AVG(grade), 2) AS grade
FROM students, grades
WHERE students.id = grades.student_id
GROUP BY name
ORDER BY grade;
