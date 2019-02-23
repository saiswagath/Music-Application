<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    errorPage="errorpage.jsp"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class=''>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-5710c30fb566082d9fcb6e7d97ee7e3f2a326128c9f334a4231b6fd752b29965.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-d5e4bf42585b8da8c18f7d963dbfc17cd66a79aa586c9448c4de8d6952ee9d97.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-25d1423d5d6fb975e7d61832d2c061422a94963ca446583b965dfc5569147311.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="http://codepen.io/oceatoon/pen/IeqHp" />

	<script type="text/javascript">
    function call() {
        var firstpassword = document.reg.password.value;
        var secondpassword = document.reg.checkPassword.value;

        var plength = firstpassword.length;

        if (plength<5 && plength>14) {
                        alert("Password length should be between 8 and 15 Please Re Enter");
                        //document.signup.password.focus();
                        
                        return false;
        } else {

                        if (firstpassword == secondpassword) {

                                        return true;
                        } else {
                                        alert("Password Mismatch!! Please Re Enter")
                                        
                                        return false;
                        }

        }

}

    
</script>






<style class="cp-pen-styles">* {
  margin: 0;
  padding: 0;
}

body {
  background: #2E3740;
  color: #435160;
  font-family: "Open Sans", sans-serif;
}

h2 {
  color: #6D7781;
  font-family: 'Open Sans', sans-serif;
  font-size: 15px;
  font-weight: bold;
  font-size: 3.6em;
  text-align: center;
  margin-bottom: 20px;
}

a {
  color: #435160;
  text-decoration: none;
}

.login {
  width: 350px;
  position: absolute;
  top: 10%;
  left: 50%;
  margin-left: -175px;
}

input[type="text"], input[type="password"],input[type="email"] {
  width: 350px;
  padding: 20px 0px;
  background: transparent;
  border: 0;
  border-bottom: 1px solid #435160;
  outline: none;
  color: #6D7781;
  font-size: 16px;
}
input[type=checkbox] {
  display: none;
}

label {
  display: block;
  position: absolute;
  margin-right: 10px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: transparent;
  content: "";
  transition: all 0.3s ease-in-out;
  cursor: pointer;
  border: 3px solid #435160;
}

#agree:checked ~ label[for=agree] {
  background: #435160;
}

input[type="submit"] {
  background: #1FCE6D;
  border: 0;
  width: 350px;
  height: 40px;
  border-radius: 3px;
  color: #fff;
  font-size: 12px;
  cursor: pointer;
  transition: background 0.3s ease-in-out;
}
input[type="submit"]:hover {
  background: #16aa56;
  animation-name: shake;
}

.forgot {
  margin-top: 30px;
  display: block;
  font-size: 11px;
  text-align: center;
  font-weight: bold;
}
.forgot:hover {
  margin-top: 30px;
  display: block;
  font-size: 11px;
  text-align: center;
  font-weight: bold;
  color: #6D7781;
}

.agree {
  padding: 30px 0px;
  font-size: 12px;
  text-indent: 25px;
  line-height: 15px;
}

::-webkit-input-placeholder {
  color: #435160;
  font-size: 12px;
}

.animated {
  animation-fill-mode: both;
  animation-duration: 1s;
}

@keyframes shake {
  0%, 100% {
    transform: translateX(0);
  }
  10%, 30%, 50%, 70%, 90% {
    transform: translateX(-10px);
  }
  20%, 40%, 60%, 80% {
    transform: translateX(10px);
  }
}
</style></head><body>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'>
<div class='login'>
  <h2>Register</h2>
  <form name="reg" action="signupServlet" method="post" onsubmit="return call()">

  <input name='username' placeholder='Username' type='text'  id="name" required>
  <input name='password' placeholder='Password' type='password' required id="password">
  <input type="text" name="checkPassword" placeholder="Retype_password" required id="checkPassword" >
  <input name='email' placeholder='E-Mail Address' type="email">
 
  <input class='animated' type='submit' value='Register' onclick="call()">   </form>
  <a class='forgot' href='login.jsp'>Already have an account?</a>
</div>
 <jsp:include page="footer.jsp" />

</body></html>
