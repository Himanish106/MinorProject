<%@page import="Message.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/home.css" />
        <link rel="stylesheet" href="./css/contactus.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Contact Us</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container1 container">
            <div class="contact-info">
                <h1 class="main-caption heading">Contact Information</h1>
                <div class="company-name">
                    <i class="fa-solid fa-4x fa-building company-icons"></i>
                    <p class="para-padding font">
                        <strong>Company Name: </strong>WebCraftedPro
                    </p>
                </div>
                <div class="phone">
                    <i
                        class="fa-sharp fa-solid fa-square-phone fa-4x text-red company-icons"
                        ></i>
                    <p class="para-padding font"><strong>Phone: </strong>+919073889463</p>
                </div>
                <div class="email">
                    <i class="far fa-envelope fa-solid fa-3x text-red company-icons"></i>
                    <p class="para-padding font">
                        <strong>Email: </strong>webcraftedpro22@gmail.com
                    </p>
                </div>
                <div class="company-address">
                    <i class="fas fa-map-marker-alt fa-3x text-red company-icons"></i>
                    <p class="para-padding font">
                        <strong>Address:</strong> 23/1 Royd Street, Kolkata, India
                    </p>
                </div>
                <iframe
                    src="https://www.google.com/maps/d/u/0/embed?mid=1nGyJk7s-53iF5JAnhkyo-nwspJlXqhw&ehbc=2E312F&noprof=1"
                    height="250"
                    ></iframe>
            </div>
            <div class="contact-form">
                <h1 class="main-caption heading">Contact Us</h1>
                <p class="padding font">
                    We'd love to hear from you! Feel free to send us a message:
                </p>
                <%
                    Message m = (Message) session.getAttribute("msg");
                    if (m != null) {
                %>
                <div class="<%= m.getCssClass()%>"> <%= m.getContent()%></div>
                <%
                        session.removeAttribute("msg");
                    }
                %>
                <form action="ContactUs" method="post">
                    <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Your Name"
                        required
                        />
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Your Email"
                        required
                        />
                    <textarea
                        id="message"
                        name="message"
                        rows="10"
                        placeholder="Your Message"
                        required
                        ></textarea>
                    <div class="word-limit" id="wordLimit"></div>
                    <button type="submit" class="send" id="send">Send</button>
                </form>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
    <script src="contact_us.js"></script>
</html>
