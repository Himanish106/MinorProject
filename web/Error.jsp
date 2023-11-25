<%-- 
    Document   : Error
    Created on : 30 Oct, 2023, 10:25:21 AM
    Author     : Himanish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
            />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link href="css/index.css" rel="stylesheet" type="text/css" />
        <style>
            .banner-background {
                clip-path: polygon(
                    30% 0%,
                    70% 0%,
                    100% 0,
                    100% 88%,
                    60% 99%,
                    30% 93%,
                    0 100%,
                    0 0
                    );
            }
        </style>
        <title>Sorry Something went wrong</title>
    </head>
    <body>
        <div class="container text-center">
            <img
                src="Images/computer.png"
                alt="error"
                class="img-fluid"
                style="width: 400px"
                />
            <h3 class="display-3">Something went wrong...</h3>
            <a
                href="index.jsp"
                class="btn primary-background btn-lg text-white mt-3"
                >Home</a>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"
        ></script>
        <script src="JS/index.js" type="text/javascript"></script>
    </body>
</html>

