/* Challenge

Available tables and columns:
people: name, age, status

Fetch all of the people who meet one of the following criteria:

The age is above 30 and the status either is seeking or retired
The age is under 50 and the status either is employed or unemployed
The age is between 20 and 28 (including 20 and 28) */

SELECT * FROM people
WHERE (age > 30 AND (status = 'seeking' OR status = 'retired'))
OR (age < 50 AND (status = 'employed' OR status = 'unemployed'))
OR (age >= 20 AND age <= 28)
