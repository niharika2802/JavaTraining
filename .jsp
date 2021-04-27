<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
<form action="AccountDetails.jsp" method="get">
<p> Select Search Criteria :</p>
<br/>
<br/>
<input type="radio" name="lib" value="1"> By Book id
<br>
<br>
<input type="radio" name="lib" value="2"> By Department
<br>
<br>
<input type="radio" name="lib" value="3">By Book Name
<br>
<br>
<input type="radio" name="lib" value="4">By Author Name
<br>
<br>
<input type="radio" nmae="lib" value="5">All Books
<br>
<br>
<p> Insert Search Value here:</p>
<input type="text" name ="search">
<br>
<br> <input type="submit" value="Search">
</form>

</body>
</html>