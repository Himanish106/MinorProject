<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/home.css" />
        <link rel="stylesheet" href="./css/frgtpass.css" />
        <link rel="stylesheet" href="./css/registration.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>New Password Set</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container1">
            <div class="verification-box">
                <h1 class="head-font">New Password Set</h1>
                <p class="font">Enter your new password below.</p>
                <form action="NewPassword" method="post">
                    <div class="password-input-container">
                        <input
                            type="password"
                            id="password"
                            name="password"
                            placeholder="Enter New Password"
                            required
                            />
                        <button
                            type="button"
                            id="password-toggle"
                            class="password-toggle-button"
                            >
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                    <div id="validatePassword">Password is Invalid</div>
                    <br />
                    <br />
                    <div class="password-input-container">
                        <input
                            type="password"
                            id="new-password"
                            name="new-password"
                            placeholder="Confirm New Password"
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
                    <div class="button-container">
                        <button class="back-button" onclick="window.history.back()">
                            Back
                        </button>
                        <button class="verify-button" type="submit" id="register">
                            Confirm
                        </button>
                    </div>
            </div>
        </form>
    </div>
        <%@include file="footer.jsp" %>
    <script src="newpassword.js"></script>
</body>
</html>
