package com.minorproject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;

public class Order extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String pdtName = request.getParameter("pdtName");
            String pageNo = request.getParameter("pageNo");
            String totalPrice = request.getParameter("price");
            String description = request.getParameter("description");
            HttpSession s = request.getSession();
            String email = (String) s.getAttribute("email");
            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
                String insertQuery = "INSERT INTO payment (ordered_by, productname, no_of_pages, total_price,requirements) VALUES (?, ?, ?, ?, ?)";
                OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(insertQuery);
                ops.setString(1, email);
                ops.setString(2, pdtName);
                ops.setString(3, pageNo);
                ops.setString(4, totalPrice);
                ops.setString(5, description);
                int x = ops.executeUpdate();
                if (x > 0) {
                    response.sendRedirect("order_placed.jsp");
                }
                oconn.commit();
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
