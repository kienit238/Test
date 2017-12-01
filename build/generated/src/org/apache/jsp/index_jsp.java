package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.hinhanh;
import Model.ChiTiet;
import Model.getData;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import Model.giohang;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/inc/tophead.jsp");
    _jspx_dependants.add("/inc/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Du lịch Á Âu</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/index.css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"page\">\n");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  <div id=\"headertop\">\n");
      out.write("                <div id=\"khung\">\n");
      out.write("                    <div id=\"textheader\">Chào mừng bạn đến với Công ty Cổ Phần Du Lịch Quốc Tế Asian</div>\n");
      out.write("                    ");

                        String username = (String) session.getAttribute("USER");
                        if (username == null || username.length() == 0) {

                    
      out.write("\n");
      out.write("                    <a id=\"dangnhap\" href=\"dangnhap.jsp\" >Đăng nhập</a>\n");
      out.write("                    ");
                    } else if (username.length() > 0) {
                    
      out.write("\n");
      out.write("                    <a id=\"dangnhap\" href=\"CLogin?btnsubmit=Logout\">Xin chào! ");
      out.print( username);
      out.write("</a>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                    <a id=\"dangky\"   href=\"dangky.jsp\">Đăng ký</a>\n");
      out.write("                    ");

                        ArrayList<giohang> list=new giohang().getGt();
                        int sum=list.size();
                        int soluong=sum;
                    
      out.write("\n");
      out.write("                    <a id=\"giohang\" href=\"giohang.jsp\">Giỏ hàng(<span style=\"color: red;\">");
      out.print( soluong );
      out.write("</span>)</a>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>  ");
      out.write("\n");
      out.write("\n");
      out.write("            <div id=\"header\">   \n");
      out.write("                <div id=\"banner\">\n");
      out.write("                    <a id=\"logo\" href=\"index.jsp\"></a>\n");
      out.write("                    <form action=\"baotri.jsp\" method=\"post\">\n");
      out.write("                        <div style=\"width:370px; height:46px; position:relative;left: 210px;top: 36px; \">\n");
      out.write("                            <input style=\" padding-left:14px; box-sizing:border-box;height:40px; width:298px; border:1px solid #dddddd; float:left; color:#a9a9a9; font-weight:300;\" type=\"text\" name=\"diadiem\" placeholder=\"Nhập địa điểm bạn muốn đi...\" id=\"search\" />\n");
      out.write("                            <input type=\"submit\" value=\"Tìm kiếm\" style=\" text-transform:uppercase;padding-left:4px; box-sizing:border-box; float:left;  width:70px; height:40px; background-color:#305cb7; color:#FFF; border: none;\" />\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </form>  \n");
      out.write("                    <div id=\"boxbanner\">\n");
      out.write("                        <div id=\"clock\"></div>\n");
      out.write("                        <div id=\"text1\">T2-CN: 08:00-23:00</div>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"boxbanner1\">\n");
      out.write("                        <div id=\"icon1\"></div>\n");
      out.write("                        <div id=\"texticon1\">Hotline: <span>0168 868 8999</span></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"boxbanner2\">\n");
      out.write("                        <div id=\"icon2\"></div>\n");
      out.write("                        <div id=\"texticon2\">Số 419, Nguyễn Văn Cừ, TP. Hạ Long, Quảng Ninh</div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"slideshow-container\">\n");
      out.write("                <div class=\"mySlides fade\">\n");
      out.write("\n");
      out.write("                    <img src=\"Images/Slideshow/slide-img1.jpg\" style=\"width:100%\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"mySlides fade\">\n");
      out.write("\n");
      out.write("                    <img src=\"Images/Slideshow/slide-img2.jpg\" style=\"width:100%\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"mySlides fade\">\n");
      out.write("\n");
      out.write("                    <img src=\"Images/Slideshow/slide-img3.jpg\" style=\"width:100%\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"mySlides fade\">\n");
      out.write("\n");
      out.write("                    <img src=\"Images/Slideshow/slide-img4.jpg\" style=\"width:100%\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"mySlides fade\">\n");
      out.write("\n");
      out.write("                    <img src=\"Images/Slideshow/slide-img5.jpg\" style=\"width:100%\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <a class=\"prev\" onclick=\"plusSlides(-1)\">&#10094;</a>\n");
      out.write("                <a class=\"next\" onclick=\"plusSlides(1)\">&#10095;</a>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("\n");
      out.write("            <div style=\"text-align:center\">\n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(1)\"></span> \n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(2)\"></span> \n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(3)\"></span> \n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(4)\"></span> \n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(5)\"></span> \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <script>\n");
      out.write("                var slideIndex = 1;\n");
      out.write("                showSlides(slideIndex);\n");
      out.write("\n");
      out.write("                function plusSlides(n) {\n");
      out.write("                    showSlides(slideIndex += n);\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                function currentSlide(n) {\n");
      out.write("                    showSlides(slideIndex = n);\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                function showSlides(n) {\n");
      out.write("                    var i;\n");
      out.write("                    var slides = document.getElementsByClassName(\"mySlides\");\n");
      out.write("                    var dots = document.getElementsByClassName(\"dot\");\n");
      out.write("                    if (n > slides.length) {\n");
      out.write("                        slideIndex = 1\n");
      out.write("                    }\n");
      out.write("                    if (n < 1) {\n");
      out.write("                        slideIndex = slides.length\n");
      out.write("                    }\n");
      out.write("                    for (i = 0; i < slides.length; i++) {\n");
      out.write("                        slides[i].style.display = \"none\";\n");
      out.write("                    }\n");
      out.write("                    for (i = 0; i < dots.length; i++) {\n");
      out.write("                        dots[i].className = dots[i].className.replace(\" active\", \"\");\n");
      out.write("                    }\n");
      out.write("                    slides[slideIndex - 1].style.display = \"block\";\n");
      out.write("                    dots[slideIndex - 1].className += \" active\";\n");
      out.write("                }\n");
      out.write("            </script>   \n");
      out.write("            <div id=\"menu\">\n");
      out.write("\n");
      out.write("                <div id=\"boxmenu\">\n");
      out.write("                    <ul style=\"margin:0; padding:0; list-style-type:none;\">\n");
      out.write("                        <li><a id=\"home\" href=\"index.jsp\" ><img id=\"img1\" alt=\"icon\" src=\"Images/icon_Logo/1475354283_Streamline-18.png\" width=\"24\" height=\"24\" /></a></li>\n");
      out.write("\n");
      out.write("                        <li><a class=\"a1\" href=\"index.jsp\">TRANG CHỦ</a></li>\n");
      out.write("                        <li><a class=\"a1\" href=\"gioithieu.jsp\">GIỚI THIỆU</a></li>\n");
      out.write("                        <li><a class=\"a1\" href=\"trongnuoc.jsp\">TOUR TRONG NƯỚC</a>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                        <li><a class=\"a1\" href=\"quocte.jsp\">TOUR QUỐC TẾ<img alt=\"hoticon\" style=\"position:absolute; right:20px;\" src=\"Images/icon_Logo/hot-icon.gif\" /></a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <li><a class=\"a1\" href=\"khachsan.jsp\">KHÁCH SẠN</a></li>\n");
      out.write("\n");
      out.write("                        <li><a class=\"a1\" href=\"lienhe.jsp\">LIÊN HỆ</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>    \n");
      out.write("            </div>\n");
      out.write("            <div class=\"trongnuoc\"><!-- InstanceBeginEditable name=\"trongnuoc\" -->\n");
      out.write("                <div style=\"width:1200px; height:30px; margin:0 auto; position:relative; \">\n");
      out.write("                    <a style=\" color:#000;float:left; position:absolute; left:0px;;\" href=\"index.jsp\">Trang chủ</a>\n");
      out.write("                    <img alt=\"arrow\" style=\"position:absolute; top:8px; left:64px;\" src=\"Images/icon_Logo/1475704202_icon-ios7-arrow-right.png\" />\n");
      out.write("                    <a style=\"position:absolute; left:62px;\" href=\"index.jsp\"><span style=\"color:#F00; margin-left:16px; \">Trang chủ</span></a>\n");
      out.write("                </div>\n");
      out.write("                <!-- InstanceEndEditable -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div id=\"content\">\n");
      out.write("                <!-- InstanceBeginEditable name=\"content\" -->\n");
      out.write("                ");
try {
      out.write("\n");
      out.write("                ");
                    String tentour = (String) request.getAttribute("TOUR");
                    String ngaykh = (String) request.getAttribute("NGAYKH");
                    String thoigian = (String) request.getAttribute("THOIGIAN");
                    String diadiem = (String) request.getAttribute("DIADIEM");
                    String gia = (String) request.getAttribute("GIA");
                    String mota = (String) request.getAttribute("MOTA");
                    String chitiet = (String) request.getAttribute("CHITIET");
                
      out.write("\n");
      out.write("                <div class=\"box1\">du lịch trong nước</div>\n");
      out.write("                ");

                    for (int i = 1; i <= 6; i++) {

                        ChiTiet ct = new ChiTiet();
                        ChiTiet ds = ct.showTN("TN" + i);

                
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div  class=\"boxleft\">\n");
      out.write("\n");
      out.write("                    <a href=\"CChitiet?tour=TN&ID=");
      out.print( ds.getId());
      out.write("\"><img style=\"width: 370px; height: 274px;background-size: cover; background-position: center center;background-repeat: no-repeat;\"  src=\"");
      out.print( ds.getUrl());
      out.write("\" /></a>\n");
      out.write("                    <div class=\"img2\">tour mới</div>\n");
      out.write("\n");
      out.write("                    <a class=\"boxinleft\" href=\"CChitiet?tour=TN&ID=");
      out.print( ds.getId());
      out.write("\" ><div class=\"overflow\" style=\"font-weight: bold;\">");
      out.print( ds.getTentour());
      out.write("</div>\n");
      out.write("                        ");
      out.print( ds.getThoigian());
      out.write("<br />\n");
      out.write("                        ");
      out.print( ds.getGia());
      out.write(" VNĐ<br />\n");
      out.write("                        Điểm đến: ");
      out.print( ds.getDiadiem());
      out.write("\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                </div>    \n");
      out.write("\n");
      out.write("                ");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div style=\"clear:both;\"></div> \n");
      out.write("\n");
      out.write("                <div class=\"box1\">du lịch quốc tế</div>\n");
      out.write("                ");

                    for (int i = 1; i <= 6; i++) {

                        ChiTiet ct = new ChiTiet();

                        ChiTiet ds = ct.showQT("QT" + i);

                
      out.write("\n");
      out.write("\n");
      out.write("                <div  class=\"boxleft\">\n");
      out.write("                    <a href=\"CChitiet?tour=QT&ID=");
      out.print( ds.getId());
      out.write("\"><img style=\"width: 370px; height: 274px;\" alt=\"disneyland\" src=\"");
      out.print( ds.getUrl());
      out.write("\" /></a>\n");
      out.write("                    <div class=\"img2\">tour mới</div>\n");
      out.write("                    <a class=\"boxinleft\" href=\"CChitiet?tour=QT&ID=");
      out.print( ds.getId());
      out.write("\"><div class=\"overflow\">");
      out.print( ds.getTentour());
      out.write("</div>\n");
      out.write("                        ");
      out.print( ds.getThoigian());
      out.write("<br />\n");
      out.write("                        Giá: ");
      out.print( ds.getGia());
      out.write("VNĐ<br />\n");
      out.write("                        Điểm đến: ");
      out.print( ds.getDiadiem());
      out.write("\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");
} catch (Exception ex) {
        
    }
      out.write("\n");
      out.write("                <div style=\"clear:both;\"></div>   \t\t\n");
      out.write("                <!-- InstanceEndEditable -->\t\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"footer\">\n");
      out.write("                <div id=\"footerpage\">\n");
      out.write("                    <div id=\"footer-top\">\n");
      out.write("\n");
      out.write("                        <a class=\"footer-top-menu\" href=\"index.jsp\">TRANG CHỦ</a>\n");
      out.write("                        <a class=\"footer-top-menu\" href=\"baotri.jsp\">QUY ĐỊNH CHÍNH SÁCH</a>\n");
      out.write("                        <a class=\"footer-top-menu\" href=\"baotri.jsp\">ĐIỀU KHOẢN SỬ DỤNG</a>\n");
      out.write("                        <a class=\"footer-top-menu\"href=\"baotri.jsp\">QUAN ĐIỂM KINH DOANH</a>\n");
      out.write("                        <a class=\"footer-top-menu\" href=\"baotri.jsp\">Ý KIẾN PHẢN HỒI</a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"lienhe\">\n");
      out.write("                        <p><font color=\"#f9f9f9\">THÔNG TIN LIÊN HỆ</font></p>\n");
      out.write("                        <div class=\"icon\">\n");
      out.write("                            <img alt=\"icon1\" src=\"Images/icon_Logo/1475653288_location_pin_logo_social_media.png\" />\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"span1\"> Số 419, Nguyễn Văn Cừ, TP Hạ Long, Tỉnh Quảng Ninh</div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                        <div class=\"icon\"><img alt=\"icon2\" src=\"Images/icon_Logo/1475653277_phone_logo_social_media.png\" /></div>\n");
      out.write("                        <div class=\"boxchild\">0333.819.668 - Fax 0333.819.669</div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                        <div class=\"icon\"><img alt=\"icon3\" src=\"Images/icon_Logo/1475653300_email_mail_envelope_send_message.png\" /></div>\n");
      out.write("                        <div class=\"boxchild\">kienphvps05194@fpt.edu.vn</div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"leftfooter\">\n");
      out.write("                        <p style=\"color:#f4f4f4;\">TOUR TRONG NƯỚC</p>\n");
      out.write("                        <ul class=\"margin\">\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch Hạ Long</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch miền Bắc</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch miền Trung</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch miền Nam</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Tour ghép khách lẻ</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"leftfooter\">\n");
      out.write("                        <p style=\"color:#f4f4f4;\">TOUR QUỐC TẾ</p>\n");
      out.write("                        <ul class=\"margin\">\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch Đông Nam Á</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch Đông Bắc Á</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch Trung Quốc</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch Hồng Kông</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Du lịch Âu Mỹ</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"leftfooter\">\n");
      out.write("                        <p style=\"color:#f4f4f4;\">TIN TỨC DU LỊCH</p>\n");
      out.write("                        <ul class=\"margin\">\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Danh lam thắng cảnh</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Tin tức du lịch Việt Nam</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Thông tin ẩm thực</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Cẩm nang du lịch</a></li>\n");
      out.write("                            <li class=\"bullet-icon\"><a class=\"type\" href=\"baotri.jsp\">Tin tức du lịch quốc tế</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                    <div id=\"bottom\">© 2015 - Công ty Cổ Phần Du Lịch Quốc Tế Asian. Design bởi KIÊN_FPOLY</div>    \n");
      out.write("                </div>    \n");
      out.write("            </div>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
