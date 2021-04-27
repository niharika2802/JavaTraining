<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account Page</title>
<style type="text/css">
body{
background-image:url(file:///C:/Users/NIHARIKA%20KOTTURI/Downloads/book2.jpg);
background-repeat: no repeat;
background-size: cover;
}
.button_1{
 border-radius: 100px;
  height:25px;
  background:green;
  border:0;
  padding-left: 20px;
  padding-right:20px;
  color:white;
  border: 0;
  margin-top: 1%;
  margin-left:15%;
	
	cursor: pointer;
	font-size: 20px;
	position: absolute;
	
}


.aone    
{ margin-top: 6px; margin-left: 0px; height: 38px; width:650px; color: #d56d2d;}     
.atwo   
{ margin-top: 4px; margin-left: 10px;height: 30px; width:150px; color: #7464aa;}
</style>
</head>
<body>
<br/>
<%

  String user=(String)session.getAttribute("user");
  out.println("<h3>Welcome! to Central Library<h3> <b>"   +user+"</b>");
 
  
%>
<br/><br/>
<div class="logout">

<button class="button_1" value="Logout" type="submit"onclick="window.location='login.html'">LOGOUT</button>

</div>
</br></br></br></br></br>
    <table class="center" border="2" cellpadding="10" cellspacing="0" id="HeaderTable">
                            <tr>
                                <td id="HeaderTableStep2" style="background-color:#feffc9">
                                   <a href="AccountDetails.jsp">Account Details</a> 
                                </td>
                                <td id="HeaderTableStep3" style="background-color:#feffc9">
                                    <a href="Search.jsp">Search / Issue</a>
                                </td>
                                <td id="HeaderTableStep4" style="background-color:#feffc9">
                                   <a href="Return.jsp">Return</a>
                                </td>
                                <td id="HeaderTableStep5" style="background-color:#feffc9">
                                    <a href="History.jsp">History</a>
                                </td>
                            </tr>
                        </table>



</body>