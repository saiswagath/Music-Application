<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
h4{
	background-color:#ffffff
color:aqua;
position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
 /*  padding: 1rem; */
  background-color: #efefef;
  text-align: center;
}


</style>
</head>
<body>
<h4>

contact us: <%= application.getInitParameter("mailid") %>
</h4>
</body>
</html>