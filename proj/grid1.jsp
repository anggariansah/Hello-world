<%-- 
    Document   : grid1
    Created on : 30 Aug, 2018, 5:16:18 AM
    Author     : Nagamani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<title>Grid</title>
<style>
#div1 {margin:10px;font-size:1.25em;align:center;}
table {border-collapse:collapse;border:1px solid #7f7f7f;align:center;}
td {border:3px solid #000000;width:50px;height:50px;text-align:center;}

</style>
</head>
<body background="discover-bg.jpg">
<center>
<h1><b>WELCOME</b></h1><br/><br/>
<h1><font size=6>You have registered successfully</font></h1></center>
<br><br><br><br>
<center>



<div id="div1">
</div>
<script>

var totalRows = 4;
var cellsInRow = 4;
var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";


    function drawTable() {
        
        // get the reference for the body
        var div1 = document.getElementById('div1');
 
        // creates a <table> element
        var tbl = document.createElement("table");
 
        // creating rows
        
         var i=0;
       for (var r = 0; r < 1; r++) {
            var row = document.createElement("tr");
            var m=0;
            for (var c = 0; c <=cellsInRow; c++) {
                var cell = document.createElement("td");
                cell.setAttribute('style', 'background-color:blue');
                var  cellText= document.createTextNode(String.fromCharCode(64+m));
                m=m+1;
                cell.appendChild(cellText);
                row.appendChild(cell);
            }           
        }
       tbl.appendChild(row);
	     
        for (var r = 0; r < totalRows; r++) {
            var row = document.createElement("tr");
	     
	     // create cells in row
           
           i=i+1;
           for(var c=0;c<1;c++){
               var cell=document.createElement("td");
               cell.setAttribute('style', 'background-color:blue');
               var cellText=document.createTextNode(i);
               cell.appendChild(cellText);
               row.appendChild(cell);
            }
            
           
             for (var c = 0; c < cellsInRow; c++) {
                var cell = document.createElement("td");
		getRandom = Math.floor(Math.random() *possible.length);
                var text="";
                for (var k = 0; k < 3; k++)
                text += possible.charAt(Math.floor(Math.random() * possible.length));

                var  cellText= document.createTextNode(text);
                
                cell.appendChild(cellText);
                row.appendChild(cell);
            }           
            
	tbl.appendChild(row); // add the row to the end of the table body
        }
    
     div1.appendChild(tbl); // appends <table> into <div1>
}
window.onload=drawTable; 

</script>
<h1>Grid Generation</h1>
</center>
</body>
</html>
