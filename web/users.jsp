<%-- Document : admin_panel Created on : 11 Nov, 2023, 1:59:08 PM Author :
Himanish --%> <%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.SQLException"%>
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
        <title>User Database</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="main-table">
            <div class="scrollable-table">
                <table border="1">
                    <thead class="fixed-header">
                        <tr>
                            <th>ID</th>
                            <th>Email</th>
                            <th>FirstName</th>
                            <th>MiddleName</th>
                            <th>LastName</th>
                            <th class="dob">DOB</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Company Name</th>
                            <th>Identification Number</th>
                            <th>Mobile</th>
                            <th>WhatsApp</th>
                            <th>Social Media</th>
                            <th>Alternate Phone Number</th>
                            <th>Alternate Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% try {
                                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                                String query = "select * from registration";
                                OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(query);
                                ResultSet resultSet = ops.executeQuery();
                                while (resultSet.next()) {%>
                        <tr>
                            <td><%=resultSet.getInt("id")%></td>
                            <td><%=resultSet.getString("email")%></td>
                            <td><%=resultSet.getString("firstname")%></td>
                            <td><%= resultSet.getString("middlename") != null ? resultSet.getString("middlename") : "-"%></td>
                            <td><%=resultSet.getString("lastname")%></td>
                            <td class="dob"><%=resultSet.getDate("dob")%></td>
                            <td><%=resultSet.getInt("age")%></td>
                            <td><%=resultSet.getString("gender")%></td>
                            <td><%=resultSet.getString("companyname")%></td>
                            <td><%=resultSet.getLong("aadharnumber")%></td>
                            <td><%=resultSet.getLong("mobile")%></td>
                            <td><%=resultSet.getLong("whatsapp")%></td>
                            <td><%=resultSet.getString("socialmedia")%></td>
                            <td><%=resultSet.getLong("alternatephn")%></td>
                            <td><%=resultSet.getString("altemail")%></td>
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
