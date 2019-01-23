/*
You work at a book store. It's the end of the month, and you need to find out the 5 bestselling books at your store. Use a select statement to list names, authors, and number of copies sold of the 5 books which were sold most.

books table schema

1.name
2.author
3.copies_sold
*/

SELECT *
FROM books
Order BY copies_sold DESC
LIMIT 5;
