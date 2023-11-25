<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link rel="stylesheet" href="css/home.css" />
        <link rel="stylesheet" href="css/registration.css" />
        <title>User Registration</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container1">
            <div class="registration-box">
                <h1 class="set-font">User Registration</h1>
                <form
                    method="post"
                    id="reg-form"
                    action="Register"
                    enctype="multipart/form-data"
                    >
                    <h2>Account Information</h2>
                    <div class="email">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required />
                        <div id="validateEmail">
<!--                            <p id="emailMessage">Your email should be a valid email</p>-->
                        </div>
                    </div>

                    <label for="password" class="label-font">Password</label>
                    <div class="password-input-container">
                        <input type="password" id="password" name="password" required />
                        <button
                            type="button"
                            id="password-toggle"
                            class="password-toggle-button"
                            >
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                    <div id="validatePassword">
                        <p></p>
                    </div>
                    <label for="confirmPassword" class="label-font"
                           >Confirm Password</label
                    >
                    <div class="password-input-container">
                        <input
                            type="password"
                            id="confirmPassword"
                            name="confirmPassword"
                            required
                            />
                        <button
                            type="button"
                            id="confirmPassword-toggle"
                            class="password-toggle-button"
                            >
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                    <div id="confirmMsg"></div>
                    <h2>Personal Details</h2>
                    <div class="name-inputs">
                        <input
                            type="text"
                            id="firstName"
                            name="firstName"
                            placeholder="First Name"
                            required
                            />
                        <input
                            type="text"
                            id="middleName"
                            name="middleName"
                            placeholder="Middle Name"
                            />
                        <input
                            type="text"
                            id="lastName"
                            name="lastName"
                            placeholder="Last Name"
                            required
                            />
                    </div>
                    <div id="nameFields"></div>
                    <label for="dob">Date of Birth</label>
                    <input type="date" id="dob" name="dob" required />
                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" readonly />
                    <div id="dobVerification"></div>
                    <label for="gender">Gender</label>
                    <select id="gender" name="gender">
                        <option value="#">Select Your Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>

                    <label for="qualification">Company Name You Work In(If Any)</label>
                    <input type="text" id="qualification" name="qualification" required />
                    <div class="notWorking">
                        <p>
                            In case if you do not currently work in any company write
                            "Unemployed"
                        </p>
                    </div>

                    <label for="aadharNumber">Unique Identification Number</label>
                    <input type="number" id="aadharNumber" name="aadharNumber" required />
                    <div id="aadharLength"></div>

                    <label for="profilephoto">Profile Photo</label>
                    <input
                        type="file"
                        id="profilephoto"
                        name="profilePhoto"
                        accept="image/*"
                        required
                        />

                    <h2>Contact Information</h2>
                    <input
                        type="number"
                        id="mobile"
                        name="mobile"
                        placeholder="Phone Number"
                        required
                        />
                    <div id="phoneNumber"></div>
                    <input
                        type="number"
                        id="whatsapp"
                        name="whatsapp"
                        placeholder="WhatsApp Number"
                        required
                        />
                    <div id="whatsappNum"></div>
                    <input
                        type="text"
                        id="socialMedia"
                        name="socialMedia"
                        placeholder=" Your Social Media url wherever you are available"
                        required
                        />
                    <input
                        type="number"
                        id="alternatePhn"
                        name="alternatePhn"
                        placeholder="Alternate Phone Number(if any)"
                        />
                    <div id="altPhn"></div>
                    <input
                        type="email"
                        id="altEmail"
                        name="altEmail"
                        placeholder="Alternate Email(if any)"
                        />

                    <div id="validatealtEmail">
                        <p>Your email should be a valid email</p>
                    </div>
                    <button class="back-button" id="back" onclick="window.history.back()">
                        Back
                    </button>
                    <button class="submit" type="submit" id="register">Register</button>
                </form>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <script src="registration.js"></script>
    </body>
</html>
