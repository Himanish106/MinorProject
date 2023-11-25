<%@page import="Message.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/home.css" />
        <link rel="stylesheet" href="css/login.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Admin Login - WebCraftedPro</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="login-container">
            <div class="login-box">
                <h1 class="login-logo">Welcome !!!</h1>
                <%
                    Message m = (Message) session.getAttribute("msg");
                    if (m != null) {
                %>
                <div class="<%= m.getCssClass()%>"> <%= m.getContent()%></div>
                <%
                        session.removeAttribute("msg");
                    }%>
                <form action="adminLogin" method="post">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required />

                    <label for="password" class="label-font">Password:</label>
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
                    <div class="captcha-box">
                        <div class="generated-captcha">
                            <input
                                type="text"
                                name=""
                                id="captchaGenerator"
                                value=""
                                disabled
                                />
                            <button class="refresh-button" id="refreshButton" type="button">
                                <i class="fa-solid fa-rotate-right"></i>
                            </button>
                        </div>
                        <div class="captcha-input">
                            <input
                                type="text"
                                name=""
                                id="captchaInput"
                                placeholder="Enter captcha"
                                />
                            <div class="captcha-message" id="message"></div>
                        </div>
                    </div>
                    <div class="terms-link">
                        <input type="checkbox" id="acceptTerms" required />
                        <label for="acceptTerms"
                               >I agree to the
                            <a
                                href="../Terms and Conditions/testTerms.html"
                                target="_blank"
                                class="terms"
                                >Terms and Conditions</a
                            ></label
                        >
                    </div>
                    <div class="buttons">
                        <button class="back-button" type="button" onclick="history.back()">
                            Back
                        </button>
                        <button
                            class="login-button"
                            id="loginButton"
                            onclick="window.location.href = 'home.html'"
                            disabled
                            >
                            Login
                        </button>
                    </div>
                </form>
                <div class="options">
                    <a href="Login.jsp">Login as User</a>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <script src="login.js"></script>
    </body>
</html>
