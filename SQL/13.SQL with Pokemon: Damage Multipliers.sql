/*
Using the following tables, return the pokemon_name, modifiedStrength and element of the Pokemon whose strength, after taking these changes into account, is greater than or equal to 40, ordered from strongest to weakest.

pokemon schema

-id
-pokemon_name
-element_id
-str
-multipliers schema

-id
-element
-multiplier
*/

--其实挺简单的，但是在编程过程中犯了一个小错误，导致程序一直出错。而且因为之前的编程中没有注意，所以一直debug不出来。

SELECT a.pokemon_name,b.element, a.str*b.multipliers AS modifiedStrength
FROM pokemon a
INNER JOIN multipliers b
ON a.element_id = b.id
WHERE a.str * b.multiplier >= 40
ORDER BY modifiedStrength DESC;
