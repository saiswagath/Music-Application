<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 
 .heading{
  		background:#000000;
  		color:#ffffff;
  		font-size:24px;
  		font-family: 'Arial' , sans-serif;
  		padding: 15px;
  		height:80px;
  	}
  	.welcome a,h5{  
  		text-decoration: none;
  	    color:#ffffff;
  	}
  	.logoimage{
  	 float:left;
  	 display:inline;
  	}
  	/* .logoimage img{
  		height:70px;
  		width:70px;
  	} */
  	.welcome,h5{
  	position: absolute;
       top: 0px;
           left: 430px;
  text-color: #DC143C;
  		text-align:center;
  		/* padding:20px 20px; */
  		
  	}
#top{

position: absolute;
       top: -20px;
       left: -20px;
       right: -40px;
       bottom: -40px;
       width: auto;
       height: auto;
     background-image: url("images/background/concert.jpg");
       background-size: cover;
}
.logo{

 font-size: 40px;
font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
}      
  
</style>
</head>
<body id="top" >
<div class="heading">
 <div class="logoimage">

 
 <!-- 	<a href="welcomeuser.jsp"><img src="./images/logo1.png" /></a> -->
  <!--  <div class="logo"><h1><a href="welcomeuser.jsp" ><img src="images/logonew.jpg"></a></h1></div>
  -->
 	 <FORM><INPUT Type="button" VALUE="Back" onClick="history.go(-1);return true;"></FORM>
  </div>
  <div class="welcome">

  <!-- 	<strong><b><a href="welcomeuser.jsp">SapeMusic</a></b></strong> -->
  							<!-- <pre><h5>where music does the talking</h5></pre>
 -->
  <div class="logo"><a href="welcomeuser.jsp" ><img src="images/logonew.jpg"></a></div>
  </div>
  
 </div> 
 <br>
 <br>
</body>
</html>