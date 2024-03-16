<%-- 
    Document   : appointment
    Created on : Feb 25, 2024, 4:59:39 PM
    Author     : Madusanka(MadusankaB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment Page</title>
    <link rel="stylesheet" href="css/framework.css" />
    <link rel="stylesheet" href="css/master.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
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
</script>
<style>
        body {
            font-family: Arial, sans-serif;
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
        .payment-container {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .lbl{
            padding: 7px;
        }

        .labelPay {
            display: block;
            margin-bottom: 5px;
        }

        .inputPay {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .buttonPay {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        buttonPay:hover {
            background-color: #45a049;
        }
        .reqView{
            border: none;
            background-color: white!important;
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
            <section class="p-3">
                <div class="row">
                    <div class="col-12">
                        <button class="btn btn-primary newUser" onclick="getTechnician(0)" data-bs-toggle="modal" data-bs-target="#userForm">New Appointment <i class="fa fa-plus-square-o"></i></button>
                    </div>
                </div>
                <div style="overflow-x: auto; padding-bottom: 30px;" class="table table-responsive-md">
                    <table class="table table-striped table-hover mt-3 text-center table-bordered" style="border-collapse: collapse;" id="example">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Preferred Date</th>
                                <th>Preferred Time</th>
                                <th>Appointment Type</th>
                                <th>Referred Doctor</th>
                                <th>Reason for Appointment</th>
                                <th>Emergency Contact</th>
                                <th>Emergency Contact number</th>
                                <th>action</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </section>
            <!--Modal Form-->
            <div class="modal fade" id="userForm">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">

                        <div class="modal-header">
                            <h4 class="modal-title">Fill the Form</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">

                            <form action="#" id="myForm">
                                <div class="inputField">
                                    <div>
                                        <label for="name">Id:</label>
                                        <input type="text" name="" id="id" disabled>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                          <div>
                                              <label class="lbl" for="name">Preferred Date:</label>
                                              <input class="form-control" type="date" name="" id="preferredDate" required>
                                          </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <div>
                                                <label class="lbl" for="age">Preferred Time:</label>
                                                <input class="form-control" type="text" name="" id="preferredTime" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="city">Appointment Type:</label>
                                            <select class="form-control" id="testingTypes">
                                                <option>Select Type</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="city">Referred Doctor:</label>
                                            <input  class="form-control" type="text" name="" id="referredDoctor" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="lbl" for="city">Reason for Appointment:</label>
                                        <input class="form-control" type="text" name="" id="appointmentReason" required>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="email">Emergency Contact:</label>
                                            <input class="form-control" type="text" name="" id="emgContactPer" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="phone">Emergency Contact number:</label>
                                            <input class="form-control" type="text" name="" id="emgMobileNum" minlength="11" maxlength="11" required>
                                        </div>
                                    </div>
                                    <!--<div>
                                        <label for="post">Attachment:</label>
                                        <input type="file" name="" id="attachment" required>
                                    </div>-->
                                    <div class="row lbl">
                                        <div class="form-group col-md-6">
                                            <input  class="form-control" type="file" id="fileInput" multiple accept=".pdf, .docx, .jpg, .png, .jpeg">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <button  class="btn btn-outline-secondary"  onclick="uploadDocuments()">Upload Documents</button>
                                        </div>
                                    </div>
                                    <table id="documentTable">
                                        <tr>
                                            <th>Document Name</th>
                                            <th>Actions</th>
                                        </tr>
                                    </table>
                                    
                                </div>

                            </form>
                        </div>

                        
                        
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <!--<button id='btnAddTechnician' onclick='addTechnician()' class="btn btn-primary submit">Submit</button>-->
                            <button class="btn btn-primary newUser" onclick="gotoPayment()" data-bs-toggle="modal" data-bs-target="#paymentForm">Payment <i class="bi bi-people"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Modal Form-->
            <div class="modal fade" id="paymentForm">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Payment Form</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="payment-container">
                                <!--<h1>Lab Appointment Payment</h1>-->
                                <form id="paymentForm">
                                    <div class="row">
                                        <center>
                                            <div class="form-group col-md-8">
                                                <label class="labelPay" for="cardNumber">Card Number:</label>
                                                <input class="inputPay" type="textPay" id="cardNumber" placeholder="**** **** **** ****" required>
                                            </div>
                                        </center>
                                    </div>
                                    <div class="row">
                                        <center>
                                            <div class="form-group col-md-8">
                                                <label class="labelPay" for="expiryDate">Expiry Date:</label>
                                                <input class="inputPay" type="textPay" id="expiryDate" placeholder="MM/YY" required>
                                            </div>
                                        </center>
                                    </div>
                                    <div class="row">
                                        <center>
                                            <div class="form-group col-md-8">
                                                <label class="labelPay" for="cvv">CVV:</label>
                                                <input class="inputPay" type="textPay" id="cvv" placeholder="***" required>
                                            </div>
                                        </center>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button id='btnAddTechnician' onclick='addTechnician()' class="btn btn-primary submit">Pay</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--Read Data Modal-->
            <div class="modal fade" id="readData">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">

                        <div class="modal-header">
                            <h4 class="modal-title">Appointment</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">

                            <form action="#" id="myForm">

                                <div class="inputField">
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <b><label for="name">Id:</label></b>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="lblView" type="text" name="" id="showid" disabled>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <label for="name">Preferred Date:</label>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="form-control reqView" id="showpreferredDate" disabled>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <label for="age">Preferred Time:</label>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="form-control reqView" id="showpreferredTime" disabled>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <label for="city">Appointment Type:</label>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="form-control reqView" id="showappointmentType" disabled>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <label for="email">Referred Doctor:</label>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="form-control reqView" id="showreferredDoctor" disabled>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <label for="phone">Reason for Appointment:</label>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="form-control reqView" id="showappointmentReason"  disabled>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <label for="post">Emergency Contact:</label>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="form-control reqView" id="showemgContactPer" disabled>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group  col-md-3">
                                            <label for="sDate">Emergency Contact number:</label>
                                        </div>
                                        <div class="form-group  col-md-9">
                                            <input class="form-control reqView" id="showemgMobileNum" disabled>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>Documents</h4>
                                        <table id="documentTableView">
                                            <tr>
                                                <th>Document Name</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Option 1: Bootstrap Bundle with Popper -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

            <script src="app.js"></script>
            <script src="js/moment.js"></script>
        </div>
    </div> 
</body>
    <script>
    const url1 = "http://localhost:8080/LAS-Rest-Service/resources/testingType/";
    let typeOfTesting = [];
    $(document).ready(function() {
        //getTestingType ();
        getPrefixData();
        var savedUserData = getCookie("authCookie");
        if (savedUserData) {
          var parsedUserData = JSON.parse(savedUserData);
          debugger;
          if(parsedUserData.userType == 3){
              getAppointmentUserId ();
          }else
              getTestingType ();
        }
        
        function getTestingType (){
                try {
                    const options = {
                    method : "GET"
                    };
                    debugger;
                    fetch(url1 , options)
                     .then(res => res.json())
                     .then(data => {
                         typeOfTesting = data;
                         const dropdown = document.getElementById('testingTypes');
                        if (data !== null) {
                            data.forEach(testingType => {
                                const option = document.createElement('option');
                                option.value = testingType.id; // Assuming 'id' is the property representing the value
                                option.text = testingType.name; // Assuming 'name' is the property representing the display text
                                dropdown.add(option);
                              });
                              
                                var id=""; var preferredDate=""; var preferredTime=""; var appointmentType=""; var referredDoctor=""; var appointmentReason=""; var emgContactPer=""; var emgMobileNum=""; var attachment="";

                                $('#example').DataTable({

                                    ajax: {
                                        url: 'http://localhost:8080/LAS-Rest-Service/resources/appointment/',
                                        dataSrc: function (d) {
                                            console.log(d);
                                            return d;
                                        },  // Assuming your JSON structure has a 'data' property containing the array of records
                                        type: "Get",
                                        contentType: "application/json",
                                        dataType: "json",
                                        async:false
                                    },
                                    columns: [
                                        {
                                            data: "id", "render": 
                                            function (data, type, row) {
                                                id = row['id'];
                                                return row['id'];
                                            }
                                        },
                                        { data: "preferredDate", "render": 
                                            function (data, type, row) {
                                                preferredDate = row['preferredDate'];
                                                return row['preferredDate'];
                                            }
                                        },
                                        { data: "preferredTime", "render": 
                                            function (data, type, row) {
                                                preferredTime = row['preferredTime'];
                                                return row['preferredTime'];
                                            }
                                        }, 
                                        { 
                                            data: "appointmentType", "render": 
                                            function (data, type, row) {
                                                appointmentType = row.testingType.name;

                                                return appointmentType;
                                            }                                                                                                                                                                                                                                                       
                                        },
                                        { data: "referredDoctor", "render": 
                                            function (data, type, row) {
                                                referredDoctor = row['referredDoctor'];
                                                return row['referredDoctor'];
                                            } 
                                        },
                                        { data: "appointmentReason", "render": 
                                            function (data, type, row) {
                                                appointmentReason = row['appointmentReason'];
                                                return row['appointmentReason'];
                                            } 
                                        },
                                        { data: "emgContactPer", "render": 
                                            function (data, type, row) {
                                                emgContactPer = row['emgContactPer'];
                                                return row['emgContactPer'];
                                            }
                                        },
                                        { data: "emgMobileNum", "render": 
                                            function (data, type, row) {
                                                //debugger;
                                                emgMobileNum = row['emgMobileNum'];
                                                return row['emgMobileNum'];
                                            }
                                        },
                                        /*{ data: "attachment", "render": 
                                            function (data, type, row) {
                                                //debugger;
                                                if(data == undefined){
                                                    attachment = null;
                                                    return null;
                                                }else{
                                                    attachment = row['attachment'];
                                                    return row['attachment'];
                                                }
                                            }
                                        },*/
                                        { 
                                            data: "id", "render": function (data, type, row) {
                                                //debugger;
                                                return '<button class="btn btn-success" onclick="getTechnicianView(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#readData"><i class="bi bi-eye"></i></button>\n\
                                        \n\
                                                <button class="btn btn-danger" onclick="deleteInfo(' + row['id'] + ')"><i class="bi bi-trash"></i></button>';
                                            }    
                                        }
                                        // Add more columns as needed
                                    ]
                                });
                              
                              
                        } else {
                            alert("Not found");
                        }
                        //consle.log("Testing Type - ",dropdown);
                     });
                } catch (error) {
                    console.error('An error occurred:', error);
                }
            }
            
        function getAppointmentUserId (){
                try {
                    const options = {
                    method : "GET"
                    };
                    debugger;
                    fetch(url1 , options)
                     .then(res => res.json())
                     .then(data => {
                         typeOfTesting = data;
                         const dropdown = document.getElementById('testingTypes');
                        if (data !== null) {
                            data.forEach(testingType => {
                                const option = document.createElement('option');
                                option.value = testingType.id; // Assuming 'id' is the property representing the value
                                option.text = testingType.name; // Assuming 'name' is the property representing the display text
                                dropdown.add(option);
                              });
                              
                                var id=""; var preferredDate=""; var preferredTime=""; var appointmentType=""; var referredDoctor=""; var appointmentReason=""; var emgContactPer=""; var emgMobileNum=""; var attachment="";
                                    const myTask = 'http://localhost:8080/LAS-Rest-Service/resources/patientappointment/'+parsedUserData.id;

                                $('#example').DataTable({
                                    ajax: {
                                        url: myTask,
                                        dataSrc: function (d) {
                                            console.log(d);
                                            return d;
                                        },  // Assuming your JSON structure has a 'data' property containing the array of records
                                        type: "Get",
                                        contentType: "application/json",
                                        dataType: "json",
                                        async:false
                                    },
                                    columns: [
                                        {
                                            data: "id", "render": 
                                            function (data, type, row) {
                                                id = row['id'];
                                                return row['id'];
                                            }
                                        },
                                        { data: "preferredDate", "render": 
                                            function (data, type, row) {
                                                preferredDate = row['preferredDate'];
                                                return row['preferredDate'];
                                            }
                                        },
                                        { data: "preferredTime", "render": 
                                            function (data, type, row) {
                                                preferredTime = row['preferredTime'];
                                                return row['preferredTime'];
                                            }
                                        }, 
                                        { 
                                            data: "appointmentType", "render": 
                                            function (data, type, row) {
                                                appointmentType = row.testingType.name;

                                                return appointmentType;
                                            }                                                                                                                                                                                                                                                       
                                        },
                                        { data: "referredDoctor", "render": 
                                            function (data, type, row) {
                                                referredDoctor = row['referredDoctor'];
                                                return row['referredDoctor'];
                                            } 
                                        },
                                        { data: "appointmentReason", "render": 
                                            function (data, type, row) {
                                                appointmentReason = row['appointmentReason'];
                                                return row['appointmentReason'];
                                            } 
                                        },
                                        { data: "emgContactPer", "render": 
                                            function (data, type, row) {
                                                emgContactPer = row['emgContactPer'];
                                                return row['emgContactPer'];
                                            }
                                        },
                                        { data: "emgMobileNum", "render": 
                                            function (data, type, row) {
                                                //debugger;
                                                emgMobileNum = row['emgMobileNum'];
                                                return row['emgMobileNum'];
                                            }
                                        },
                                        /*{ data: "attachment", "render": 
                                            function (data, type, row) {
                                                //debugger;
                                                if(data == undefined){
                                                    attachment = null;
                                                    return null;
                                                }else{
                                                    attachment = row['attachment'];
                                                    return row['attachment'];
                                                }
                                            }
                                        },*/
                                        { 
                                            data: "id", "render": function (data, type, row) {
                                                //debugger;
                                                return '<button class="btn btn-success" onclick="getTechnicianView(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#readData"><i class="bi bi-eye"></i></button>\n\
                                        \n\
                                                <button class="btn btn-danger" onclick="deleteInfo(' + row['id'] + ')"><i class="bi bi-trash"></i></button>';
                                            }    
                                        }
                                        // Add more columns as needed
                                    ]
                                });
                              
                              
                        } else {
                            alert("Not found");
                        }
                        //consle.log("Testing Type - ",dropdown);
                     });
                } catch (error) {
                    console.error('An error occurred:', error);
                }
            }
    });
    
    const url3 = "http://localhost:8080/LAS-Rest-Service/resources/login/";
      //getPrefixData();
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
    
    
            const url = "http://localhost:8080/LAS-Rest-Service/resources/appointment/";
            const img=1 ;
            let isEdit = false;
            //var uploadedDocumentsView = [];
            
            
            
            //function getTechnician() {
            const getTechnician = (id)=>{
                try {
                    const content = document.getElementById('content');
                    if(id == 0){
                        uploadedDocuments=[];
                        document.querySelector("#preferredDate").value = "";
                        document.querySelector("#preferredTime").value = "";
                        document.querySelector("#appointmentType").value = ""; 
                        document.querySelector("#referredDoctor").value = "";
                        document.querySelector("#appointmentReason").value = "";
                        document.querySelector("#emgContactPer").value = "";
                        document.querySelector("#emgMobileNum").value = "";
                        //document.querySelector("#attachment").value = "";
                        //document.querySelector("#imagePreview").value = "";
                        //var imageElement = document.getElementById("updateimage");
                        // Set the src attribute with the base64 image string
                        //imageElement.src = "";
                        
                        //var imageElement1 = document.getElementById("imagePreview");
                        // Set the src attribute with the base64 image string
                        //imageElement1.src = "";
                    }
                    else{
                        
                        //let id = document.getElementById("txtID").value;
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
                                //content.style.display = 'block';
                                document.querySelector("#id").value = data.id;
                                document.querySelector("#preferredDate").value = data.preferredDate;
                                document.querySelector("#preferredTime").value = data.preferredTime;
                                const dropdown = document.getElementById('testingTypes');
                                dropdown.value = data.testingType.id;
                                //document.querySelector("#testingTypes").value = data.appointmentType;
                                document.querySelector("#referredDoctor").value = data.referredDoctor;
                                document.querySelector("#appointmentReason").value = data.appointmentReason;
                                document.querySelector("#emgContactPer").value = data.emgContactPer;
                                document.querySelector("#emgMobileNum").value = data.emgMobileNum;
                                if (data.approintmentDocList.length > 0) {
                                    //const files = data.approintmentDocList;
                                    // reader = new FileReader();
                                    uploadedDocuments = data.approintmentDocList;
                                    displayDocuments();
                                }else
                                    document.getElementById("documentTableView").innerHTML = "";
                                //document.querySelector("#attachment").value = data.attachment;
                                //document.querySelector("#showimage").value = data.image;
                                //var img = document.querySelector("#showimage");
                                //var base64Image = data.image; // Replace with your actual base64 string
                                 // Get the image element by id
                                 //var imageElement = document.getElementById("updateimage");
                                 // Set the src attribute with the base64 image string
                                 //imageElement.src = base64Image;
                                 //var imageElement1 = document.getElementById("imagePreview");
                                // Set the src attribute with the base64 image string
                                //imageElement1.src = "";
                            } else {
                                alert("Not found");
                            }
                        });
                    }
                } catch (error) {
                    // Code to handle the exception
                    console.error('An error occurred:', error);
                }
                

            };
            
            const getTechnicianView = (id)=>{
                uploadedDocuments = [];
                try {
                    const options = {
                    method : "GET"
                    };
                    debugger;
                    fetch(url + id, options)
                     .then(res => res.json())
                     .then(data => {
                        if (data !== null) {
                           document.querySelector("#showid").value = data.id;
                           document.querySelector("#showpreferredDate").value = data.preferredDate;
                           document.querySelector("#showpreferredTime").value = data.preferredTime; 
                           document.querySelector("#showappointmentType").value = data.testingType.name;
                           document.querySelector("#showreferredDoctor").value = data.referredDoctor;
                           document.querySelector("#showappointmentReason").value = data.appointmentReason;
                           document.querySelector("#showemgContactPer").value = data.emgContactPer;
                           document.querySelector("#showemgMobileNum").value = data.emgMobileNum;
                           document.querySelector("#showemgMobileNum").value = data.emgMobileNum;
                           
                            if (data.approintmentDocList.length > 0) {
                                //const files = data.approintmentDocList;
                                // reader = new FileReader();
                                uploadedDocuments = data.approintmentDocList;
                                displayDocumentsView();
                                //reader.readAsDataURL(file);
                            }else
                                //$(documentTableView).remove();
                                document.getElementById("documentTableView").innerHTML = "";
                           //document.querySelector("#showattachment").value = data.attachment;
                           //document.querySelector("#showimage").value = data.image;
                           //var img = document.querySelector("#showimage");
                           //var base64Image = data.image; // Replace with your actual base64 string
                            // Get the image element by id
                            //var imageElement = document.getElementById("showimage");
                            // Set the src attribute with the base64 image string
                            //imageElement.src = base64Image;
                        } else {
                            alert("Not found");
                        }

                     });
                } catch (error) {
                    console.error('An error occurred:', error);
                }
            };
            
            function addTechnician() {
                try{
                    if(document.getElementById("id").value != null && document.getElementById("id").value != ''){
                    let id = document.getElementById("id").value;
                        //var input = document.getElementById('attachment');
                        var pDate = document.getElementById("preferredDate").value;
                        var date = moment(pDate).format('MMM DD, YYYY');
                        const person ={
                            "id" : id,
                            "preferredDate" : date,
                            "preferredTime" : document.getElementById("preferredTime").value,
                            "appointmentType" :  document.getElementById("testingTypes").value,
                            "referredDoctor" : document.getElementById("referredDoctor").value,
                            "appointmentReason" : document.getElementById("appointmentReason").value,
                            "emgContactPer" : document.getElementById("emgContactPer").value,
                            "emgMobileNum" : document.getElementById("emgMobileNum").value,
                            "approintmentDocList" : uploadedDocuments
                        };
                        debugger;
                        debugger;
                        const options = {
                            method : "PUT", 
                            headers : {
                                "content-type" : "application/json"
                            },
                            body : JSON.stringify(person)
                        };

                        fetch(url+id, options).then(response => {
                            if (!response.ok) {
                                alert("Failed to update technician. Please try again.");
                                location.reload();
                            }else{
                                alert("Update technician successfully");
                                location.reload();
                            }
                            return response.json();
                        });
                           
                    }
                    else{
                        if (validateForm()) {
                            var savedUserData = getCookie("authCookie");
                            if (savedUserData) {
                                var parsedUserData = JSON.parse(savedUserData);
                                alert('Payment Successful!');
                                var pDate = document.getElementById("preferredDate").value;
                                var date = moment(pDate).format('MMM DD, YYYY');
                                const person ={
                                    //"id" : document.getElementById("id").value,
                                    "preferredDate" : date,
                                    "preferredTime" : document.getElementById("preferredTime").value,
                                    "appointmentType" :  document.getElementById("testingTypes").value,
                                    "referredDoctor" : document.getElementById("referredDoctor").value,
                                    "appointmentReason" : document.getElementById("appointmentReason").value,
                                    "emgContactPer" : document.getElementById("emgContactPer").value,
                                    "emgMobileNum" : document.getElementById("emgMobileNum").value,
                                    "userId" : parsedUserData.id,
                                    "approintmentDocList" : uploadedDocuments
                                    //"attachment" : document.getElementById("attachment").value
                                };
                                debugger;
                                const options = {
                                   method : "POST", 
                                   headers : {
                                       "content-type" : "application/json"
                                   },
                                   body : JSON.stringify(person)
                                };
                                fetch(url, options).then(response => {
                                    if (!response.ok) {
                                        alert("Failed to add technician. Please try again.");
                                        location.reload();
                                        //throw new Error(`HTTP error! Status: ${response.status}`);
                                    }else{
                                        alert("Add technician successfully !");
                                        location.reload();
                                    }
                                    return response.json();
                                });
                            }else{
                                alert('please login again');
                                window.location.href = "login.jsp";
                            }
                        }
                    }
                }catch (error) {
                    console.error('An error occurred:', error);
                }
            }
            
            function validateForm() {
                var cardNumber = $('#cardNumber').val();
                var expiryDate = $('#expiryDate').val();
                var cvv = $('#cvv').val();

                if (cardNumber.length !== 16 || !(/^\d+$/.test(cardNumber))) {
                    alert('Invalid Card Number');
                    return false;
                }

                if (!/^\d{2}\/\d{2}$/.test(expiryDate)) {
                    alert('Invalid Expiry Date');
                    return false;
                }

                if (!/^\d{3}$/.test(cvv)) {
                    alert('Invalid CVV');
                    return false;
                }

                return true;
            }
            
            function deleteInfo(index){
                if(confirm("Are you sure want to delete?")){
                    const options = {
                    method : "DELETE"
                    };
                    fetch(url + index, options).then(response => {
                        debugger;
                        if (!response.ok) {
                            alert("Failed to delete technician. Please try again.");
                            location.reload();
                            //throw new Error(`HTTP error! Status: ${response.status}`);
                        }else{
                            alert("Delete technician successfully !");
                            location.reload();
                        }
                        return response.json();
                        });
                    //location.reload();
                }
            }

            function clearTechnician() {
                document.getElementById("txtID").value = "";
                document.getElementById("txtName").value = "";
                document.getElementById("dateOfBirth").value = "";
            }
            
            //function handleUpload() {
            //    const fileInput = document.getElementById('imageInput');
            //
            //    if (fileInput.files.length > 0) {
            //        for (const file of fileInput.files) {
            //            const reader = new FileReader();
//
            //           reader.onloadend = function () {
            //                // Send the file name and Base64 data to the server
            //                sendDataToServer(file.name, reader.result);
            //               
            //            };
//
            //           reader.readAsDataURL(file);
            //        }
            //    } else {
            //        console.log("No files selected.");
            //    }
            //}

            //function sendDataToServer(fileName, base64Data) {
                // Use Ajax or other methods to send data to the server
                // For simplicity, we are logging the values here
            //    console.log(fileName);
            //    console.log(base64Data);
                //const paddedBase64Data = base64Data + "=";
            //    img = atob(base64Data);
                //img = Uint8Array.from(atob(base64Data), c => c.charCodeAt(0));
            //}
            
            let uploadedDocuments = [];

        function uploadDocuments() {
            const fileInput = document.getElementById('fileInput');
            const files = fileInput.files;

            for (let i = 0; i < files.length; i++) {
                const file = files[i];
                const reader = new FileReader();

                reader.onload = function (e) {
                    const documentData = {
                        fileName: file.name,
                        fileType: file.type,
                        document: e.target.result.split(',')[1] // store document as base64
                    };

                    uploadedDocuments.push(documentData);
                    displayDocuments();
                };

                reader.readAsDataURL(file);
            }

            fileInput.value = ''; // clear the file input
        }

        function displayDocuments() {
            const table = document.getElementById('documentTable');

            // Clear existing rows
            while (table.rows.length > 1) {
                table.deleteRow(1);
            }

            // Populate the table with uploaded documents
            uploadedDocuments.forEach((documentData, index) => {
                if(documentData.active !=0){
                    const row = table.insertRow(-1);
                    const nameCell = row.insertCell(0);
                    const actionsCell = row.insertCell(1);

                    const downloadLink = document.createElement('a');
                    downloadLink.href = "#";
                    downloadLink.textContent = documentData.fileName;
                    downloadLink.setAttribute('data-index', index);
                    downloadLink.addEventListener('click', downloadDocument);

                    nameCell.appendChild(downloadLink);

                    const deleteButton = document.createElement('button');
                    deleteButton.textContent = 'Delete';
                    deleteButton.onclick = function () {
                        deleteDocument(index);
                    };

                    actionsCell.appendChild(deleteButton);
                }
            });
        }
        
        function displayDocumentsView() {
            document.getElementById("documentTableView").innerHTML = "";
            const table = document.getElementById('documentTableView');

            uploadedDocuments.forEach((documentData, index) => {
                const row = table.insertRow(-1);
                const nameCell = row.insertCell(0);
                const actionsCell = row.insertCell(1);

                const downloadLink = document.createElement('a');
                downloadLink.href = "#";
                downloadLink.textContent = documentData.fileName;
                downloadLink.setAttribute('data-index', index);
                downloadLink.addEventListener('click', downloadDocument);
                
                nameCell.appendChild(downloadLink);
            });
        }

        function deleteDocument(index) {
            if(uploadedDocuments[index].active == 1 && uploadedDocuments[index].id != undefined){
                uploadedDocuments[index].active = 0;
            }else
            uploadedDocuments.splice(index, 1);
            displayDocuments();
        }

        function downloadDocument(event) {
            const index = event.target.getAttribute('data-index');
            const documentData = uploadedDocuments[index];
            const blob = base64ToBlob(documentData.document, documentData.fileType);
            const url = URL.createObjectURL(blob);

            const a = document.createElement('a');
            a.href = url;
            a.download = documentData.fileName;
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
            URL.revokeObjectURL(url);
        }

        function base64ToBlob(base64, contentType) {
            const byteCharacters = atob(base64);
            const byteArray = new Uint8Array(byteCharacters.length);

            for (let i = 0; i < byteCharacters.length; i++) {
                byteArray[i] = byteCharacters.charCodeAt(i);
            }

            return new Blob([byteArray], { type: contentType });
        } 
         </script>
</body>
</html>
