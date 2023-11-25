<%-- Document : email_forget_password Created on : 2 Nov, 2023, 2:22:38 AM
Author : Himanish --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/home.css" />
        <link rel="stylesheet" href="./css/frgtpass.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Enter Email</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container1">
            <div class="verification-box">
                <h1 class="head-font">Please Enter Your Registered Email</h1>
                <form action="FetchEmail" method="post">
                    <input
                        type="email"
                        name="email"
                        id="otp"
                        placeholder="Enter Your Email"
                        required
                        />
                    <div class="button-container">
                        <button class="back-button" onclick="window.history.back()">
                            Back
                        </button>
                        <button class="verify-button" type="submit">Send OTP</button>
                    </div>
                </form>
            </div>
        </div>
        <footer class="footer">
            <div class="social-media-links">
                <a href="your-facebook-link" target="_blank">
                    <i class="fab fa-facebook fa-4x"></i>
                </a>
                <a href="your-twitter-link" target="_blank">
                    <i class="fab fa-twitter fa-4x"></i>
                </a>
                <a href="your-instagram-link" target="_blank">
                    <i class="fab fa-instagram fa-4x"></i>
                </a>
            </div>
            <p class="captions">WebCraftedPro &copy; 2023, All rights reserved</p>
        </footer>
    </body>
</html>
