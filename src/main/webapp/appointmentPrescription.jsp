<%-- 
    Document   : appointmentPrescription
    Created on : Mar 3, 2024, 5:10:44 AM
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
            <h2 class="text-center mt-4">Appointment Prescription Manage</h2>
            <section class="p-3">
                <!--<div class="row">
                    <div class="col-12">
                        <button class="btn btn-primary newUser" onclick="getTechnician(0)" data-bs-toggle="modal" data-bs-target="#userForm">New User <i class="bi bi-people"></i></button>
                    </div>
                </div>-->
                <div style="padding-top: 25px;overflow-x: auto;padding-bottom: 30px;" class="table table-responsive-md">
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

                                <!--<div class="card imgholder">
                                    <label for="imgInput" class="upload">
                                        <input type="file" name="" id="imgInput">
                                        <i class="bi bi-plus-circle-dotted"></i>
                                    </label>
                                    <img src="./image/Profile Icon.webp" alt="" width="200" height="200" class="img">
                                </div>-->

                                <!--<input type="file" id="fileInput" multiple>
                                <button type="button" onclick="handleUpload()">Upload</button>-->

                                <div class="inputField">
                                    <div>
                                        <label class="lbl" for="name">Id:</label>
                                        <input type="text" name="" id="id" disabled>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                          <div>
                                              <label class="lbl" class="lbl" for="name">Preferred Date:</label>
                                              <input class="form-control" type="text" name="" id="preferredDate" readonly>
                                          </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <div>
                                                <label class="lbl" class="lbl" for="age">Preferred Time:</label>
                                                <input class="form-control" type="text" name="" id="preferredTime" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="lbl" class="lbl" for="city">Appointment Type:</label>
                                            <input class="form-control" type="text" name="" id="appointmentType" readonly>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="lbl" class="lbl" for="city">Referred Doctor:</label>
                                            <input  class="form-control" type="text" name="" id="referredDoctor" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="lbl" for="city">Reason for Appointment:</label>
                                        <input class="form-control" type="text" name="" id="appointmentReason" readonly>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="lbl" class="lbl" for="email">Emergency Contact:</label>
                                            <input class="form-control" type="text" name="" id="emgContactPer" readonly>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="lbl" class="lbl" for="phone">Emergency Contact number:</label>
                                            <input class="form-control" type="text" name="" id="emgMobileNum" minlength="11" maxlength="11" readonly>
                                        </div>
                                    </div>
                                    <!--<div>
                                        <label for="post">Attachment:</label>
                                        <input type="file" name="" id="attachment" required>
                                    </div>-->
                                    <div>
                                        <!--<input type="file" id="fileInput" multiple accept=".pdf, .docx, .jpg, .png, .jpeg">
                                        <button onclick="uploadDocuments()">Upload Documents</button>-->

                                        <table id="documentTable">
                                            <tr>
                                                <th>Document Name</th>
                                            </tr>
                                        </table>
                                    </div>
                                    
                                </div>
                                <div class="inputField">
                                    <div>
                                        <div>
                                            <label class="lbl" for="aPId">Id:</label>
                                            <input type="text" name="" id="aPId" disabled>
                                        </div>
                                        <div class="row">
                                            <div>
                                                <label class="lbl" for="testResults">Test Results:</label>
                                                <textarea rows="4" class="form-control" name="" id="testResults" required></textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div>
                                                <label class="lbl" for="testTechnicians">Technicians:</label>
                                                <textarea rows="2" class="form-control" name="" id="testTechnicians" required></textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div>
                                                <label class="lbl" for="comment">Comment:</label>
                                                <textarea rows="6" class="form-control"  name="" id="testComment" required></textarea>
                                            </div>
                                        </div>
                                        
                                        <!--<div class="input-group">
                                            <div class="custom-file"> 
                                              <input type="file" multiple accept=".pdf, .docx, .jpg, .png, .jpeg" class="custom-file-input" >
                                              <label class="custom-file-label" for="inputGroupFile04">Choose files</label>
                                            </div>
                                            <div class="input-group-append">
                                              <button class="btn btn-outline-secondary" id="filePrescriptionInput" type="button">Button</button>
                                            </div>
                                          </div>-->
                                        <div class="row lbl">
                                            <div class="form-group col-md-6">
                                                <input class="form-control" type="file" id="filePrescriptionInput" multiple accept=".pdf, .docx, .jpg, .png, .jpeg">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <button class="btn btn-outline-secondary" onclick="uploadPrescriptionDocuments()">Upload Documents</button>
                                            </div>
                                        </div>
                                        <table id="PrescriptiondocumentTable">
                                            <tr>
                                                <th>Document Name</th>
                                                <th>Actions</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div> 
                            </form>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button id='btnAddTechnician' onclick='addTechnician()' class="btn btn-primary submit">Submit</button>
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
                                <div class="inputField">
                                    <div>
                                        <div>
                                            <label class="lbl" for="showaPId">Id:</label>
                                            <input type="text" name="" id="aPId" disabled>
                                        </div>
                                        <div class="row">
                                            <div>
                                                <label class="lbl" for="showtestResults">Test Results:</label>
                                                <textarea rows="4" class="form-control" name="" id="showtestResults" disabled></textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div>
                                                <label class="lbl" for="showtestTechnicians">Technicians:</label>
                                                <textarea rows="2" class="form-control" name="" id="showtestTechnicians" disabled></textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div>
                                                <label class="lbl" for="showcomment">Comment:</label>
                                                <textarea rows="6" class="form-control"  name="" id="showtestComment" disabled></textarea>
                                            </div>
                                        </div>
                                        
                                        <!--<div class="input-group">
                                            <div class="custom-file"> 
                                              <input type="file" multiple accept=".pdf, .docx, .jpg, .png, .jpeg" class="custom-file-input" >
                                              <label class="custom-file-label" for="inputGroupFile04">Choose files</label>
                                            </div>
                                            <div class="input-group-append">
                                              <button class="btn btn-outline-secondary" id="filePrescriptionInput" type="button">Button</button>
                                            </div>
                                          </div>-->
                                        <div class="row lbl">
                                            <div class="form-group col-md-6">
                                                <input class="form-control" type="file" id="filePrescriptionInput" multiple accept=".pdf, .docx, .jpg, .png, .jpeg" >
                                            </div>
                                            <div class="form-group col-md-6">
                                                <button class="btn btn-outline-secondary" onclick="uploadPrescriptionDocuments()">Upload Documents</button>
                                            </div>
                                        </div>
                                        <table id="PrescriptiondocumentTable">
                                            <tr>
                                                <th>Document Name</th>
                                                <th>Action</th>
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
    <script>
    $(document).ready(function() {
        var id=""; var preferredDate=""; var preferredTime=""; var appointmentType=""; var referredDoctor=""; var appointmentReason=""; var emgContactPer=""; var emgMobileNum=""; var attachment="";
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
                            appointmentType = row['appointmentType'];
                            return row['appointmentType'];
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
                            debugger;
                            emgMobileNum = row['emgMobileNum'];
                            return row['emgMobileNum'];
                        }
                    },
                    /*{ data: "attachment", "render": 
                        function (data, type, row) {
                            debugger;
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
                            debugger;
                            return '<button class="btn btn btn-warning" onclick="getTechnician(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#userForm"><i class="fa fa-list-alt"></i></button>\n\
                    \n\
                            <button class="btn btn-success" onclick="getTechnicianView(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#readData"><i class="bi bi-eye"></i></button>';
                        }    
                    }
                    // Add more columns as needed
                ]
            });
        }
          
        function getAppointmentUserId (){
            const myTask = 'http://localhost:8080/LAS-Rest-Service/resources/testingType/'+parsedUserData.id;
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
                            appointmentType = row['appointmentType'];
                            return row['appointmentType'];
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
                            debugger;
                            emgMobileNum = row['emgMobileNum'];
                            return row['emgMobileNum'];
                        }
                    },
                    /*{ data: "attachment", "render": 
                        function (data, type, row) {
                            debugger;
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
                            debugger;
                            
                            if (parsedUserData.userType == 3) {
                                return '<button class="btn btn-success" onclick="getTechnicianView(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#readData"><i class="bi bi-eye"></i></button>';
                            }else{
                            return '<button id="ispatient" class="btn btn btn-warning" onclick="getTechnician(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#userForm"><i class="fa fa-list-alt"></i></button>\n\
                    \n\
                            <button class="btn btn-success" onclick="getTechnicianView(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#readData"><i class="bi bi-eye"></i></button>';
                        }  }  
                    }
                    // Add more columns as needed
                ]
            });
        }
        
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
    
    
            const url = "http://localhost:8080/LAS-Rest-Service/resources/appointment/";
            const url2 = "http://localhost:8080/LAS-Rest-Service/resources/appointmentPrescription/";
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
                                //isEdit=true;
                                //const content = document.getElementById('content');
                                //content.style.display = 'block';
                                document.querySelector("#id").value = data.id;
                                document.querySelector("#preferredDate").value = data.preferredDate;
                                document.querySelector("#preferredTime").value = data.preferredTime; 
                                document.querySelector("#appointmentType").value = data.testingType.name;
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
                                ///////
                                const options = {
                                    method : "GET"
                                };
                                debugger;
                                fetch(url2 + data.id, options)
                                .then(res => res.json())
                                .then(data => {
                                    if(data.id != 0){
                                        if (data !== null) {
                                            //isEdit=true;
                                            document.querySelector("#aPId").value = data.id;
                                            document.querySelector("#testResults").value = data.testResults;
                                            document.querySelector("#testTechnicians").value = data.technicians; 
                                            document.querySelector("#testComment").value = data.comment;
                                            if (data.approintmentDocList.length > 0) {
                                                //const files = data.approintmentDocList;
                                                // reader = new FileReader();
                                                uploadedPrescriptionDocuments = data.approintmentDocList;
                                                displayPrescriptionDocuments();
                                            }else
                                                document.getElementById("PrescriptiondocumentTable").innerHTML = "";
                                        } else {
                                            alert("Not found");
                                        }
                                    }else{
                                        document.querySelector("#aPId").value = "";
                                        document.querySelector("#testResults").value = "";
                                        document.querySelector("#testTechnicians").value = ""; 
                                        document.querySelector("#testComment").value = "";
                                        document.getElementById("PrescriptiondocumentTable").innerHTML = "";
                                    }
                                    
                                });
                                
                                
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
                           document.querySelector("#showappointmentType").value = data.appointmentType;
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
                            
                            const options = {
                                    method : "GET"
                                };
                                debugger;
                                fetch(url2 + data.id, options)
                                .then(res => res.json())
                                .then(data1 => {
                                    if(data1.id != 0){
                                        if (data1 !== null) {
                                            //isEdit=true;
                                            //document.querySelector("#showaPId").value = data.id;
                                            document.querySelector("#showtestResults").value = data1.testResults;
                                            document.querySelector("#showtestTechnicians").value = data1.technicians; 
                                            document.querySelector("#showtestComment").value = data1.comment;
                                            
                                            
                                            if (data.approintmentDocList.length > 0) {
                                                //const files = data.approintmentDocList;
                                                // reader = new FileReader();
                                                uploadedPrescriptionDocuments = data.approintmentDocList;
                                                displayPrescriptionDocuments();
                                            }else
                                                document.getElementById("PrescriptiondocumentTable").innerHTML = "";
                                            
                                            
                                        } else {
                                            alert("Not found");
                                        }
                                    }else{
                                        document.querySelector("#aPId").value = "";
                                        document.querySelector("#testResults").value = "";
                                        document.querySelector("#testTechnicians").value = ""; 
                                        document.querySelector("#testComment").value = "";
                                        document.getElementById("PrescriptiondocumentTable").innerHTML = "";
                                    }
                                    
                                });
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
                    var savedUserData = getCookie("authCookie");
                    if (savedUserData) {
                    var parsedUserData = JSON.parse(savedUserData);
                    debugger;
                    if(document.getElementById("aPId").value != null && document.getElementById("aPId").value != ''){
                    let id = document.getElementById("aPId").value;
                        const person ={
                            "id" : id,
                            "testResults" : document.getElementById("testResults").value,
                            "technicians" :  document.getElementById("testTechnicians").value,
                            "comment" : document.getElementById("testComment").value,
                            "appointmentId" : document.getElementById("id").value,
                            "tId" : savedUserData.id,
                            "approintmentDocList" : uploadedPrescriptionDocuments
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

                        fetch(url2+id, options).then(response => {
                            if (!response.ok) {
                                alert("Failed to update Appointment Prescription. Please try again.");
                                location.reload();
                            }else{
                                alert("Update Appointment Prescription successfully");
                                location.reload();
                            }
                            return response.json();
                        });
                           
                    }
                    else{
                        const tResult ={
                            //"id" : document.getElementById("id").value,
                            "testResults" : document.getElementById("testResults").value,
                            "technicians" :  document.getElementById("testTechnicians").value,
                            "comment" : document.getElementById("testComment").value,
                            "appointmentId" : document.getElementById("id").value,
                            "tId" : savedUserData.id,
                            "approintmentDocList" : uploadedPrescriptionDocuments
                            //"attachment" : document.getElementById("attachment").value
                        };
                        debugger;
                        const options = {
                           method : "POST", 
                           headers : {
                               "content-type" : "application/json"
                           },
                           body : JSON.stringify(tResult)
                        };
                        fetch(url2, options).then(response => {
                            if (!response.ok) {
                                alert("Failed to add Appointment Prescription. Please try again.");
                                location.reload();
                                //throw new Error(`HTTP error! Status: ${response.status}`);
                            }else{
                                alert("Add Appointment Prescription successfully !");
                                location.reload();
                            }
                            return response.json();
                        });
                    }
                    }else{
                        alert('please login again');
                        window.location.href = "login.jsp";
                    }
                }catch (error) {
                    console.error('An error occurred:', error);
                }
                
            }
            
            let uploadedDocuments = [];
            let uploadedPrescriptionDocuments = [];

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
                    downloadLink.addEventListener('click', downloadPrescriptionDocument);

                    nameCell.appendChild(downloadLink);

                    
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

        //Prescription Document

        function uploadPrescriptionDocuments() {
            const fileInput = document.getElementById('filePrescriptionInput');
            const files = fileInput.files;

            for (let i = 0; i < files.length; i++) {
                const file = files[i];
                const reader = new FileReader();

                reader.onload = function (e) {
                    const documentPrescriptionData = {
                        fileName: file.name,
                        fileType: file.type,
                        document: e.target.result.split(',')[1] // store document as base64
                    };

                    uploadedPrescriptionDocuments.push(documentPrescriptionData);
                    displayPrescriptionDocuments();
                };

                reader.readAsDataURL(file);
            }

            filePrescriptionInput.value = ''; // clear the file input
        }

        function displayPrescriptionDocuments() {
            const table = document.getElementById('PrescriptiondocumentTable');

            // Clear existing rows
            while (table.rows.length > 1) {
                table.deleteRow(1);
            }

            // Populate the table with uploaded documents
            uploadedPrescriptionDocuments.forEach((documentPrescriptionData, index) => {
                if(documentPrescriptionData.active !=0){
                    const row = table.insertRow(-1);
                    const nameCell = row.insertCell(0);
                    const actionsCell = row.insertCell(1);

                    const downloadLink = document.createElement('a');
                    downloadLink.href = "#";
                    downloadLink.textContent = documentPrescriptionData.fileName;
                    downloadLink.setAttribute('data-index', index);
                    downloadLink.addEventListener('click', downloadDocument);

                    nameCell.appendChild(downloadLink);

                    const deleteButton = document.createElement('button');
                    deleteButton.textContent = 'Delete';
                    deleteButton.onclick = function () {
                        deletePrescriptionDocument(index);
                    };

                    actionsCell.appendChild(deleteButton);
                }
            });
        }
        
        function displayPrescriptionDocumentsView() {
            document.getElementById("PrescriptiondocumentTableView").innerHTML = "";
            const table = document.getElementById('PrescriptiondocumentTableView');

            uploadedPrescriptionDocuments.forEach((documentPrescriptionData, index) => {
                const row = table.insertRow(-1);
                const nameCell = row.insertCell(0);
                const actionsCell = row.insertCell(1);

                const downloadLink = document.createElement('a');
                downloadLink.href = "#";
                downloadLink.textContent = uploadedPrescriptionDocuments.fileName;
                downloadLink.setAttribute('data-index', index);
                downloadLink.addEventListener('click', downloadDocument);
                
                nameCell.appendChild(downloadLink);
            });
        }

        function deletePrescriptionDocument(index) {
            if(uploadedPrescriptionDocuments[index].active == 1 && uploadedPrescriptionDocuments[index].id != undefined){
                uploadedPrescriptionDocuments[index].active = 0;
            }else
            uploadedPrescriptionDocuments.splice(index, 1);
            displayPrescriptionDocuments();
        }

        function downloadPrescriptionDocument(event) {
            const index = event.target.getAttribute('data-index');
            const documenPrescriptiontData = uploadedPrescriptionDocuments[index];
            const blob = base64ToBlob(documentPrescriptionData.document, documentPrescriptionData.fileType);
            const url = URL.createObjectURL(blob);

            const a = document.createElement('a');
            a.href = url;
            a.download = documentPrescriptionData.fileName;
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
