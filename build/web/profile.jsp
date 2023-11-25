<%@page import="java.util.Base64"%>
<%@page import="java.util.ArrayList"%>
<%@page import="UserData.Userdata"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/home.css" />
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
        />
    <link rel="stylesheet" href="css/profile.css" />
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css"
        />
    <% Userdata user = (Userdata) request.getSession().getAttribute("userData");%>
    <title>Welcome <%=user.getFirstName()%></title>
</head>

<%@include file="navbar.jsp" %>
<div class="user-profile">
    <div class="profile-form">
        <form action="">
            <div class="profile-img">
                <a
                    href="../Images/ceo-photo (1).jpg"
                    data-lightbox="profile-image"
                    data-title="Profile Picture"
                    target="_blank"
                    >
                    <img
                        src="data:image/jpeg;base64, <%= new String(Base64.getEncoder().encode(user.getImage()))%>"
                        alt=""
                        data-lightbox="profile-image"
                        data-title="Profile Picture"
                        />
                </a>
            </div>
            <div class="profile-details">
                <div class="username">
                    <input
                        type="text"
                        id="name"
                        name="name"
                        value="<%= user.getFirstName() + ' ' + (user.getMiddleName() != null ? user.getMiddleName() : "") + ' ' + user.getLastName()%>"
                        readonly
                        />
                </div>

                <div class="personal-details">
                    <div class="age">
                        <label for="age">Age: &nbsp;</label>
                        <input type="number" name="age" id="age" value="<%= user.getAge()%>" readonly />
                    </div>
                    <div class="email">
                        <label for="email">Email: &nbsp;</label>
                        <input
                            type="email"
                            id="email"
                            name="email"
                            value="<%= user.getEmail()%>"
                            readonly
                            />
                    </div>
                    <div class="password">
                        <label for="password">Password: &nbsp;</label>

                        <input
                            type="password"
                            id="password"
                            name="password"
                            value="<%= user.getPassword()%>"
                            readonly
                            />
                    </div>
                    <div class="contact">
                        <label for="contact">Contact: &nbsp;</label>

                        <input
                            type="number"
                            id="contact"
                            name="contact"
                            value="<%= user.getMobile()%>"
                            readonly
                            />
                    </div>
                    <div class="WhatsApp">
                        <label for="whatsapp">WhatsApp: &nbsp;</label>

                        <input
                            type="number"
                            id="whatsapp"
                            name="whatsapp"
                            value="<%= user.getWhatsapp()%>"
                            readonly
                            />
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="user-form">
        <form action="">
            <div class="dob">
                <label for="dob">Date of Birth:</label>
                <input
                    type="date"
                    id="myDate"
                    value="<%= user.getDob()%>"
                    name="dob"
                    readonly
                    />
            </div>
            <div class="aadhar">
                <label for="aadhar">Unique Identification Number:</label>
                <input
                    type="password"
                    id="aadhar"
                    value="<%= user.getAadharNumber()%>"
                    name="aadhar"
                    readonly
                    />
            </div>
            <div class="company">
                <label for="company">Company Name:</label>
                <input
                    type="text"
                    id="company"
                    value="<%= user.getCompanyName()%>"
                    name="company"
                    readonly
                    />
            </div>
            <div class="socialMedia">
                <label for="socialMedia">Social Media Link</label>
                <input
                    type="text"
                    id="company"
                    value="<%= user.getSocialMedia()%>"
                    name="company"
                    readonly
                    onclick="window.open(this.value, '_blank');"
                    style="cursor: pointer; text-decoration: underline; color: black"
                    />
                <div class="alternateEmail">
                    <label for="altEmail">Alternate Email:</label>
                    <input
                        type="email"
                        id="altEmail"
                        value="<%= user.getAltEmail()%>"
                        name="altEmail"
                        readonly
                        />
                </div>
                <div class="alternateNumber">
                    <label for="altNum">Alternate Number:</label>
                    <input
                        type="number"
                        id="altNum"
                        value="<%= user.getAlternatePhn()%>"
                        name="altNum"
                        readonly
                        />
                </div>
                <div class="edit-button">
                    <button
                        type="button"
                        onclick="window.location.href = 'editprofile.jsp';"
                        >
                        Edit Profile
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
<%@include file="footer.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>


