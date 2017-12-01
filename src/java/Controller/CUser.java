/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Computer
 */
@WebServlet(name = "CUser", urlPatterns = {"/CUser"})
public class CUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String action = request.getParameter("action");
            if (action.equals("Xóa")) {
                String value = request.getParameter("value");
                User us = new User();
                boolean result = us.xoaUser(value);
                out.println("<p>" + result + "</p>");
                out.println("<p>" + value + "</p>");
                if (result) {
                    request.getRequestDispatcher("CChuyentrang?action=QLUser").forward(request, response);
                }
            } else if (action.equals("Sửa")) {
                String value = request.getParameter("value");
                User us = new User();
                User ds = us.showid(value);
                request.setAttribute("mauser", ds.getIduser());
                request.setAttribute("hoten", ds.getHoten());
                request.setAttribute("username", ds.getUsername());
                request.setAttribute("dienthoai", ds.getDienthoai());
                request.setAttribute("email", ds.getEmail());
                request.setAttribute("url", ds.getUrl());
                request.setAttribute("gioitinh", ds.getGioitinh());
                request.setAttribute("chucnang", "User");
                request.getRequestDispatcher("chitiet.jsp").forward(request, response);
            } else if (action.equals("Save")) {
                String mauser = request.getParameter("mauser");
                String hoten = request.getParameter("hoten");
                String username = request.getParameter("username");
                String dienthoai = request.getParameter("dienthoai");
                String email = request.getParameter("email");
                String gt = request.getParameter("gioitinh");
                boolean gioitinh = true;
                if (gt.equals("Nam")) {
                    gioitinh = true;
                } else {
                    gioitinh = false;
                }
                User user = new User();
                boolean result = user.updateUser(mauser, hoten, username, dienthoai, email, gioitinh);

                request.getRequestDispatcher("CChuyentrang?action=QLUser").forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
