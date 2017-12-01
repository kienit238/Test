/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ChiTiet;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Computer
 */
@WebServlet(name = "CUpdateTour", urlPatterns = {"/CUpdateTour"})
public class CUpdateTour extends HttpServlet {

    private final String url = "Images/Trang chu/Trong nuoc";

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
            

            if (ServletFileUpload.isMultipartContent(request)) {
                String uploadPath = getServletContext().getRealPath("") + File.separator + url;
                // creates the directory if it does not exist
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }
                List<FileItem> multi = null;
                List<String> list = new ArrayList<>();
                String location = "";
                String name = "";
                String ds = "";

                try {
                    out.println("<p>" + "hello" + "</p>");
                    multi = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                    if (multi != null && multi.size() > 0) {
                        for (FileItem item : multi) {

                            if (item.isFormField()) {
                                ds = item.getString("UTF-8");
                                list.add(ds);
                            } else {
                                location = new File(item.getName()).getName();

                                item.write(new File(uploadPath + File.separator + location));
                            }

                        }
                    }
                } catch (Exception ex) {
                    request.setAttribute("message", "File Upload Failed due to " + ex);

                }

                String matour = list.get(0).toString();
                String tentour = list.get(1).toString();
                String ngaykh = list.get(2);
                String thoigian = list.get(3);
                String diadiem = list.get(4);
                String gia = list.get(5);
                String mota = list.get(6);
                String path = this.url + "/" + location;
                out.println("<p>" + matour + "</p>");

//                String action = list.get(7);
                ChiTiet ct = new ChiTiet();
                boolean result = ct.update(matour, tentour, ngaykh, thoigian, diadiem, gia, path);
                out.println("<p>" + result + "</p>");
                request.setAttribute("message", "File Uploaded Successfully");
                request.getRequestDispatcher("CChuyentrang?action=QLTour").forward(request, response);
            }

            

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CUpdateTour</title>");
            out.println("</head>");
            out.println("<body>");
//            out.println("<h1>Servlet CUpdateTour at " + action + "</h1>");
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
