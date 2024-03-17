<%-- 
    Document   : appointmentReport
    Created on : Mar 4, 2024, 6:32:11 PM
    Author     : Madusanka(MadusankaB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment Prescription Page</title>
    <link rel="stylesheet" href="css/framework.css" />
    <link rel="stylesheet" href="css/master.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!--Bootstrap 5 icons CDN-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/265505339c.js" crossorigin="anonymous"></script>
    
    <!-- Include jQuery -->
    <!--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>-->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Include DataTables CSS and JS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/script.js">
    <!-- SheetJS -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.0/xlsx.full.min.js"></script>

    <!-- DataTables Buttons CSS and JS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/2.3.0/css/buttons.dataTables.min.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.3.0/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.3.0/js/buttons.html5.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.3.0/js/buttons.print.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>

    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    
</script>
<style>
        body {
            font-family: Arial, sans-serif;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .lbl{
            padding: 7px;
        }
        .nav-font{
            font-size: small;
        }
        .reqViewUser{
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
                    <b><input class="form-control reqViewUser" type="text" id="showname" disabled></b>
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
                    <a href="login.jsp" onclick="deleteCookie('authCookie');">
                        <i class="fa fa-power-off" aria-hidden="true"></i>
                        <span class="nav-font">Logout</span>
                    </a>
                </li>
                </div>
            </ul>
        </nav>  
        <div class="content w-full">
            <div  class="form-group" style="padding: 20px;">
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="lbl" for="filter1">CreateDate Time:</label>
                        <input class="form-control"  type="date" id="createDateTime">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="lbl" for="filter2">Preferred Date:</label>
                        <input class="form-control"  type="date" id="preferredDate">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="lbl" for="filter3">Preferred Time:</label>
                        <input class="form-control" type="text" id="preferredDate">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="lbl" for="filter3">Appointment Type:</label>
                        <input class="form-control"  type="text" id="appointmentType">
                    </div>
                </div>
                <center style="padding-top: 10px;">
                <button type="button" class="btn btn-warning" id="applyFilters">Filter</button>
                <button type="button" class="btn btn-danger" id="applyFilters">Clear</button>
                </center>
            </div>
            <section class="p-3">
                <div style="overflow-x: auto; padding-bottom: 30px;" class="table table-responsive-md">
                    <table class="table table-striped table-hover mt-3 text-center table-bordered" style="border-collapse: collapse;" id="example">
                        <thead>
                            <tr>
                                <th>CreateDate Time</th>
                                <th>Preferred Date</th>
                                <th>Preferred Time</th>
                                <th>Appointment Type</th>
                                <th>Technicians</th>
                                <th>Repoted Technician Name</th>
                                <th>Patients Name</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </section>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

            <script src="app.js"></script>
            <script src="js/moment.js"></script>
        </div>
    </div> 
    
    <script>
        $(document).ready(function() {
            getPrefixData();
            var dataTable =$('#example').DataTable({

                ajax: {
                    url: 'http://localhost:8080/LAS-Rest-Service/resources/appointmentReport/',
                    dataSrc: function (d) {
                        console.log(d);
                        return d;
                    },  
                    type: "Get",
                    contentType: "application/json",
                    dataType: "json",
                    async:false
                },
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ],
                columns: [
                    {"data": "createDateTime"},
                    {"data": "preferredDate"},
                    {"data": "preferredTime"}, 
                    {"data": "appointmentType"},
                    {"data": "technicians"},
                    {"data": "technicianName"},
                    {"data": "patientsName"}
                ]
            });

            $('#applyFilters').on('click', function() {
                debugger;
                var createDateTime = $('#createDateTime').val();
                var preferredDate = $('#preferredDate').val();
                var preferredDate = $('#preferredDate').val();
                var appointmentType = $('#appointmentType').val();

                // Apply filters to DataTable
                //var sSate = document.getElementById("startDate").value;
                var date = moment(createDateTime).format('MMM D, YYYY');
                var date2 = moment(preferredDate).format('MMM D, YYYY');
                if(createDateTime!=""){
                    dataTable.columns(0).search(createDateTime).draw();
                }if(preferredDate!=""){
                    dataTable.columns(1).search(preferredDate).draw();
                }if(preferredDate!=""){
                    dataTable.columns(2).search(preferredDate).draw();
                }if(appointmentType!=""){
                    dataTable.columns(3).search(appointmentType).draw();
                }
            });
        });
        
    const url3 = "http://localhost:8080/LAS-Rest-Service/resources/login/";
      
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
    
    function deleteCookie(name) {
        debugger;
        document.cookie = name + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
      }
    

    function getCoreDate(id){
        try {
            const options = {
                method : "GET"
            };
            debugger;
            fetch(url3 + id, options)
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
        
    </script>
</body>
</html>
