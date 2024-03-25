<%-- 
    Document   : dashbordHome
    Created on : Mar 9, 2024, 1:09:30 PM
    Author     : Madusanka(MadusankaB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Appointment Dashboard</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  
  <link rel="stylesheet" href="css/style.css">
        <script src="https://kit.fontawesome.com/265505339c.js" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
  
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f9fa;
    }

    .container {
      max-width: 1200px;
      margin: 20px auto;
    }

    .card {
      margin-bottom: 20px;
    }

    .chart-container {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      margin-top: 20px;
    }

    .icon-colorful {
      color: #007bff;
    }

    canvas {
      max-width: 100%;
      height: auto;
    }
    .card {
        margin-bottom: 20px;
    }

    .chart-container {
      width: 75%;
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .card-title i {
      margin-right: 10px;
    }

    .card-body img {
      max-width: 100%;
      height: auto;
    }

    .card-details {
      font-size: 1.2rem;
      margin-bottom: 10px;
    }

    .icon-large {
      font-size: 2.5rem;
    }
    .nav-font{
        font-size: small;
    }
    .reqView{
        border: none;
        background-color: #262931!important;
        color: white;
        text-align-last: center;
        font-family: cursive;
    }
    .hidden {
      display: none;
    }
  </style>
</head>
<body>
<input type="checkbox" id="checkbox">
    <header class="header">
        <h2 class="u-name">ABC <b>LAB</b>
                <label for="checkbox" class="lblbars">
                        <i id="navbtn" class="fa fa-bars" aria-hidden="true"></i>
                </label>
        </h2>
        <i class="fa fa-user" aria-hidden="true"></i>
    </header>
    <div class="body">
        <nav class="side-bar">
            <div class="user-p">
                    <img id="profileImage" alt="prof Image" style=" width: 100px;height: 100px;border-radius: 50%;">
                    <b><input class="form-control reqView" type="text" id="showname" disabled></b>
            </div>
            <ul style="padding-left: 0px;">
                <div id="dashbord">
                <li>
                    <a href="dashbord.jsp">
                        <i class="fa fa-desktop" aria-hidden="true"></i>
                        <span class="nav-font">Dashboard</span>
                    </a>
                </li>
                </div>
                <div id="technician" >
                <li >
                    <a href="technician.jsp">
                        <i class="fa fa-wrench" aria-hidden="true"></i>
                        <span class="nav-font">Technician</span>
                    </a>
                </li>
                </div>
                <!--<li>
                    <a href="doctor.jsp">
                        <i class="fas fa-user-md" aria-hidden="true"></i>
                        <span class="nav-font">Doctor</span>
                    </a>
                </li>-->
                <div id="appointment">
                <li>
                    <a href="appointment.jsp">
                        <i class="fa fa-calendar-check" aria-hidden="true"></i>
                        <span class="nav-font">Appointment</span>
                    </a>
                </li>
                </div>
                <div id="appointmentPrescription">
                <li>
                    <a href="appointmentPrescription.jsp">
                        <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span class="nav-font">Appointment Prescription</span>
                    </a>
                </li>
                </div>
                <div id="appointmentReport">
                <li>
                    <a href="appointmentReport.jsp">
                        <i class="fa fa-chart-bar" aria-hidden="true"></i>
                        <span class="nav-font">Appointment Report</span>
                    </a>
                </li>
                </div>
                <div id="logOut">
                <li>
                    <a href="login.jsp">
                        <i class="fa fa-power-off" onclick="deleteCookie('authCookie'); aria-hidden="true"></i>
                        <span class="nav-font">Logout</span>
                    </a>
                </li>
                </div>
            </ul>
        </nav>  
  <div class="container">
    <h2 class="text-center mt-4">Appointment Summary</h2>

    <div class="card-deck" style="flex-flow: row-wrap;">
          <div class="card">
            <div class="card-body text-center">
              <h5 class="card-title">Total Appointments</h5>
              <p class="card-details">150</p>
              <i style="color: #cc99cf;" class="fas fa-calendar-check icon-large icon-colorful"></i>
            </div>
          </div>
          <div class="card">
            <div class="card-body text-center">
              <h5 class="card-title">Pending Appointments</h5>
              <p class="card-details">30</p>
              <i style="color: #dfdf28;" class="fas fa-clock icon-large icon-colorful"></i>
            </div>
          </div>
          <div class="card">
            <div class="card-body text-center">
              <h5 class="card-title">Completed Appointments</h5>
              <p class="card-details">110</p>
              <i style="color: #8bdf8b;" class="fas fa-check-circle icon-large icon-colorful"></i>
            </div>
          </div>
            <div class="card">
            <div class="card-body text-center">
              <h5 class="card-title">Cancle Appointments</h5>
              <p class="card-details">10</p>
              <i class="fas fa-times-circle icon-large text-danger"></i>
            </div>
          </div>
        </div>

    <div class="row">
        <div class="col-sm-8">
            <center>
                <div class="chart-container" style="width: 90%; ">
                    <h2 class="text-center mb-4">Appointment Trends</h2>
                    <canvas id="appointmentBarChart"></canvas>
                </div>
                </center>
        </div>
        <div class="col-md-4">
            <center>
                <div class="chart-container" style="width: 100%; margin-left: -60px;">
                  <h2 class="text-center mb-4">Appointment</h2>
                  <canvas id="appointmentChart"></canvas>
                </div>
            </center>
        </div>
        
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>
      const url = "http://localhost:8080/LAS-Rest-Service/resources/login/";
      getPrefixData();
      /*$(document).ready(function() {
          
          getTechnician(id);
      });*/
    function getPrefixData() {
    var savedUserData = getCookie("authCookie");
        if (savedUserData) {
          var parsedUserData = JSON.parse(savedUserData);
          debugger;
          getCoreDate(parsedUserData.id);
          
          
          if(parsedUserData.userType == 3){
              
              //document.getElementById("appointmentPrescription").style.display = 'none';
              document.getElementById("technician").classList.add('hidden');
              document.getElementById("appointmentReport").classList.add('hidden');
          }
          else if(parsedUserData.userType == 2){
              
              document.getElementById("appointment").style.display = 'none';
              document.getElementById("technician").classList.add('hidden');
          }
          else if(parsedUserData.userType == 1){
              document.getElementById("appointment").style.display = 'none';
          }
          else{
              document.getElementById("dashboard").style.display = 'none';
              document.getElementById("technician").classList.add('hidden');
              document.getElementById("appointment").classList.add('hidden'); 
              document.getElementById("appointmentPrescription").style.display = 'none';
              document.getElementById("appointmentReport").classList.add('hidden');
              //document.getElementById("appointmentReport").classList.add('hidden'); 
          }
        } else {
          console.log("No user data found.");
        }
    }
    
    function getCookie(name) {
        var nameEQ = name + "=";
        var cookiesArray = document.cookie.split(';');

        for (var i = 0; i < cookiesArray.length; i++) {
          var cookie = cookiesArray[i].trim();
          if (cookie.indexOf(nameEQ) == 0) {
            return cookie.substring(nameEQ.length, cookie.length);
          }
        }

        return null;
    }
    

    function getCoreDate(id){
        try {
            const options = {
                method : "GET"
            };
            debugger;
            fetch(url + id, options)
            .then(res => res.json())
            .then(data => {
                if (data !== null) {
                    debugger;
                    //const content = document.getElementById('content');
                    document.querySelector("#showname").value = data.name;
                    //var img = document.querySelector("#showimage");
                    var base64Image = data.image; // Replace with your actual base64 string
                     // Get the image element by id
                     var imageElement = document.getElementById("profileImage");
                     // Set the src attribute with the base64 image string
                     imageElement.src = base64Image;
                     
                } else {
                    alert("Not found");
                }
            });
            
        } catch (error) {
            // Code to handle the exception
            console.error('An error occurred:', error);
        }


    };
    function deleteCookie(name) {
        debugger;
        document.cookie = name + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
      }
     // Dummy data for the pie chart
    const appointmentData = {
      labels: ['Pending', 'Completed', 'Canceled'],
      datasets: [{
        data: [30, 120, 10],
        backgroundColor: ['#ffc107', '#28a745', '#dc3545'],
      }],
    };

    // Dummy data for the bar chart
    const appointmentBarData = {
      labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
      datasets: [{
        label: 'Appointments',
        backgroundColor: '#007bff',
        borderColor: '#007bff',
        borderWidth: 1,
        data: [20, 30, 40, 25, 35],
      }],
    };

    // Get the context of the canvas elements
    const ctx = document.getElementById('appointmentChart').getContext('2d');
    const barCtx = document.getElementById('appointmentBarChart').getContext('2d');

    // Create and render the pie chart
    new Chart(ctx, {
      type: 'doughnut',
      data: appointmentData,
    });

    // Create and render the bar chart
    new Chart(barCtx, {
      type: 'bar',
      data: appointmentBarData,
      options: {
        scales: {
          y: {
            beginAtZero: true,
          },
        },
      },
    });
  </script>
</body>
</html>
