<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SapeMusic</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- tabs -->
<script type="text/javascript" src="layout/scripts/jquery.ui.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $("#tabcontainer").tabs({
        event: "click"
    });
});
</script>
<!-- / tabs -->
<script type="text/javascript" src="layout/scripts/jquery-photostack.js"></script>
<!-- coinslider -->
<script type="text/javascript" src="layout/scripts/jquery-coin-slider.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $('#portfolioslider').coinslider({
        width: 480,
        height: 280,
        navigation: false,
        links: false,
        hoverPause: true
    });
});
</script>
<!-- / coinslider -->


  <script type="text/javascript">
  $(document).ready(function(){
       
         $("select").change(function()
                       {
                
                $.ajax({
                       url:"getSongsByLanguageServlet",
                       data:$('select').serialize(),
                       success:function(data,status)
                       {
                             
                             $("#test").html(data);
                       }
                });
                       });
         
  });
  
  
  
  </script>
  <style>
  
  .body{
       position: absolute;
       top: -30px;
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
.logout{
   border-top: 1px solid #96d1f8;
   background: #2a465c;
   background: -webkit-gradient(linear, left top, left bottom, from(#4ab0c2), to(#2a465c));
   background: -webkit-linear-gradient(top, #4ab0c2, #2a465c);
   background: -moz-linear-gradient(top, #4ab0c2, #2a465c);
   background: -ms-linear-gradient(top, #4ab0c2, #2a465c);
   background: -o-linear-gradient(top, #4ab0c2, #2a465c);
   padding: 10px 20px; 
   -webkit-border-radius: 0px;
   -moz-border-radius: 0px;
   border-radius: 0px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0; 
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: #000000;
   font-size: 15px;
   font-family: Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
    position: absolute;
       top: 60px;
    left: 880px;
   }
.logout:hover {
   border-top-color: #782845;
   background: #782845;
   color: #cccccc;
   }
.logout:active {
   border-top-color: #1b435e;
   background: #1b435e;
   }
       
  .fl_right{
                      position: absolute;
               top: 40px;
               left: 315px;
  
  
  }
   td:hover { 
       transform: scale(1.05, 1.05);
    opacity: 1;
} 
  #selectd{
  
   color: #a18d6c;
       font-family: 'Exo', sans-serif;
       font-size: 16px;
  }
  
 #test{border: none; border-collapse: collapse;}

  tr {
    text-align: center;
      
    
}

  
  select#drop {
   -webkit-appearance: button;
   -webkit-border-radius: 2px;
   -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
   -webkit-padding-end: 20px;
   -webkit-padding-start: 2px;
   -webkit-user-select: none;
   background-image: url(http://i62.tinypic.com/15xvbd5.png), -webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
   background-position: 97% center;
   background-repeat: no-repeat;
   border: 1px solid #AAA;
   color: #555;
   font-size: inherit;
   margin: 20px;
   overflow: hidden;
   padding: 5px 10px;
   text-overflow: ellipsis;
   white-space: nowrap;
   width: 300px;
   align:center;
}

 #st{

 height:25px;
width:25px;
} 
  a:hover {
    color: hotpink;
}

table{border: none; border-collapse: collapse;}
  
  </style>


</head>


<body >
<div class="body">
    <div class="wrapper col1">
  <div id="header" class="clear">
    <div class="fl_left">
      <div class="logo"><h1><a href="welcomeuser.jsp" ><img src="images/logonew.jpg"></a></h1></div>
      <p>--Music Lover Paradise--</p>
      <pre>                        <h3>Welcome ${uname}</h3></pre>
    </div>
    <div class="fl_right"><a href="welcomeuser.jsp"><img src="images/demo/gui.jpg" alt="" /></a></div>
  </div>
</div>

<!-- ####################################################################################################### -->

<div class="wrapper col1">
  <div id="featured_slide"> 
    <!-- ####################################################################################################### -->
    <div id="slider">
      <ul id="categories">
        <li class="category">
          <h2>Latest hits</h2>
          <a href="http://www.imdb.com/title/tt4559006/"><img src="images/demo/image1.jpg" alt="" /></a>
          <p>Directed by 
Karan Johar   Writing Credits  
Karan Johar   ...    (story and screenplay)

Karan Johar   ...    (dialogue) &
Niranjan Iyengar     ...    (dialogue)</p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/Ae_Dil_Hai_Mushkil">Read More &raquo;</a></p>
        </li>
        <li class="category">
          <h2>Sharukh hits</h2>
          <a href="http://www.imdb.com/title/tt4535650/"><img src="images/demo/image2.jpg" alt="" /></a>
          <p>Directed by 
Rohit Shetty  Writing Credits  
Yunus Sajawal ...    (screenplay)

Farhad Samji  ...    (dialogue) (as Farhad) &
Sajid  ...    (dialogue)</p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/Dilwale_(2015_film)">Read More &raquo;</a></p>
        </li>
        <li class="category">
          <h2>Tollywood hits</h2>
          <a href="http://www.imdb.com/title/tt2631186/"><img src="images/demo/image3.jpg" alt="" /></a>
          <p>Directed by 
S.S. Rajamouli       Writing Credits  
Vijayendra Prasad    ...    (story)

S.S. Rajamouli       ...    (screenplay)

C.H. Vijay Kumar     ...    (telugu dialogue) &
Ajay Kumar    ...    (telugu dialogue)</p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/Baahubali:_The_Beginning">Read More &raquo;</a></p>
        </li>
        <li class="category">
          <h2>Vijay hits</h2>
          <a href="http://www.imdb.com/title/tt3801314/"><img src="images/demo/image4.jpg" alt="" /></a>
          <p>Directed by 
A.R. Murugadoss      Writing Credits (in alphabetical order)  
A.R. Murugadoss      Cast (in credits order)  
Joseph Vijay  Joseph Vijay  ...    
Kathiresan / Jeevanantham</p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/Kaththi">Read More &raquo;</a></p>
        </li>
        <li class="category">
          <h2>Amitabh hits</h2>
          <a href="https://en.wikipedia.org/wiki/Amitabh_Bachchan"><img src="images/demo/image5.jpg" alt="" /></a>
          <p>Director: Aniruddha Roy Chowdhury
Writers: Shoojit Sircar (story), Aniruddha Roy Chowdhury (story) | 3 more credits »
Stars: Tapsee Pannu, Kirti Kulhari, Andrea Tariang </p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/Pink_(2016_film)">Read More &raquo;</a></p>
        </li>
        <li class="category">
          <h2>Hollywood hits</h2>
          <a href="http://marvel.com/avengers_movie/"><img src="images/demo/image6.jpg" alt="" /></a>
          <p>Director: Joss Whedon
Writers: Joss Whedon, Stan Lee (based on the Marvel comics by) | 1 more credit »
Stars: Robert Downey Jr., Chris Evans, Mark Ruffalo |</p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/The_Avengers_(2012_film)">Read More &raquo;</a></p>
        </li>
        <li class="category">
          <h2>Brave</h2>
          <a href="http://www.imdb.com/title/tt1217209/"><img src="images/demo/image7.jpg" alt="" /></a>
          <p>Directed by 
Mark Andrews  
Brenda Chapman       
Steve Purcell ...    (co-director) Writing Credits  
Brenda Chapman       ...    (story by)

Mark Andrews  ...    (screenplay) &
Steve Purcell ...    (screenplay) and
Brenda Chapman       ...    (screenplay) &
Irene Mecchi  ...    (screenplay)</p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/Brave_(2012_film)">Read More &raquo;</a></p>
        </li>
        <li class="category">
          <h2>Romantic hits</h2>
          <a href="http://www.imdb.com/title/tt1570728/"><img src="images/demo/image8.jpg" alt="" /></a>
          <p>Directors: Glenn Ficarra, John Requa
Writer: Dan Fogelman
Stars: Steve Carell, Ryan Gosling, Julianne Moore</p>
          <p class="readmore"><a href="https://en.wikipedia.org/wiki/Crazy,_Stupid,_Love">Read More &raquo;</a></p>
        </li>
      </ul>
      <a class="prev disabled"></a> <a class="next disabled"></a>
      <div style="clear:both"></div>
    </div>
    <!-- ####################################################################################################### --> 
  </div>
</div>
<!-- ####################################################################################################### -->
<center>
<!-- <form action="/"></form> -->
<div id="selectd">

       Choose Language <select name="language"id="drop">
                     <option value="select" >--select--</option>
                     <option value="hindi">Hindi</option>
                     <option value="english">English</option>
                     <option value="telugu">Telugu</option>
                     <option value="tamil">Tamil</option>
              </select> <br>
              </div>
              </center>
              
<div id="test">
              <table cellspacing="0" cellpadding="0" >
                     
                     <c:forEach var="song" items="${entirelistdb}">
                           <tr>
                                  <!--  <td><input type="radio" name="songname"></td>-->
                                
                                 <td>${song.songname}<br>
                                     ${song.artist}<br>
                                     ${song.movie}<br>
                                     ${song.genre}<br>
                                     ${song.language}</td>
                                 <td > <div id="st"><a href="play.jsp?name=${song.file}"><img src="images/${song.image}"></a> </div></td>
                                 <br>

                           </tr>
                     </c:forEach>
              </table>
</div>
</div>
<form action="LogoutServlet">
<div class="logout">
<input type="submit" value="Logout"></div>
</form>

</body>
</html>
