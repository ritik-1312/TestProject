 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">

    <title>Registration Form</title>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- CDN part of Bootstrap -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <style>

        .form {

            width: 600px;

            border: 1px solid #000;

            padding: 20px;

            margin-top: 200px;

        }

        .error {

            color: red;

        }

    </style>

</head>

<body>

    <div class="d-flex justify-content-center align-items-center vh-100">

        <div class="form">

            <h1>Registration Form <span class="badge badge-secondary">New</span></h1>

            <form action="save-data" method="post" class="row g-3" id="registrationForm">

                 <div class="col-md-6">

    <label class="form-label">ID</label>

    <input type="text" class="form-control" id="inputAddress"  name="id" value="${id}"><br>

    <a class="btn btn-warning" href="generateid" role="button">Generate Id</a>

  </div>

    

    <div class="col-12">

    <label for="inputAddress" class="form-label">Name</label>

    <input type="text" class="form-control" id="inputName" placeholder="Jhon Doe" name="name">

    <div class="error" id="nameError"></div>

  </div>

                <div class="col-md-6">

                    <label for="inputPassword" class="form-label">Password</label>

                    <input type="password" class="form-control" id="inputPassword" name="password" >

                    <div class="error" id="passwordError"></div>

                </div>

                <div class="col-12">

                    <label for="inputGender" class="form-label">Gender</label>

                    <div class="form-check">

                        <input class="form-check-input" type="radio" name="gender" id="genderMale" value="1">

                        <label class="form-check-label" for="genderMale">Male</label>

                    </div>

                    <div class="form-check">

                        <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="2">

                        <label class="form-check-label" for="genderFemale">Female</label>

                    </div>

                </div>

                <div class="col-12">

                    <label for="inputEmail" class="form-label">Email</label>

                    <input type="email" class="form-control" id="inputEmail" name="email">

                    <div class="error" id="emailError"></div>

                </div>

                <div class="col-md-4">

                    <label for="inputCity" class="form-label">City</label>

                    <select id="inputCity" class="form-select" name="city" required>

                        <option selected disabled>Choose...</option>

                        <option value="Pune">Pune</option>

                        <option value="Nagpur">Nagpur</option>

                        <option value="Jaipur">Jaipur</option>

                        <option value="Indore">Indore</option>

                    </select>

                </div>

                <div class="col-12">

                    <label for="inputCourses" class="form-label">Select Courses</label>

                    <div class="form-check">

                        <input class="form-check-input" type="checkbox" id="courseJava" name="course" value="Java">

                        <label class="form-check-label" for="courseJava">Java</label>

                    </div>

                    <div class="form-check">

                        <input class="form-check-input" type="checkbox" id="coursePython" name="course" value="Python">

                        <label class="form-check-label" for="coursePython">Python</label>

                    </div>

                    <div class="form-check">

                        <input class="form-check-input" type="checkbox" id="courseCpp" name="course" value="Cpp">

                        <label class="form-check-label" for="courseCpp">C++</label>

                    </div>

                </div>

                <div class="col-12">

                    <button type="submit" class="btn btn-primary">Sign up</button>

                </div>

            </form>

        </div>

    </div>

    <script>

        document.getElementById('registrationForm').addEventListener('submit', function(event) {

            event.preventDefault();

            let isValid = true;



            // Clear previous error messages

            document.querySelectorAll('.error').forEach(function(element) {

                element.textContent = '';

            });



            // Username validation

            const username = document.getElementById('inputName').value;

            if (username.length < 3) {

                isValid = false;

                document.getElementById('nameError').textContent = 'Username must be at least 3 characters long.';

            }



            // Email validation

            const email = document.getElementById('inputEmail').value;

            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!emailPattern.test(email)) {

                isValid = false;

                document.getElementById('emailError').textContent = 'Please enter a valid email address.';

            }



            // Password validation

            const password = document.getElementById('inputPassword').value;

            const passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;

            if (!passwordPattern.test(password)) {

                isValid = false;

                document.getElementById('passwordError').textContent = 'Password must contain at least one number, one uppercase and lowercase letter, and at least 8 or more characters.';

            }



            // If the form is valid, submit it

            if (isValid) {

                this.submit();

            }

        });

    </script>

</body>

</html>

