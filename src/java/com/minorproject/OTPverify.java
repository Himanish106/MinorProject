package com.minorproject;
import Message.Message;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
public class OTPverify extends HttpServlet {

    String otp;
    OracleConnection oconn;
    OraclePreparedStatement ops;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            otp = request.getParameter("otp");
            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                String query = "select * from registration where otp=?";
                ops = (OraclePreparedStatement) oconn.prepareCall(query);
                ops.setString(1, otp);
                try (ResultSet rs = ops.executeQuery()) {
                    if (rs.next()) {
                        String generatedOTP = rs.getString("otp");
                        if (generatedOTP.equals(otp)) {
                            String updateQuery = "UPDATE registration SET otp = NULL WHERE otp = ?";
                            OraclePreparedStatement updateOps = (OraclePreparedStatement) oconn.prepareCall(updateQuery);
                            updateOps.setString(1, otp);
                            int rowsUpdated = updateOps.executeUpdate();
                            if (rowsUpdated > 0) {
                                RequestDispatcher rd = request.getRequestDispatcher("newpassword-set.jsp");
                                rd.forward(request, response);
                            }

                        }
                    } else {
                        Message msg = new Message(" Wrong OTP! Please Enter the correct OTP.", "error", "alert-message");
                        HttpSession s = request.getSession();
                        s.setAttribute("msg", msg);
                        response.sendRedirect("frgtpassword-otp.jsp");
                    }
                }
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
