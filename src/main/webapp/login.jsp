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
            
            const getTechnician = (email,password)=>{
                try {
                    const options = {
                        method : "GET"
                    };
                    debugger;
                    fetch(url + id, options)
                    .then(res => res.json())
                    .then(data => {
                        if (data !== null) {
                            isEdit=true;
                            //const content = document.getElementById('content');
                            content.style.display = 'block';
                            document.querySelector("#id").value = data.id;
                            document.querySelector("#name").value = data.name;
                            document.querySelector("#gender").value = data.gender; 
                            document.querySelector("#mobileNum").value = data.mobileNum;
                            document.querySelector("#email").value = data.email;
                            document.querySelector("#medicalLicenseNumber").value = data.medicalLicenseNumber;
                            document.querySelector("#experience").value = data.experience;
                            document.querySelector("#medicalSchool").value = data.medicalSchool;
                            document.querySelector("#specialty").value = data.specialty;
                            document.querySelector("#educationalInfo").value = data.educationalInfo;
                            document.querySelector("#startDate").value = data.startDate;
                            //document.querySelector("#showimage").value = data.image;
                            //var img = document.querySelector("#showimage");
                            var base64Image = data.image; // Replace with your actual base64 string
                             // Get the image element by id
                             var imageElement = document.getElementById("updateimage");
                             // Set the src attribute with the base64 image string
                             imageElement.src = base64Image;
                             var imageElement1 = document.getElementById("imagePreview");
                            // Set the src attribute with the base64 image string
                            imageElement1.src = "";
                        } else {
                            alert("Not found");
                        }
                    });
                    
                } catch (error) {
                    // Code to handle the exception
                    console.error('An error occurred:', error);
                }
                

            };
            
        </script>
    </head>
    <section class="container">
      <header>Login Form</header>
      <form action="#" class="form">
        <div class="input-box">
          <label>Email</label>
          <input type="text" id="email" placeholder="Enter full name" required />
        </div>

        <div class="input-box">
          <label>Password</label>
          <input type="password" id="password" placeholder="Enter your paassword" required />
        </div>
        <button onclick="checkLogin()">Submit</button>
      </form>
      
    </section>
</html>
