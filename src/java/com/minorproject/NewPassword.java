package com.minorproject;
import Message.Message;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
public class NewPassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                HttpSession s = request.getSession();
                String email = s.getAttribute("email").toString();
                String password = request.getParameter("password");
                String updateSQL = "UPDATE registration SET password = ? WHERE email = ?";
                OraclePreparedStatement updateOps = (OraclePreparedStatement) oconn.prepareCall(updateSQL);
                updateOps.setString(1, password);
                updateOps.setString(2, email);
                int rowsUpdated = updateOps.executeUpdate();
                if (rowsUpdated > 0) {
                    HttpSession message = request.getSession(true);
                    Message msg = new Message("Your Password has been changed successfully.", "success", "success-message");
                    message.setAttribute("msg", msg);
                    s.removeAttribute("email");
                } else {
                    HttpSession message = request.getSession(true);
                    Message msg = new Message("Password Change Failed! Please try again.", "error", "alert-message");
                    message.setAttribute("msg", msg);
                    s.removeAttribute("email");
                }
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
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
