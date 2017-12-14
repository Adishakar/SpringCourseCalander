<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		  <style>
		.textbox
		{
			height:25px;
			width:240px;
			-moz-border-radius:7px; /* Firefox */
			-webkit-border-radius: 7px; /* Safari, Chrome */
			-khtml-border-radius: 7px; /* KHTML */
			border-radius: 7px; /* CSS3 */
		}
		td,label
		{
			padding:20px;
		}
		
		.btn
		{
			cursor:pointer; /*forces the cursor to change to a hand when the button is hovered*/
			padding:5px 25px; /*add some padding to the inside of the button*/
			background:#0450ab; /*the colour of the button*/
			border:1px solid #0bc0ef; /*required or the default border for the browser will appear*/
			/*give the button curved corners, alter the size as required*/
			-moz-border-radius: 10px;
			-webkit-border-radius: 10px;
			border-radius: 10px;
			/*give the button a drop shadow*/
			-webkit-box-shadow: 0 0 4px rgba(0,0,0, .75);
			-moz-box-shadow: 0 0 4px rgba(0,0,0, .75);
			box-shadow: 0 0 4px rgba(0,0,0, .75);
			/*style the text*/
			color:#f3f3f3;
			font-size:1.1em;
		}
		.btn:hover, .btn:focus
		{
			background-color :#012045; /*make the background a little darker*/
			/*reduce the drop shadow size to give a pushed button effect*/
			-webkit-box-shadow: 0 0 1px rgba(0,0,0, .75);
			-moz-box-shadow: 0 0 1px rgba(0,0,0, .75);
			box-shadow: 0 0 1px rgba(0,0,0, .75);
		}
		.divv
		{
			padding:10px;
		}
		
      </style>
	</head>
	<title>Search Course</title>
<body bgcolor="#dddddd">

<%@ include file="menu.html" %><br/><br/>
<form  method="POST" action="searchCourse">

Search:<input type=text, value=""></br>
<div align="center">

<table border="1" cellpadding="5">
            <caption><h2>Trainee Details</h2></caption>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Experience</th>
                <th>Phone</th>
            </tr>
            
                <tr>
                    <td><c:out value="${model.name}" /></td>
                    <td><c:out value="${model.email}" /></td>
                    <td><c:out value="${model.exp}" /></td>
                    <td><c:out value="${model.phone}" /></td>
                </tr>
            
        </table>		
	</form>
	</body>
</html>