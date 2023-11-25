package com.minorproject;
import Message.Message;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
public class EditProfile extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String userEmail = (String) request.getSession().getAttribute("email");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String firstName = request.getParameter("firstName");
            String middleName = request.getParameter("middleName");
            String lastName = request.getParameter("lastName");
            String dob = request.getParameter("dob");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");
            String qualification = request.getParameter("qualification");
            String aadharNumber = request.getParameter("aadharNumber");
            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                String updateQuery = "UPDATE registration SET password=?,firstname=?,middlename=?,lastname=?,dob=?,age=?,gender=?,companyname=?,aadharnumber=?,mobile=?,whatsapp=?,socialmedia=?,alternatephn=?,altemail=?,email=? where email=? ";
                OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(updateQuery);
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                java.util.Date dt = sdf.parse(dob);
                SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MMM-yyyy");
                dob = sdf1.format(dt);
                ops.setString(1, password);
                ops.setString(2, firstName);
                ops.setString(3, middleName);
                ops.setString(4, lastName);
                ops.setString(5, dob);
                ops.setInt(6, Integer.parseInt(age));
                ops.setString(7, gender);
                ops.setString(8, qualification);
                ops.setLong(9, Long.parseLong(aadharNumber));
                ops.setLong(10, Long.parseLong(request.getParameter("mobile")));
                ops.setLong(11, Long.parseLong(request.getParameter("whatsapp")));
                ops.setString(12, request.getParameter("socialMedia"));
                ops.setLong(13, Long.parseLong(request.getParameter("alternatePhn")));
                ops.setString(14, request.getParameter("altEmail"));
                ops.setString(15, email);
                ops.setString(16, userEmail);
                int rowsUpdated = ops.executeUpdate();
                if (rowsUpdated > 0) {
                    HttpSession session = request.getSession(false);
                    if (rowsUpdated > 0 || session != null) {
                        HttpSession message = request.getSession(true);
                        if (session != null) {
                            Message msg = new Message("Your Profile has been updated successfully. Please Login Again", "success", "success-message");
                            message.setAttribute("msg", msg);
                            session.removeAttribute("email");
                            session.removeAttribute("currentUser");
                        }
                        response.sendRedirect("Login.jsp");
                    }
                }
                oconn.commit();
            } catch (SQLException e) {
                e.printStackTrace();

            } catch (ParseException ex) {
                Logger.getLogger(EditProfile.class.getName()).log(Level.SEVERE, null, ex);
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
