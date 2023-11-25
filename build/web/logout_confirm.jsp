<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Log Out?</title>
        <link rel="stylesheet" href="./css/logout.css" />
        <link rel="stylesheet" href="./css/home.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container1">
            <div class="logout-container">
                <p class="captions fonts">Are you sure you want to logout?</p>
                <div class="logout-buttons">
                    <button id="logoutnotButton">No</button>
                    <button id="logoutButton">Yes</button>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <script>
            const logoutButton = document.getElementById("logoutButton");
            logoutButton.addEventListener("click", () => {
                window.location.href = "Logout";
            });
            const logoutnotButton = document.getElementById("logoutnotButton");
            logoutnotButton.addEventListener("click", function () {
                window.history.back();
            });
        </script>
    </body>
</html>
