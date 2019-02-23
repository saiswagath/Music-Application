<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
isErrorPage="true"  pageEncoding="ISO-8859-1"%>
<jsp:include page="headerr.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

.body{
       position: absolute;
       top: -40px;
       left: -40px;
       right: -40px;
       bottom: -40px;
       width: 1200px;
       height: 680px;
       background-image: url("images/background/bike.jpg");
       background-size: cover;
       font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
   
}

.firsthead{

position: absolute;
       top: 60px;
       left: 100px;
       font-size: 35px;
       font-weight: 100;
       font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
       


}
.secondhead{

position: absolute;
       top: 160px;
       left:100px;
       font-size: 35px;
       font-weight: 100;
       font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
       

}


.thirdhead{

position: absolute;
       top: 260px;
       left:100px;
       font-size: 35px;
       font-weight: 100;



}




h1{

color:white;
text-align:center;
}
h2{

color:white;
text-align:center;
}
h3{

color:red;
text-align:center;
}
</style>
</head>
<body>
<div class="body">
 
<div class="firsthead">
<FORM><INPUT Type="button" VALUE="Back" onClick="history.go(-1);return true;"></FORM>
<h1>Oops ! Dead End Here </h1></div>
<div class="secondhead"><h1>Ride Back to </h1></div>
<div class="thirdhead">
<h1><a href="welcomeuser.jsp">Home Page</a></h1></div>
<jsp:include page="footer.jsp" />
</div>
</body>
</html>
