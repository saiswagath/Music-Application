<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>var firstpassword = document.reg.password.value;
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