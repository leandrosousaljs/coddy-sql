/* Challenge

Available tables and columns:

people: name, age, status
Put parenthesis in the right place so that the query will find all retired people who are either over 30 years old OR have a seeking status. */

SELECT * FROM people
WHERE (age > 30 OR status = 'seeking') AND status = 'retired'
