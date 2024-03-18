<%-- 
    Document   : login
    Created on : Feb 24, 2024, 11:20:27 PM
    Author     : Madusanka(MadusankaB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="css/logReg.css" />
        <script>
            const url = "http://localhost:8080/LAS-Rest-Service/resources/login/";
            
            function checkLogin() {
               debugger;
               try {
                    const login ={
                        "email" : document.getElementById("email").value,
                        "password" : document.getElementById("password").value
                    };
                    const options = {
                       method : "POST", 
                       headers : {
                           "content-type" : "application/json"
                       },
                       body : JSON.stringify(login)
                    };
                    fetch(url , options)
                     .then(res => res.json())
                     .then(data => {
                        if (data !== null) {
                            debugger;
                            var expireDate = new Date();
                            var expires = expireDate.setTime(expireDate.getTime() +(1*24*60*60*1000));
                            document.cookie = "authCookie" + "=" + JSON.stringify(data) + "; " + expires+"; path=/";
                            
                           alert("Login successfully");
                           window.location.href = "dashbord.jsp";
                        } else {
                            alert("Login Failed");
                            location.reload();
                        }
                     });
                } catch (error) {
                    // Code to handle the exception
                    console.error('An error occurred:', error);
                }
            }
        </script>
    </head>
    <section class="container">
      <header>Login Form</header>
      <div>
          
          <image class="mx-auto d-block" style="margin-left: 143px;padding-left: 50px;max-width: 50%;height: auto;" src="image/login.jpg">
          
      </div>
      
      <form action="#" class="form">
        <div class="input-box">
          <label>Email</label>
          <input type="text" id="email" placeholder="Enter your email" required />
        </div>
        <div class="input-box">
          <label>Password</label>
          <input type="password" id="password" placeholder="Enter your paassword" required />
        </div>
        <button onclick="checkLogin()">Submit</button>
        <p style="padding-top: 10px;text-align: center;">Don't have an account?  <b><a style="text-decoration:none;" href="signup.jsp"> SignUp now</a></b></p>
      </form>
    </section>
</html>
