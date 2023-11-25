<%@page import="Message.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>JSP Page</title>
    </head>
    <body>
        <!-- NAVBAR -->
        <nav class="navbar">
            <div class="navbar-container container">
                <input type="checkbox" />
                <div class="hamburger-lines">
                    <span class="line line1"></span>
                    <span class="line line2"></span>
                    <span class="line line3"></span>
                </div>
                <ul class="menu-items">
                    <li><a href="<%= request.getContextPath()%>/home.jsp">Home</a></li>
                    <li><a href="<%= request.getContextPath()%>/About.jsp">About</a></li>
                        <% if (session.getAttribute("currentUser") != null) {%>
                    <li><a href="<%= request.getContextPath()%>/Contact_Us.jsp">Contact</a></li>
                        <% } else {%>
                    <li><a href="<%= request.getContextPath()%>/Login.jsp">Contact</a></li>
                        <% }%>
                    <li>
                        <a href="<%= request.getContextPath()%>/product_showcase.jsp">Products</a>
                    </li>
                    <% if (session.getAttribute("currentUser") != null) {%>
                    <li><a href="<%= request.getContextPath()%>/feedback.jsp">Feedback</a></li>
                        <% } else {
                        %>
                    <li><a href="<%= request.getContextPath()%>/Login.jsp">Feedback</a></li>
                        <%
                            }%>
                        <% if (session.getAttribute("currentUser") != null) {%>
                    <li><a href="profile.jsp">Welcome, <%= session.getAttribute("currentUser")%></a></li>

                    <li><a href="<%= request.getContextPath()%>/logout_confirm.jsp">Logout</a></li>
                        <% } else if (session.getAttribute("adminUser") != null) {
                        %>
                    <li><a href="admin_panel.jsp">Welcome, <%= session.getAttribute("adminUser")%></a></li>
                    <li><a href="<%= request.getContextPath()%>/logout_confirm.jsp">Logout</a></li>                
                        <% } else {
                        %>
                    <li><a href="<%= request.getContextPath()%>/Login.jsp">Login</a></li>
                        <% }%>
                </ul>
                <h1 class="logo">WebCraftedPro</h1>
            </div>
        </nav>
    </body>
</html>
