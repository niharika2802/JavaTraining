<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.java.mphasis.jsp.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Project</title>
</head>
<body>
<%
String user=request.getParameter("username");
String pwd=request.getParameter("pass");
Connection con = ConnectionHelper.getConnection();
String cmd="select * from libusers where "+
		 "UserName=?  and Password = ?";
PreparedStatement pst=con.prepareStatement(cmd);
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next()){
	session.setAttribute("user",user);
%>
	<jsp:forward page="Menu.jsp"/>
<%	
}
else {
	out.println("Invalid Credentials...");
%>
	<jsp:include page="login.html"/>
<%	
}
	%>
</body>
</html>