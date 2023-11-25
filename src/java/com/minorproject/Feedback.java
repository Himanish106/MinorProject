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

public class Feedback extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String contact = request.getParameter("Contact");
            String feedback = request.getParameter("feedback");
            HttpSession session = request.getSession();
            HttpSession loginSession = request.getSession();
            String storedEmail = (String) session.getAttribute("email");
            if (storedEmail != null && storedEmail.equals(email)) {
                try {
                    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                    OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                    OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall("INSERT INTO FEEDBACK(NAME,EMAIL,CONTACT,FEEDBACK)VALUES(?,?,?,?)");
                    ops.setString(1, name);
                    ops.setString(2, email);
                    ops.setString(3, contact);
                    ops.setString(4, feedback);
                    int x = ops.executeUpdate();
                    if (x > 0) {
                        HttpSession ms = request.getSession(true);
                        Message msg = new Message("Your Response has been recorded successfully.", "success", "success-message");
                        ms.setAttribute("msg", msg);
                        session.removeAttribute("email");
                    } else {
                        HttpSession ms = request.getSession(true);
                        Message msg = new Message("Your details has not been submitted successfully", "error", "alert-message");
                        ms.setAttribute("msg", msg);
                        session.removeAttribute("email");
                    }
                    RequestDispatcher rd = request.getRequestDispatcher("feedback.jsp");
                    rd.forward(request, response);
                    ops.close();
                    oconn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else {
                HttpSession ms = request.getSession(true);
                Message msg = new Message("Please enter the email with which you are logged in", "error", "alert-message");
                ms.setAttribute("msg", msg);
                session.removeAttribute("email");
                RequestDispatcher rd = request.getRequestDispatcher("feedback.jsp");
                rd.forward(request, response);
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
