<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
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
        <title>Products</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="main-table">
            <div class="scrollable-table">
                <table border="1">
                    <thead class="fixed-header">
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Price</th>
                            <th>Save Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% try {
                                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                                String query = "select * from products";
                                OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(query);
                                ResultSet resultSet = ops.executeQuery();
                                while (resultSet.next()) {%>
                        <tr>
                            <td><%= resultSet.getInt("ID")%></td>
                            <td><%= resultSet.getString("productname")%></td>
                    <form action="UpdatePrice" method="post">       
                        <input type="hidden" name="id" value="<%= resultSet.getInt("ID")%>" />
                        <td>
                            <input type="number" name="price" id="price" value="<%= resultSet.getInt("price")%>" />

                        </td>
                        <td>
                            <button type="submit">Save Price</button>
                        </td>
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
    </form>
    <%@include file="footer.jsp" %>
</body>
</html>
