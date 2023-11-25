<%@page import="Message.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/feedback.css" />
        <link rel="stylesheet" href="./css/home.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Feedback</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <section class="container1">
            <div class="feedback-box">
                <h1>Feedback</h1>
                <%
                    Message m = (Message) session.getAttribute("msg");
                    if (m != null) {
                %>
                <div class="<%= m.getCssClass()%>"> <%= m.getContent()%></div>
                <%
                        session.removeAttribute("msg");
                    }%>
                <form method="post" action="Feedback">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required />

                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required />

                    <label for="Contact">Contact</label>
                    <input type="number" id="Contact" name="Contact" required />

                    <label for="feedback">Feedback</label>
                    <textarea id="feedback" name="feedback" rows="6" required></textarea>
                    <button href="#" class="btn btn-secondary font-size">Submit</button>
                </form>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
