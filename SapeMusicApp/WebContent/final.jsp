<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <jsp:include page="headerr.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#table{
color:white;
align:center;
padding-left: 0px;
margin-left:350px;
}

</style>
</head>
<body >


	<table border="1" id="table">
        <tr>
       <h1> 
			<th>Songname</th>
			<th>Artist</th>
			<th>Language</th>
			<th>Movie</th>
			<th>Genre</th>
			</h1>
		</tr>
		
		<c:forEach var="song" items="${songList}">
			<tr>
				
				<td>${song.songname}</td>
				<td>${song.artist}</td>
				<td>${song.language}</td>
				<td>${song.movie}</td>
				<td>${song.genre}</td>
				<td><div class="button"><input type="button" value="Listen"  onClick="window.location='play.jsp?name=${song.file}'" ></div></td>
                           
			</tr>
		</c:forEach>
	
	</table>
 <jsp:include page="footer.jsp" />

</body>
</html>