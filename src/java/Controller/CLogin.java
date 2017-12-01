/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Login;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC01
 */
@WebServlet(name = "CLogin", urlPatterns = {"/CLogin"})

public class CLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    final String trangchu = "index.jsp";
    final String baotri = "baotri.jsp";
    final String dangnhap = "dangnhap.jsp";
    final String dangky = "dangky.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String action = request.getParameter("btnsubmit");
            out.println("<p>" + action + "</p>");
            if (action.equals("Login")) {
                String username = request.getParameter("username");
                String password = request.getParameter("txtpassword");
                String url = "";
                String email = request.getParameter("txtemail");
                HttpSession session = request.getSession();
                if (email.equals("admin@gmail.com") && password.equals("admin")) {
                    session.setAttribute("USER", "ADMIN");
                    request.getRequestDispatcher("quantri.jsp").forward(request, response);
                } else {
                    Login l = new Login();
                    String result = l.checkLogin(email, password);
                    out.println("<p>" + result + "</p>");
                    url = dangnhap;

                    session.setAttribute("RESULT", result);
                    if (result != null) {

                        session.setAttribute("USER", result);
                        url = trangchu;
//                    out.println("<p>"+result+"</p>");
                    }
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);

            } else if (action.equals("Logout")) {
                HttpSession session = request.getSession();
                session.invalidate();
                RequestDispatcher rd = request.getRequestDispatcher(trangchu);
                rd.forward(request, response);
            } else if (action.equals("Register")) {

                String hoten = request.getParameter("username");
                String password = request.getParameter("password");
                String email = request.getParameter("email");
                String gioitinh = request.getParameter("gioitinh");
                String ngaysinh = request.getParameter("ngaysinh");

                String[] s = hoten.split("\\s");
                String username = s[s.length - 1];
                String gt = "True";
                if (gioitinh.equals("Nam")) {
                    gt = "True";
                } else {
                    gt = "False";
                }
                String roles = "False";
                Login lg=new Login();
                boolean result=lg.dangky(hoten, email, password, gt, roles, ngaysinh, username);
                String url = dangky;
                out.println("<p>" + hoten + password + email + gt + roles + ngaysinh + username + "</p>");
                out.println("<p>" + result + "</p>");
                if (result) {

                    url = trangchu;
                }
                request.getRequestDispatcher(url).forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1></h1>");
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
