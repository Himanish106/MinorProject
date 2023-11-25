<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link rel="stylesheet" href="css/users.css">
        <link rel="stylesheet" href="css/home.css">
        <title>Feedback Database</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="main-table">
            <div class="scrollable-table">
                <table border="1">
                    <thead class="fixed-header">
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Contact</th>
                            <th>Feedback</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% try {
                                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                                String query = "select * from feedback";
                                OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(query);
                                ResultSet resultSet = ops.executeQuery();
                                while (resultSet.next()) {%>
                        <tr>
                            <td><%=resultSet.getString("Name")%></td>
                            <td><%=resultSet.getString("Email")%></td>
                            <td><%=resultSet.getLong("Contact")%></td>
                            <td><%=resultSet.getString("Feedback")%></td>
                        </tr>
                        <% }
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }%>

                    </tbody>
                </table>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>