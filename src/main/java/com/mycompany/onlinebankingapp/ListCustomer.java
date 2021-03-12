
package com.mycompany.onlinebankingapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ListCustomer extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Connection conn = ConnectionProvider.getconn();
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("select * from usermgmt");
            request.setAttribute("rs", rs);
            getServletContext().getRequestDispatcher("/listCustomer.jsp").forward(request, response);
        } catch (SQLException ex) {
            request.getRequestDispatcher("header.jsp").include(request, response);
            out.println("<h3 style=\"color: khaki; margin-left: 25px;\">LIST CUSTOMER</h3>");
            out.println("<h3 style=\"color: red; margin-left: 25px;\">"+ex.getMessage()+"</h3>");
        } catch (ClassNotFoundException ex) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
