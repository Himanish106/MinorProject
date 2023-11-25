package com.minorproject;
import Message.Message;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import oracle.jdbc.OracleConnection;
@MultipartConfig
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
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
            Part part = request.getPart("profilePhoto");

            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");

                String query = "INSERT INTO registration (email, password, firstName, middlename, lastName, dob, age, gender, companyname, aadharnumber, filename, mobile, whatsapp, socialmedia, alternatephn, altemail, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?, ?, ?, ?, ?, ?, ?)";

                PreparedStatement ops = oconn.prepareStatement(query);

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                java.util.Date dt = sdf.parse(dob);
                SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MMM-yyyy");
                dob = sdf1.format(dt);

                ops.setString(1, email);
                ops.setString(2, password);
                ops.setString(3, firstName);
                ops.setString(4, middleName);
                ops.setString(5, lastName);
                ops.setString(6, dob);
                ops.setInt(7, Integer.parseInt(age));
                ops.setString(8, gender);
                ops.setString(9, qualification);
                ops.setLong(10, Long.parseLong(aadharNumber));
                ops.setString(11, part.getSubmittedFileName());
                ops.setLong(12, Long.parseLong(request.getParameter("mobile")));
                ops.setLong(13, Long.parseLong(request.getParameter("whatsapp")));
                ops.setString(14, request.getParameter("socialMedia"));
                ops.setLong(15, Long.parseLong(request.getParameter("alternatePhn")));
                ops.setString(16, request.getParameter("altEmail"));

                // Convert Part to InputStream
                InputStream is = part.getInputStream();
                byte[] data = new byte[(int) part.getSize()];
                is.read(data);

                // Set the image data in the PreparedStatement
                ops.setBytes(17, data);

                int x = ops.executeUpdate();

                if (x > 0) {
                    Message msg = new Message("Registration Successful! Please Login!", "success", "success-message");
                    HttpSession s = request.getSession();
                    s.setAttribute("msg", msg);
                    response.sendRedirect("Login.jsp");
                } else {

                    Message msg = new Message("Registration Failed! Please Try Again!", "error", "alert-message");
                    HttpSession s = request.getSession();
                    s.setAttribute("msg", msg);
                    response.sendRedirect("Login.jsp");
                }
                oconn.commit();
            } catch (SQLException | ParseException e) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, e);
                Message msg = new Message("You are a registered user! Please Login!", "error", "alert-message");
                HttpSession s = request.getSession();
                s.setAttribute("msg", msg);
                response.sendRedirect("Login.jsp");
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
