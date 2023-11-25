<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/home.css" />
        <link rel="stylesheet" href="css/admin_panel.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Admin Panel</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="admin-container">
            <div class="admin-sections">
                <div class="registration-section">
                    <button onclick="window.location.href = 'users.jsp'">
                        <span><i class="fa-solid fa-user"></i></span>&nbsp;Users
                    </button>
                </div>
                <div class="product-section">
                    <button onclick="window.location.href = 'products_database.jsp'">
                        <span><i class="fa-solid fa-cart-shopping"></i></span>&nbsp;Products
                    </button>
                </div>
                <div class="feedback-section">
                    <button onclick="window.location.href = 'feedback_database.jsp'">
                        <span><i class="fa-solid fa-message"></i></span>&nbsp; Feedbacks
                    </button>
                </div>
                <div class="contact-section">
                    <button onclick="window.location.href = 'contact_us_database.jsp'"><span><i class="fa-solid fa-phone"></i></span>&nbsp; Contacts</button>
                </div>
                <div class="payment-section">
                    <button onclick="window.window.location.href = 'payment_database.jsp'"><span><i class="fa-sharp fa-solid fa-credit-card"></i></span>&nbsp; Payment</button>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>

