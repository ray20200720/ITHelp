/* 	Date: 2021/11/26
 * 	Title: SQL Server - built-in function: LEN
 * 
 * */

--Example 01
SELECT LEN('1111111111')

--Example 02
SELECT * FROM Product WHERE LEN(ProductID) > 5 