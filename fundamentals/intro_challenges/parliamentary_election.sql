/* Challenge

Available tables and columns:

ministers: seat, is_next_gov, is_spoke_bad
Every minister that sits on an even numbered sit in the government is considered a "safe" minister. Your job is to return all of the "safe" ministers seats that want to continue serving in the next government while excluding any minister who spoke a bad word.

The result should contain only the relevant sits.

Before starting to solve the challenge take a look at the table data. It is not clean. The columns is_next_gov and is_spoke_bad contain ones and zeros and also yes's and no's. */

SELECT seat
FROM ministers
WHERE seat % 2 = 0
AND (is_next_gov IS TRUE OR is_next_gov = 'yes')
AND (is_spoke_bad IS FALSE OR is_spoke_bad = 'no');
