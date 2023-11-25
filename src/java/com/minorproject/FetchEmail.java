package com.minorproject;

import Message.Message;
import SendMail.SendMail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
public class FetchEmail extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("email");
            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
               OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                String query = "select * from registration where email=?";
               OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(query);
                ops.setString(1, email);
                try (ResultSet rs = ops.executeQuery()) {
                    if (rs.next()) {
                        Random random = new Random();
                        String OTP = String.valueOf(random.nextInt(999999) + 100001);
                        SendMail mail = new SendMail();
                        mail.sendMail(email, "Verification OTP", OTP);
                        request.setAttribute("UOTP", OTP);
                        String updateSQL = "UPDATE registration SET otp = ? WHERE email = ?";
                        OraclePreparedStatement updateOps = (OraclePreparedStatement) oconn.prepareStatement(updateSQL);
                        updateOps.setString(1, OTP);
                        updateOps.setString(2, email);
                        updateOps.executeUpdate();
                        HttpSession s = request.getSession();
                        s.setAttribute("email", email);
                        RequestDispatcher dispatcher = request.getRequestDispatcher("frgtpassword-otp.jsp");
                        dispatcher.forward(request, response);

                    } else {
                        Message msg = new Message("Email is not registered! Please Register First!", "error", "alert-message");
                        HttpSession s = request.getSession();
                        s.setAttribute("msg", msg);
                        response.sendRedirect("Login.jsp");
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
