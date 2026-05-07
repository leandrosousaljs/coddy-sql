/* Challenge

Available tables and columns:
items: id

A quartic function is defined:

f(x) = ax4+bx3+cx2+dx+e

Let's define the constant parameters:

a = 3
b = 5
c = 0.9
d = 2.2
e = 1
Fetch the ids and the quartic function where x is the id, and rename the column to quartic

Don't use built-in functions like POWER()!

To calculate power of 2 or power of 3 use the following example:

a*a
-- power of 2

a*a*a
-- power of 3 */

SELECT id, 3*id*id*id*id + 5*id*id*id + 0.9*id*id + 2.2*id + 1 as quartic
FROM items;
