var form = document.getElementById("myForm"),
    imgInput = document.querySelector(".img"),
    file = document.getElementById("imgInput"),
    userName = document.getElementById("name"),
    age = document.getElementById("age"),
    city = document.getElementById("city"),
    email = document.getElementById("email"),
    phone = document.getElementById("phone"),
    post = document.getElementById("post"),
    sDate = document.getElementById("sDate"),
    submitBtn = document.querySelector(".submit"),
    userInfo = document.getElementById("data"),
    modal = document.getElementById("userForm"),
    modalTitle = document.querySelector("#userForm .modal-title"),
    newUserBtn = document.querySelector(".newUser")


let getData = localStorage.getItem('userProfile') ? JSON.parse(localStorage.getItem('userProfile')) : []

let isEdit = false, editId
showInfo()

newUserBtn.addEventListener('click', ()=> {
    submitBtn.innerText = 'Submit',
    modalTitle.innerText = "Fill the Form"
    isEdit = false
    imgInput.src = "./image/Profile Icon.webp"
    form.reset()
})


file.onchange = function(){
    if(file.files[0].size < 1000000){  // 1MB = 1000000
        var fileReader = new FileReader();

        fileReader.onload = function(e){
            imgUrl = e.target.result
            imgInput.src = imgUrl
        }

        fileReader.readAsDataURL(file.files[0])
    }
    else{
        alert("This file is too large!")
    }
}


function showInfo(){
    document.querySelectorAll('.employeeDetails').forEach(info => info.remove());
    const options = {
                    method : "GET"
                };
                fetch("http://localhost:8080/LAS-Rest-Service/resources/technicians/", options)
                 .then(res => res.json())
                 .then(data => {
                            if (data !== null) {
                               //document.getElementById("txtId").value = data.id;
                               //document.getElementById("txtName").value = data.name; 
                               //document.getElementById("txtAge").value = data.age; 
                               //document.getElementById("txtCity").value = data.city; 
                               //document.getElementById("txtEmail").value = data.email; 
                               //document.getElementById("txtMobileNum").value = data.mobileNum; 
                               //document.getElementById("txtAddress").value = data.address; 
                               //document.getElementById("txtStartDate").value = data.startDate;  
                               
                               getData.forEach((data, index) => {
                                let createElement = `<tr class="employeeDetails">
                                    <td>${data.employeeAge}</td>
                                    <td><img src="data:image/jpeg;base64,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" alt="" width="50" height="50"></td>
                                    <td>${data.employeeName}</td>
                                    <td>${data.employeeAge}</td>
                                    <td>${data.employeeCity}</td>
                                    <td>${data.employeeEmail}</td>
                                    <td>${data.employeePhone}</td>
                                    <td>${data.employeePost}</td>
                                    <td>${data.startDate}</td>


                                    <td>
                                        <button class="btn btn-success" onclick="readInfo('${element.picture}', '${element.name}', '${element.age}', '${element.city}', '${element.email}', '${element.mobileNum}', '${element.address}', '${element.startDate}')" data-bs-toggle="modal" data-bs-target="#readData"><i class="bi bi-eye"></i></button>

                                        <button class="btn btn-primary" onclick="editInfo(${index}, '${element.picture}', '${element.name}', '${element.age}', '${element.city}', '${element.email}', '${element.mobileNum}', '${element.address}', '${element.startDate}')" data-bs-toggle="modal" data-bs-target="#userForm"><i class="bi bi-pencil-square"></i></button>

                                        <button class="btn btn-danger" onclick="deleteInfo(${index})"><i class="bi bi-trash"></i></button>

                                    </td>
                                </tr>`

                                userInfo.innerHTML += createElement
                            })
    
                            } else {
                                alert("Not found");
                            }
                            
                        });
    
}
showInfo()


function readInfo(pic, name, age, city, email, phone, post, sDate){
    document.querySelector('.showImg').src = pic,
    document.querySelector('#showName').value = name,
    document.querySelector("#showAge").value = age,
    document.querySelector("#showCity").value = city,
    document.querySelector("#showEmail").value = email,
    document.querySelector("#showPhone").value = phone,
    document.querySelector("#showPost").value = post,
    document.querySelector("#showsDate").value = sDate
}


function editInfo(index, pic, name, Age, City, Email, Phone, Post, Sdate){
    isEdit = true
    editId = index
    imgInput.src = pic
    userName.value = name
    age.value = Age
    city.value =City
    email.value = Email,
    phone.value = Phone,
    post.value = Post,
    sDate.value = Sdate

    submitBtn.innerText = "Update"
    modalTitle.innerText = "Update The Form"
}


function deleteInfo(index){
    if(confirm("Are you sure want to delete?")){
        getData.splice(index, 1)
        localStorage.setItem("userProfile", JSON.stringify(getData))
        showInfo()
    }
}


form.addEventListener('submit', (e)=> {
    e.preventDefault()

    const information = {
        picture: imgInput.src == undefined ? "./image/Profile Icon.webp" : imgInput.src,
        name: userName.value,
        age: age.value,
        city: city.value,
        email: email.value,
        mobileNum: phone.value,
        address: post.value,
        startDate: sDate.value
    }

    if(!isEdit){
        getData.push(information)
    }
    else{
        isEdit = false
        getData[editId] = information
    }

    localStorage.setItem('userProfile', JSON.stringify(getData))

    submitBtn.innerText = "Submit"
    modalTitle.innerHTML = "Fill The Form"

    showInfo()

    form.reset()

    imgInput.src = "./image/Profile Icon.webp"  

    // modal.style.display = "none"
    // document.querySelector(".modal-backdrop").remove()
})