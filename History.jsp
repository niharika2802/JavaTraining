<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.java.mphasis.jsp.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
table{
background-color:#d2fff5;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Menu.jsp"/>
<%
String user=(String)session.getAttribute("user");
Connection con = ConnectionHelper.getConnection();
String sql = " SELECT * FROM TransReturn WHERE Username = ?"; 			
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,user);			
ResultSet rs = ps.executeQuery();

out.println("<table border='3'>");
out.println("<tr>");
out.println("<th>Book ID</th>");
out.println("<th>From Date</th>");
out.println("<th>To Date</th></tr>");

while(rs.next()){
	out.println("<tr><td>");
	out.println(rs.getString("BookID") + "</td>");
	out.println("<td>" +rs.getString("FromDate")); 
	out.println("<td>"+rs.getString("ToDate") + "</td></tr>");
}
out.println("</table>");
%>

</body>
</html>