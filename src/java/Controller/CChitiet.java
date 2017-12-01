/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ChiTiet;
import Model.getData;
import Model.hinhanh;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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
@WebServlet(name = "CChitiet", urlPatterns = {"/CChitiet"})
public class CChitiet extends HttpServlet {

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
            
            String tour=request.getParameter("tour");
            
            if(tour.equals("TN")){  
                String action = request.getParameter("ID");
                    try {
                        ChiTiet ct=new ChiTiet();
                        ChiTiet v=ct.showTN(action);
                        
                        out.println("<p>"+v.getUrl()+"</p>");    
                            String tentour = v.getTentour();
                            String ngaykh = v.getNgaykh();
                            String thoigian = v.getThoigian();
                            String diadiem = v.getDiadiem();
                            String gia = v.getGia();
                            String mota = v.getMota();
                            String chitiet = v.getChitiet();
                            String url=v.getUrl();
                            out.println("<p>"+url+"</p>");
                            request.setAttribute("TOUR",tentour);
                            request.setAttribute("NGAYKH",ngaykh);
                            request.setAttribute("THOIGIAN",thoigian);
                            request.setAttribute("DIADIEM",diadiem);
                            request.setAttribute("GIA",gia);
                            request.setAttribute("MOTA",mota);
                            request.setAttribute("CHITIET",chitiet);
                            request.setAttribute("URL",url);
                            request.setAttribute("ID", v.getId());
                    } catch (Exception ex) {
                        System.out.println(ex);
                    }

                    
                    RequestDispatcher rd = request.getRequestDispatcher("chitiet_ttn1.jsp");
                    rd.forward(request, response);
            }else if(tour.equals("QT")){
                String action = request.getParameter("ID");
                try {
                        ChiTiet ct=new ChiTiet();
                        ChiTiet v=ct.showQT(action);
                        
                        out.println("<p>"+v.getUrl()+"</p>");    
                            String tentour = v.getTentour();
                            String ngaykh = v.getNgaykh();
                            String thoigian = v.getThoigian();
                            String diadiem = v.getDiadiem();
                            String gia = v.getGia();
                            String mota = v.getMota();
                            String chitiet = v.getChitiet();
                            String url=v.getUrl();
                            out.println("<p>"+url+"</p>");
                            request.setAttribute("TOUR",tentour);
                            request.setAttribute("NGAYKH",ngaykh);
                            request.setAttribute("THOIGIAN",thoigian);
                            request.setAttribute("DIADIEM",diadiem);
                            request.setAttribute("GIA",gia);
                            request.setAttribute("MOTA",mota);
                            request.setAttribute("CHITIET",chitiet);
                            request.setAttribute("URL",url);
                            request.setAttribute("ID", v.getId());
                    } catch (Exception ex) {
                        System.out.println(ex);
                    }
                request.getRequestDispatcher("chitiet_tqt1.jsp").forward(request, response);
            }
//                    break;
                
//            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CChitiet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CChitiet at " + request.getContextPath() + "</h1>");
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
