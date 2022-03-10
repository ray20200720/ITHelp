<Query Kind="Statements" />

var list = new List<int>() {68,50,15,55,13,
                            0,81,29,40,10,
                            9,64,12,74,90,
                            25,4,77,53,42,
                            49,31,26};
//var query = list.Take(5);
//var query = list.OrderBy(l => l).Take(5);
//var query = list.OrderBy(l => l).Skip(5);
var pageCnt = 2;
var pageRows = 5;
var query = list.Skip((pageCnt - 1)* pageRows).Take(pageRows);
query.Dump();