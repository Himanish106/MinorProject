<%@page import="UserData.Userdata"%>
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
        <title>Edit Profile</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <% Userdata user = (Userdata) request.getSession().getAttribute("userData");%>
        <div class="container1">
            <div class="registration-box">
                <h1 class="set-font">Edit Your Profile</h1>
                <form
                    method="post"
                    id="reg-form"
                    action="EditProfile"
                    >
                    <h2>Account Information</h2>
                    <div class="email">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" value="<%= user.getEmail()%>" required />
                        <div id="validateEmail">
                            <!--                            <p id="emailMessage">Your email should be a valid email</p>-->
                        </div>
                    </div>

                    <label for="password" class="label-font">Password</label>
                    <div class="password-input-container">
                        <input type="password" id="password" name="password" value="<%= user.getPassword()%>" required />
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
                            value="<%= user.getPassword()%>"
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
                            value="<%= user.getFirstName()%>"
                            required
                            />
                        <input
                            type="text"
                            id="middleName"
                            name="middleName"
                            placeholder="Middle Name"
                            value="<%= user.getMiddleName() != null ? user.getMiddleName() : ""%>"
                            />
                        <input
                            type="text"
                            id="lastName"
                            name="lastName"
                            placeholder="Last Name"
                            value="<%= user.getLastName()%>"
                            required
                            />
                    </div>
                    <div id="nameFields"></div>
                    <label for="dob">Date of Birth</label>
                    <input type="date" id="dob" name="dob" value="<%= user.getDob()%>" required />
                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" value="<%= user.getAge()%>" readonly />
                    <div id="dobVerification"></div>
                    <label for="gender">Gender</label>

                    <select id="gender" name="gender">
                        <option value="#"<%= user.getGender() == null ? " selected" : ""%>>Select Your Gender</option>
                        <option value="male" <%= "male".equals(user.getGender()) ? " selected" : ""%>>Male</option>
                        <option value="female" <%= "female".equals(user.getGender()) ? " selected" : ""%>>Female</option>
                        <option value="other" <%= "other".equals(user.getGender()) ? " selected" : ""%>>Other</option>
                    </select>

                    <label for="qualification">Company Name You Work In(If Any)</label>
                    <input type="text" id="qualification" name="qualification" value="<%= user.getCompanyName()%>" required />
                    <div class="notWorking">
                        <p>
                            In case if you do not currently work in any company write
                            "Unemployed"
                        </p>
                    </div>

                    <label for="aadharNumber">Unique Identification Number</label>
                    <input type="number" id="aadharNumber" name="aadharNumber" value="<%= user.getAadharNumber()%>" required />
                    <div id="aadharLength"></div>

                    <h2>Contact Information</h2>
                    <input
                        type="number"
                        id="mobile"
                        name="mobile"
                        placeholder="Phone Number"
                        value="<%= user.getMobile()%>"
                        required
                        />
                    <div id="phoneNumber"></div>
                    <input
                        type="number"
                        id="whatsapp"
                        name="whatsapp"
                        placeholder="WhatsApp Number"
                        value="<%= user.getWhatsapp()%>"
                        required
                        />
                    <div id="whatsappNum"></div>
                    <input
                        type="text"
                        id="socialMedia"
                        name="socialMedia"
                        placeholder=" Your Social Media url wherever you are available"
                        value="<%= user.getSocialMedia()%>"
                        required
                        />
                    <input
                        type="number"
                        id="alternatePhn"
                        name="alternatePhn"
                        value="<%= user.getAlternatePhn()%>"
                        placeholder="Alternate Phone Number(if any)"
                        />
                    <div id="altPhn"></div>
                    <input
                        type="email"
                        id="altEmail"
                        name="altEmail"
                        value="<%= user.getAltEmail()%>"
                        placeholder="Alternate Email(if any)"
                        />

                    <div id="validatealtEmail">
                        <p>Your email should be a valid email</p>
                    </div>
                    <button type="button" class="back-button" id="back" onclick="window.history.back()">
                        Back
                    </button>
                    <button class="submit" type="submit" id="register">Submit</button>
                </form>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <script src="registration.js"></script>
    </body>
</html>

