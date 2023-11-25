<%@page import="Message.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/frgtpass.css" />
        <link rel="stylesheet" href="./css/home.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>OTP Verification</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container1">
            <div class="verification-box">
                <h1 class="head-font">OTP Verification</h1>

                <p class="font">Please enter the OTP sent to your email address.</p>
                <%
                    Message m = (Message) session.getAttribute("msg");
                    if (m != null) {
                %>
                <div class="<%= m.getCssClass()%>">
                    <%= m.getContent()%>
                </div>
                <%
                        session.removeAttribute("msg");
                    }
                %>
                <form method="POST" action="OTPverify">
                    <input
                        type="number"
                        id="otp"
                        placeholder="Enter OTP"
                        name="otp"
                        required
                        />
                    <div class="button-container">
                        <button class="back-button" onclick="window.history.back()">
                            Back
                        </button>
                        <button class="verify-button" type="submit">Verify</button>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
