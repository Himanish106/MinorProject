package com.minorproject;

import UserData.Userdata;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;

public class UserDataServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            
            String userEmail = (String) request.getSession().getAttribute("email");
            try {
                
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                String sql = "SELECT * FROM registration WHERE EMAIL = ?";
                OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(sql);
                ops.setString(1, userEmail);
                ResultSet resultSet = ops.executeQuery();
                Userdata userdata = null;
                if (resultSet.next()) {
                    userdata = new Userdata();
                    userdata.setEmail(resultSet.getString("Email"));
                    userdata.setPassword(resultSet.getString("password"));
                    userdata.setFirstName(resultSet.getString("FIRSTNAME"));
                    userdata.setMiddleName(resultSet.getString("MIDDLENAME"));
                    userdata.setLastName(resultSet.getString("LASTNAME"));
                    userdata.setAge(resultSet.getInt("age"));
                    userdata.setMobile(resultSet.getLong("mobile"));
                    userdata.setWhatsapp(resultSet.getLong("whatsapp"));
                    userdata.setGender(resultSet.getString("gender"));
                    userdata.setDob(resultSet.getDate("DOB"));
                    userdata.setAadharNumber(resultSet.getLong("aadharnumber"));
                    userdata.setCompanyName(resultSet.getString("companyname"));
                    userdata.setSocialMedia(resultSet.getString("socialmedia"));
                    userdata.setAltEmail(resultSet.getString("altemail"));
                    userdata.setAlternatePhn(resultSet.getLong("alternatephn"));
                    Blob imageBlob = resultSet.getBlob("Image");
                    if (imageBlob != null) {
                        int imageLength = (int) imageBlob.length();
                        byte[] imageBytes = imageBlob.getBytes(1, imageLength);
                        userdata.setImage(imageBytes);
                    }
                }
                HttpSession hs = request.getSession(false);
                hs.setAttribute("userData", userdata);
                response.sendRedirect("home.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
