/* 	Date: 2021/11/17
 * 	Title: SQL Server - NUMERIC
 *  Usage:
 * 		NUMERIC (5, 0);
 *  Description:
 *  	decimal[ ( p[ , s] ) ] 和 numeric[ ( p[ , s] ) ]
 *		p為固定有效位數和s為小數位數。
 *  	NUMERIC (5, 0); 表示固定有效位數為5位,小數位數為0位
 * 		
 */


DECLARE @Qty NUMERIC (5, 0);
SELECT @Qty = 12345;
SELECT @Qty

DECLARE @Qty NUMERIC (5, 0);
SELECT @Qty = 123456; -- SQL 错误 [8115] [S0008]: Arithmetic overflow error converting int to data type numeric.
SELECT @Qty

--四捨五入
DECLARE @Qty NUMERIC (5, 0);
SELECT @Qty = 123.45; 
SELECT @Qty --輸出123
SELECT @Qty = 123.55; 
SELECT @Qty --輸出124  

DECLARE @Qty1 NUMERIC (5, 1), @Qty2 NUMERIC (5, 1);
SELECT @Qty1 = 123.45, @Qty2=123.33 ; 
SELECT @Qty1, @Qty2;

SELECT @Qty = COUNT(DISTINCT DOC_SET_NUMBER)  FROM HPEDI.dbo.[PAK.PAKComn]
SELECT @Qty

DECLARE @Qty1 INT, @Qty2 INT
SELECT @Qty1=1, @Qty2=2
--SET @Qty1 = 1
--SET @Qty2 = 2
SELECT @Qty1 + @Qty2 AS SUM