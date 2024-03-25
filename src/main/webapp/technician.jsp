<%-- 
    Document   : technician
    Created on : Feb 22, 2024, 11:33:14 AM
    Author     : Madusanka(MadusankaB
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Dashboard</title>
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
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        #imageLabel {
            border: 2px dashed #ccc;
            padding: 20px;
            text-align: center;
            cursor: pointer;
        }

        #imagePreview {
            max-width: 100%;
            max-height: 300px;
            margin-top: 20px;
        }
        .hidden {
            display: none;
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
            <h2 class="text-center mt-4">Manage Technician</h2>
            <section class="p-3">
                <div class="row">
                    <div class="col-12">
                        <button class="btn btn-primary newUser" onclick="getTechnician(0)" data-bs-toggle="modal" data-bs-target="#userForm">New Technician <i class="bi bi-people"></i></button>
                    </div>
                </div>
                <div style="padding-top: 25px;overflow-x: auto;padding-bottom: 30px;" auto; padding-bottom: 30px;" class="table table-responsive-md">
                    <table class="table table-striped table-hover mt-3 text-center table-bordered" style="border-collapse: collapse;" id="example">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Age</th>
                                <th>city</th>
                                <th>Email</th>
                                <th>MobileNum</th>
                                <th>Address</th>
                                <th>StartDate</th>
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
                                <div class="row">
                                    <center>
                                        <div class="form-group">
                                            <label class="lbl" id="imageLabel" for="imageInput"><span style="color:red;">*</span>&nbsp;
                                                Click here to upload profile pic<br>
                                                <input class="form-control" type="file" id="imageInput" onclick="handleUpload()" style="display:none">
                                            </label>
                                        </div>
                                    </center>
                                </div>
                                <div class="row">
                                    <center>
                                        <div class="form-group">
                                            <div id="content" class="hidden">
                                                <img class="rounded" id="updateimage" alt="prof Image" style=" width: 200px;">
                                            </div>
                                            <img class="rounded" id="imagePreview" src="#" alt="Image Preview">
                                        </div>
                                    <center>
                                </div>
                                <!--<input type="file" id="fileInput" multiple>
                                <button type="button" onclick="handleUpload()">Upload</button>-->

                                <div class="inputField">
                                    <div  style="display: none">
                                        <label class="lbl" for="name">Id:</label>
                                        <input type="text" name="" id="id" disabled>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                          <label class="lbl" for="inputEmail4"><span style="color:red;">*</span>&nbsp;Name:</label>
                                          <input class="form-control" type="text" name="" id="name" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="inputEmail4"><span style="color:red;">*</span>&nbsp;Age:</label>
                                            <input class="form-control" type="number" name="" id="age" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="lbl" for="post"><span style="color:red;">*</span>&nbsp;Address:</label>
                                        <input type="text"class="form-control" name="" id="address" required>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                          <label class="lbl" for="city"><span style="color:red;">*</span>&nbsp;City:</label>
                                          <input type="text"class="form-control" name="" id="city" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="email"><span style="color:red;">*</span>&nbsp;E-mail:</label>
                                            <input class= "form-control" name="" id="email" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="phone"><span style="color:red;">*</span>&nbsp;Telephone Number:</label>
                                            <input type="text"class="form-control" type="email" name="" id="mobileNum" minlength="11" maxlength="11" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="lbl" for="sDate"><span style="color:red;">*</span>&nbsp;Start Date:</label>
                                            <input type="date" class="form-control" name="" id="startDate" required>
                                        </div>
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
                            <h4 class="modal-title">Profile</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <form action="#" id="myForm">
                                <center>
                                    <img id="showimage" alt="prof Image" style=" width: 200px;">
                                    <div class="inputField">
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="name">Id:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="text" name="" id="showid" disabled>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="name">Name:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="text" name="" id="showtname" disabled>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="age">Age:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="number" name="" id="showage" disabled>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="city">City:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="text" name="" id="showcity" disabled>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="email">E-mail:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="email" name="" id="showemail" disabled>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="phone">Number:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="text" name="" id="showmobileNum" minlength="11" maxlength="11" disabled>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="post">Post:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="text" name="" id="showaddress" disabled>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group  col-md-6">
                                                <label for="sDate">Start Date:</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <input class="form-control reqView" type="text" name="" id="showstartDate" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </center>
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
        var id=""; var name=""; var age=""; var city=""; var email=""; var mobileNum=""; var address=""; var startDate="";
        getPrefixData();
        $('#example').DataTable({
            
            ajax: {
                url: 'http://localhost:8080/LAS-Rest-Service/resources/technicians/',
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
                { data: "name", "render": 
                    function (data, type, row) {
                        name = row['name'];
                        return row['name'];
                    }
                },
                { data: "age", "render": 
                    function (data, type, row) {
                        age = row['age'];
                        return row['age'];
                    }
                }, 
                { 
                    data: "city", "render": 
                    function (data, type, row) {
                        city = row['city'];
                        return row['city'];
                    }                                                                                                                                                                                                                                                       
                },
                { data: "email", "render": 
                    function (data, type, row) {
                        email = row['email'];
                        return row['email'];
                    } 
                },
                { data: "mobileNum", "render": 
                    function (data, type, row) {
                        mobileNum = row['mobileNum'];
                        return row['mobileNum'];
                    } 
                },
                { data: "address", "render": 
                    function (data, type, row) {
                        address = row['address'];
                        return row['address'];
                    }
                },
                { data: "address", "render": 
                    function (data, type, row) {
                        address = row['startDate'];
                        return row['startDate'];
                    }
                },
                { 
                    data: "id", "render": function (data, type, row) {
                        debugger;
                        return '<button class="btn btn-primary" onclick="getTechnician(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#userForm"><i class="bi bi-pencil-square"></i></button>\n\
                \n\
                        <button class="btn btn-success" onclick="getTechnicianView(' + row['id'] + ')" data-bs-toggle="modal" data-bs-target="#readData"><i class="bi bi-eye"></i></button>\n\
                \n\
                        <button class="btn btn-danger" onclick="deleteInfo(' + row['id'] + ')"><i class="bi bi-trash"></i></button>';
                    }    
                }
                // Add more columns as needed
            ]
        });
        
        $('#imageInput').on('change', function (e) {
            const content = document.getElementById('content');
                // Get the selected file
                var file = e.target.files[0];

                // Check if a file is selected
                if (file) {
                    // Read the file as a Data URL
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        // Set the source of the image preview to the Data URL
                        $('#imagePreview').attr('src', e.target.result);
                    };
                    if(isEdit){
                        content.style.display = 'none';
                    }
                    reader.readAsDataURL(file);
                }
            });

            // Clear the input when the image is clicked
            $('#imagePreview').on('click', function () {
                $('#imageInput').val(null);
                $(this).attr('src', '#');
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
    
            const url = "http://localhost:8080/LAS-Rest-Service/resources/technicians/";
            const img=1 ;
            let isEdit = false;
            //function getTechnician() {
            const getTechnician = (id)=>{
                try {
                    const content = document.getElementById('content');
                    if(id == 0){
                        content.style.display = 'none';
                        document.querySelector("#id").value = "";
                        document.querySelector("#name").value = "";
                        document.querySelector("#age").value = ""; 
                        document.querySelector("#city").value = "";
                        document.querySelector("#email").value = "";
                        document.querySelector("#mobileNum").value = "";
                        document.querySelector("#address").value = "";
                        document.querySelector("#startDate").value = "";
                        //document.querySelector("#imagePreview").value = "";
                        var imageElement = document.getElementById("updateimage");
                        // Set the src attribute with the base64 image string
                        imageElement.src = "";
                        
                        var imageElement1 = document.getElementById("imagePreview");
                        // Set the src attribute with the base64 image string
                        imageElement1.src = "";
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
                                content.style.display = 'block';
                                document.querySelector("#id").value = data.id;
                                document.querySelector("#name").value = data.name;
                                document.querySelector("#age").value = data.age; 
                                document.querySelector("#city").value = data.city;
                                document.querySelector("#email").value = data.email;
                                document.querySelector("#mobileNum").value = data.mobileNum;
                                document.querySelector("#address").value = data.address;
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
                    }
                } catch (error) {
                    // Code to handle the exception
                    console.error('An error occurred:', error);
                }
                

            };
            
            const getTechnicianView = (id)=>{
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
                           document.querySelector("#showtname").value = data.name;
                           document.querySelector("#showage").value = data.age; 
                           document.querySelector("#showcity").value = data.city;
                           document.querySelector("#showemail").value = data.email;
                           document.querySelector("#showmobileNum").value = data.mobileNum;
                           document.querySelector("#showaddress").value = data.address;
                           document.querySelector("#showstartDate").value = data.startDate;
                           //document.querySelector("#showimage").value = data.image;
                           //var img = document.querySelector("#showimage");
                           var base64Image = data.image; // Replace with your actual base64 string
                            // Get the image element by id
                            var imageElement = document.getElementById("showimage");
                            // Set the src attribute with the base64 image string
                            imageElement.src = base64Image;
                        } else {
                            alert("Not found");
                        }

                     });
                } catch (error) {
                    console.error('An error occurred:', error);
                }
            };
            
            document.addEventListener('DOMContentLoaded', function () {
                // Fetch image data from the servlet using XMLHttpRequest
                var xhr = new XMLHttpRequest();
                xhr.open('GET', '/yourContextPath/getImage?id=1', true); // Adjust the URL and id parameter accordingly
                xhr.responseType = 'text';

                xhr.onload = function () {
                    if (xhr.status === 200) {
                        // Set the fetched Base64 data as the src attribute of the image
                        document.getElementById('imageDisplay').src = 'data:image/jpeg;base64,' + xhr.responseText;
                    }
                };

                xhr.send();
            });
            
            function addTechnician() {
                try{
                    if(document.getElementById("id").value != null && document.getElementById("id").value != ''){
                    let id = document.getElementById("id").value;
                        var input = document.getElementById('imageInput');
                        var file = input.files[0];
                        var reader = new FileReader();
                        reader.onload = function() {
                            var base64Image = reader.result;
                            // Send base64Image to server
                            console.log("Base64 Image: " + base64Image);
                            //set image file type and other details
                            //base64Image = "data:image/png;base64,"+base64Image;
                            
                            var sSate = document.getElementById("startDate").value;
                            var date = moment(sSate).format('MMM DD, YYYY');
                            const person ={
                                "id" : document.getElementById("id").value,
                                "name" : document.getElementById("name").value,
                                "age" : document.getElementById("age").value,
                                "city" :  document.getElementById("city").value,
                                "email" : document.getElementById("email").value,
                                "mobileNum" : document.getElementById("mobileNum").value,
                                "address" : document.getElementById("address").value,
                                "startDate" : date,
                                "image" : base64Image
                            };
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
                            
                        };
                        reader.readAsDataURL(file);
                    }
                    else{
                        var input = document.getElementById('imageInput');
                        var file = input.files[0];
                        var reader = new FileReader();
                        reader.onload = function() {
                            var base64Image = reader.result;
                            // Send base64Image to server
                            console.log("Base64 Image: " + base64Image);
                            //set image file type and other details
                            //base64Image = "data:image/png;base64,"+base64Image;
                            
                            var sSate = document.getElementById("startDate").value;
                            var date = moment(sSate).format('MMM DD, YYYY');
                            const person ={
                                "name" : document.getElementById("name").value,
                                "age" : document.getElementById("age").value,
                                "city" :  document.getElementById("city").value,
                                "email" : document.getElementById("email").value,
                                "mobileNum" : document.getElementById("mobileNum").value,
                                "address" : document.getElementById("address").value,
                                "startDate" : date,
                                "image" : base64Image
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
                            
                        };
                        reader.readAsDataURL(file);
                        
                        //handleUpload();
                        
                    }
                }catch (error) {
                    console.error('An error occurred:', error);
                }
            }
            
            function deleteInfo(index){
                if(confirm("Are you sure want to delete?")){
                    const options = {
                    method : "DELETE"
                    };
                    fetch(url + index, options).then(response => {
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
            
            function handleUpload() {
                const fileInput = document.getElementById('imageInput');

                if (fileInput.files.length > 0) {
                    for (const file of fileInput.files) {
                        const reader = new FileReader();

                        reader.onloadend = function () {
                            // Send the file name and Base64 data to the server
                            sendDataToServer(file.name, reader.result);
                            
                        };

                        reader.readAsDataURL(file);
                    }
                } else {
                    console.log("No files selected.");
                }
            }

            function sendDataToServer(fileName, base64Data) {
                // Use Ajax or other methods to send data to the server
                // For simplicity, we are logging the values here
                console.log(fileName);
                console.log(base64Data);
                //const paddedBase64Data = base64Data + "=";
                img = atob(base64Data);
                //img = Uint8Array.from(atob(base64Data), c => c.charCodeAt(0));
            }
         </script>
</body>

</html>
