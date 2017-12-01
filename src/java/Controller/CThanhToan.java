/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DonHang;
import Model.giohang;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Computer
 */
@WebServlet(name = "CThanhToan", urlPatterns = {"/CThanhToan"})
public class CThanhToan extends HttpServlet {

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
            out.println("<p>"+action+"</p>");
            if (action.equals("Thanh Toán")) {
                String email = request.getParameter("email");
                String hoten = request.getParameter("hoten");
                String diachi = request.getParameter("diachi");
                String dienthoai = request.getParameter("dienthoai");
                String gia = request.getParameter("gia");
                DonHang dh = new DonHang();
                boolean result = false;
                boolean kiemtra = dh.kiemtradonhang(email);

                result = dh.themdonhang(email, hoten, diachi, dienthoai, gia);
                if (result) {

                    
                    ArrayList<giohang> ds = new giohang().getGt();
                    for (int i = 0; i < ds.size(); i++) {
                        ds.remove(i);
                    }
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    out.println("<p>ERROR!</p>");
                }

            }else if(action.equals("Delete")){
                
                String id=request.getParameter("value");
                out.println("<p>"+id+"</p>");
                DonHang dh=new DonHang();
                boolean result=dh.delete(id);
                if(result){
                    request.getRequestDispatcher("CChuyentrang?action=QLDonhang").forward(request, response);
                }
            }else if(action.equals("getdata")){
                String id=request.getParameter("value");
                out.println("<p>" + id + "</p>");
                DonHang dh=new DonHang();
                DonHang ds=dh.showone(id);
                request.setAttribute("hoten",ds.getHoten());
                request.setAttribute("email",ds.getEmail());
                request.setAttribute("diachi",ds.getDiachi());
                request.setAttribute("dienthoai",ds.getDienthoai());
                request.setAttribute("gia",ds.getTongtien());
                request.setAttribute("chucnang","donhang");
                request.setAttribute("id",id);
                request.getRequestDispatcher("chitiet.jsp").forward(request, response);
            }else if(action.equals("Update")){
                DonHang dh=new DonHang();
                String email=request.getParameter("email");
                String hoten=request.getParameter("hoten");
                String diachi=request.getParameter("diachi");
                String dienthoai=request.getParameter("dienthoai");
                String gia=request.getParameter("gia");
                String id=request.getParameter("id");
                boolean result=dh.capnhatdonhang(email, hoten, diachi, dienthoai, gia, id);
                if(result){
                    request.getRequestDispatcher("CChuyentrang?action=QLDonhang").forward(request, response);
                }
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CThanhToan</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CThanhToan at " + request.getContextPath() + "</h1>");
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
