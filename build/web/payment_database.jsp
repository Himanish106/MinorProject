<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link rel="stylesheet" href="css/users.css">
        <link rel="stylesheet" href="css/home.css">
        <title>Payment Database</title>
    </head>
    <%@include file="navbar.jsp" %>
    <div class="main-table">
        <div class="scrollable-table">
            <table border="1">
                <thead class="fixed-header">
                    <tr>
                        <th>Ordered By</th>
                        <th>Product Name</th>
                        <th>No of Pages</th>
                        <th>Total Price Paid</th>
                        <th>Requirements</th>
                        <th>Delete Data</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                            OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                            String query = "select * from payment";
                            OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(query);
                            ResultSet resultSet = ops.executeQuery();
                            while (resultSet.next()) {%>
                    <tr>
                        <td><%=resultSet.getString("ordered_by")%></td>
                        <td><%=resultSet.getString("productname")%></td>
                        <td><%=resultSet.getInt("No_of_pages")%></td>
                        <td><%=resultSet.getInt("total_price")%></td>
                        <td><%=resultSet.getString("requirements")%></td>
                <form action="DeleteData" method="post">
                    <input type="hidden" name="fetchEmail" value="<%=resultSet.getString("ordered_by")%>">
                    <td><button type="submit">Delete</button></td>
                </form>
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
</html>
