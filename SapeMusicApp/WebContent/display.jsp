
<%@page import="java.util.ArrayList"%><%@page import="com.app.bean.Song" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display form</title>
<style>
table {border: none; border-collapse: collapse;}
tr:hover {background-color: #f5f5f5}
  tr {
    text-align: center;
}

.button{
   border-top: 1px solid #1e5170;
   background: #2474a6;
   background: -webkit-gradient(linear, left top, left bottom, from(#4ab0ab), to(#2474a6));
   background: -webkit-linear-gradient(top, #4ab0ab, #2474a6);
   background: -moz-linear-gradient(top, #4ab0ab, #2474a6);
   background: -ms-linear-gradient(top, #4ab0ab, #2474a6);
   background: -o-linear-gradient(top, #4ab0ab, #2474a6);
   padding: 4px 8px;
   -webkit-border-radius: 0px;
   -moz-border-radius: 0px;
   border-radius: 0px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: #030103;
   font-size: 12px;
   font-family: 'Lucida Grande', Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border-top-color: #28597a;
   background: #28597a;
   color: #f2e4f2;
   }
.button:active {
   border-top-color: #1b435e;
   background: #1b435e;
   }
#link1{

    font-family: "Trebuchet MS", "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Tahoma, sans-serif;
       font-size: 20px;
       font-style: normal;
       
}
#link2{

    font-family: "Trebuchet MS", "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Tahoma, sans-serif;
       font-size: 20px;
       font-style: normal;
       
}
#link3{

    font-family: "Trebuchet MS", "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Tahoma, sans-serif;
       font-size: 20px;
       font-style: normal;
       
}
#link1:hover {
       
       
       font-weight: bold;
       color: #6D7781;
}
#link2:hover {
       
       
       font-weight: bold;
       color: #6D7781;
}

#link3:hover {
       
       
       font-weight: bold;
       color: #6D7781;
}





</style>


</head>
<center>

<a href="moviename.jsp" id="link1">Search By Movie Name</a><br>
<a href="artistname.jsp"id="link2">Search By Artist Name</a><br>
<a href="genre.jsp"id="link3">Search By Genre Name</a><br>
<br>
<br>

</center>
<table cellspacing="30" cellpadding="10" border="1">
       <div class="tbl-header">
         <tr>
         
                      <th>Songname</th>
                     <!-- <th>Artist</th>
                     <th>Language</th>
                     <th>Movie</th>
                     <th>Genre</th> -->
                      <th>Play Song</th>
                     
              </tr>
       </div>
       <div class="tbl-content">

              <c:forEach var="song" items="${languagelist}">
                     <tr>
                         <td>Song: ${song.songname}<br>
                                     Artist: ${song.artist}<br>
                                     Movie: ${song.movie}<br>
                                    Genre: ${song.genre}<br>
                               
                                     ${song.language}
                                     <br>
                                     <br>
                                     <br>
                                     
                                     <br></td>
                                 <td > <div id="st"><a href="play.jsp?name=${song.file}"><img src="images/${song.image}"></a> </div></td>
                                 <br>
                           
                     </tr>
              </c:forEach>
         </div>
       </table>
       <form action="play.jsp" >

</form>

</body>
</html>

