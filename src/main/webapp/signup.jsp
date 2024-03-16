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
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!--Bootstrap 5 icons CDN-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/265505339c.js" crossorigin="anonymous"></script>
    
    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="css/logReg.css" />
    <script src="js/moment.js"></script>
</script>
<style>
        

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
    </style>
<script>
    $(document).ready(function() {
        
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
    
            const url = "http://localhost:8080/LAS-Rest-Service/resources/signup/";
            const img=1 ;
            let isEdit = false;
            
            
            function btnregister() {
                try{
                    var input = document.getElementById('imageInput');
                    var file = input.files[0];
                    var reader = new FileReader();
                    debugger;
                    reader.onload = function() {
                        var base64Image = reader.result;
                        // Send base64Image to server
                        console.log("Base64 Image: " + base64Image);
                        //set image file type and other details
                        //base64Image = "data:image/png;base64,"+base64Image;

                        var sSate = document.getElementById("dob").value;
                        var dob = moment(sSate).format('MMM DD, YYYY');
                        const radioButtons = document.getElementsByName('gender');
                            let selectedValue;

                            for (const radioButton of radioButtons) {
                              if (radioButton.checked) {
                                selectedValue = radioButton.value;
                                break;
                              }
                            }
                        const patient ={
                            "name" : document.getElementById("name").value,
                            "email" : document.getElementById("email").value,
                            "mobileNum" : document.getElementById("mobileNum").value,
                            "dob" : dob,
                            "gender" : selectedValue,
                            "address" : document.getElementById("address").value,
                            "image" : base64Image
                        };
                        debugger;
                        const options = {
                           method : "POST", 
                           headers : {
                               "content-type" : "application/json"
                           },
                           body : JSON.stringify(patient)
                        };
                        fetch(url, options).then(response => {
                            if (!response.ok) {
                                alert("Failed to registration. Please try again.");
                                location.reload();
                                //throw new Error(`HTTP error! Status: ${response.status}`);
                            }else{
                                alert("Registration successfully !");
                                location.reload();
                            }
                            return response.json();
                        });

                    };
                    reader.readAsDataURL(file);

                }catch (error) {
                    console.error('An error occurred:', error);
                }
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
</head>

<body>
    <section class="container">
      <header>Registration Form</header>
      <form action="#" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" placeholder="Enter full name" id="name" required />
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="text" placeholder="Enter email address" id="email" required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="number" placeholder="Enter phone number" id="mobileNum" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" placeholder="Enter birth date" id="dob" required />
          </div>
        </div>
        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" id="check-male" name="gender" value="1" checked />
              <label for="check-male">male</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-female" name="gender" value="2"  />
              <label for="check-female">Female</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-other" name="gender" value="3" />
              <label for="check-other">prefer not to say</label>
            </div>
          </div>
        </div>
        <div class="input-box address">
          <label>Address</label>
          <input type="text" placeholder="Enter street address" id="address" required />
        </div>
		<div class="input-box">
			<label id="imageLabel" for="imageInput">
				Click here to upload profile image<br>
				<input type="file" id="imageInput" onclick="handleUpload()" style="display:none">
			</label>
			<img style="width: 300px;" id="imagePreview" src="#" alt="Image Preview">
		</div>
		
        <button onclick='btnregister()'>Submit</button>
      </form>
    </section>
  </body>

</html>
