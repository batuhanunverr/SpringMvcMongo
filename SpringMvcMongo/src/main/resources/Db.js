
> use mydb

> dbo.mycollection.insertMany( [
	 { "id" : "1", "telnumber" : "5344338125" , "name" : "Batuhan Unver" }, 
	    { "id" : "2", "telnumber" : "53282727" ,"name" : "Tuba Unver" }
	   
] )

> db.mycollection.find()