package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.DonHang;
import java.util.Vector;
import com.sun.javafx.geom.Vec2d;
import java.util.List;
import java.util.ArrayList;
import Model.User;
import Model.ChiTiet;

public final class quantri_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/index.css\"/>\n");
      out.write("        <style>\n");
      out.write("            td a:hover{\n");
      out.write("                color: white;\n");
      out.write("                background-color: red;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String user = (String) session.getAttribute("USER");
            boolean t = false;
            try {
                if (user.equals("ADMIN")) {
                    t = true;
                }
            } catch (Exception ex) {
            }
            if (t == false) {
        
      out.write("\n");
      out.write("\n");
      out.write("        <div style=\"margin: 0 auto; width: 600px; height: 450px; padding-left: 150px; box-sizing: border-box\">\n");
      out.write("            <h1 style=\"margin-left: 50px;\">ADMIN PANEL</h1>\n");
      out.write("            <fieldset style=\"width: 300px;\">\n");
      out.write("                <legend>Đăng nhập</legend>\n");
      out.write("                <form action=\"CAdmin\" method=\"post\">\n");
      out.write("                    User name:<input style=\"margin-left: 10px;\" type=\"text\" name=\"username\" value=\"\" /><br /><br />\n");
      out.write("                    Password:<input style=\"margin-left: 17px;\" type=\"password\" name=\"txtpassword\" value=\"\" /><br /><br />\n");
      out.write("                    <input type=\"submit\" name=\"btnsubmit\" value=\"Login\" />\n");
      out.write("                </form>\n");
      out.write("            </fieldset>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
} else {
      out.write("\n");
      out.write("        <div id=\"page\">\n");
      out.write("            <div id=\"headertop\">\n");
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
      out.write("                    <a id=\"dangnhap\" >Xin chào! ");
      out.print( username);
      out.write("</a>\n");
      out.write("                    <a style=\"color:#ababab; text-decoration: none; float:left; line-height: 28px; margin-left: 50px; \" href=\"CAdmin?btnsubmit=Logout\">Đăng xuất</a>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div> \n");
      out.write("            <div id=\"header\">\n");
      out.write("                <div id=\"banner\">\n");
      out.write("                    <a id=\"logo\" href=\"index.jsp\"></a>\n");
      out.write("                    <div style=\"float: left; margin-left: 180px; min-width: 300px; height: 89px; line-height: 89px; font-weight: bold; font-size: 40px;\">ADMIN CPANEL</div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"menu\">\n");
      out.write("\n");
      out.write("                    <div id=\"boxmenu\">\n");
      out.write("                        <ul style=\"margin:0; padding:0; list-style-type:none;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <li><a class=\"a1\" href=\"CChuyentrang?action=QLTour\">QUẢN LÝ TOUR</a></li>\n");
      out.write("                            <li><a class=\"a1\" href=\"CChuyentrang?action=QLUser\">QUẢN LÝ NGƯỜI DÙNG</a></li>\n");
      out.write("                            <li><a class=\"a1\" href=\"CChuyentrang?action=QLDonhang\">QUẢN LÝ ĐƠN HÀNG</a></li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"clear: both;\"></div>\n");
      out.write("            <div id=\"content\">\n");
      out.write("\n");
      out.write("                ");
  String action = (String) request.getAttribute("QL");
                    String s = "";
                    try {
                        if (action.equals("QLTour")) {
                            s = action;
                        } else if (action.equals("QLUser")) {
                            s = action;
                        } else if (action.equals("QLDonhang")) {
                            s = action;
                        }
                    } catch (Exception ex) {
                    }
                    if (s.equals("QLTour")) {


                
      out.write("\n");
      out.write("                <div style=\"font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; margin-top: 20px; margin-left: 460px;\">QUẢN LÝ TOUR</div>\n");
      out.write("                <a style=\"text-decoration: none; color: black; margin-left: 1080px; display: block; width: 90px; height: 30px; text-align: center; line-height: 30px; background-color: #337ab7; color: white; border-radius: 10px;\" href=\"themTour.jsp\">Thêm</a>\n");
      out.write("                <table style=\"margin-left: 4px; margin-top: 2px; min-width: 1000px;\" border=\"1\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th style=\"width: 50px;\">STT</th>\n");
      out.write("                        <th style=\"width: 50px;\">Mã Tour</th>\n");
      out.write("                        <th style=\"width: 70px\">Hình ảnh</th>\n");
      out.write("                        <th style=\"padding-left: 50px; box-sizing: border-box; text-align: left; width: 600px;\">Tên Tour</th>\n");
      out.write("                        <th style=\"width: 120px;\">Ngày khởi hành</th>\n");
      out.write("                        <th style=\"padding-left: 50px; box-sizing: border-box; text-align: left; width: 160px;\">Thời gian</th>\n");
      out.write("                        <th style=\"width: 60px;\"></th>\n");
      out.write("                        <th style=\"width: 60px;\"></th>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    ");
  String value = "";
                        int trang = 0;
                        int giatri = 0;
                        int sosp = 0;
                        try {
                            value = (String) request.getAttribute("VALUETN");
                            giatri = Integer.parseInt(value);

                        } catch (Exception ex) {
                        }
                        if (giatri == 0 || value.equals("1")) {
                            List<ChiTiet> list = new ArrayList<ChiTiet>();
                            ChiTiet ds = null;
                            int count = 0;
                            trang = 0;
                            sosp = 12;
                            try {
                                for (int i = trang; i < sosp; i++) {
                                    count++;
                                    ChiTiet ct = new ChiTiet();
                                    list = ct.show();
                                    ds = new ChiTiet();
                                    ds = list.get(i);


                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( count);
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( ds.getId());
      out.write("</td>\n");
      out.write("                        <td><img style=\"width: 70px; height: 60px;\" src=\"");
 out.print(ds.getUrl()); 
      out.write("\" /></td>\n");
      out.write("                        <td style=\"padding-left: 50px; box-sizing: border-box\">");
 out.print(ds.getTentour()); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.print(ds.getNgaykh()); 
      out.write("</td>\n");
      out.write("                        <td style=\"padding-left: 50px; box-sizing: border-box; text-align: left\">");
 out.print(ds.getThoigian());
      out.write("</td>\n");
      out.write("\n");
      out.write("                        <td><a style=\"text-decoration: none; color: black;display: block; width: 60px;\" href=\"CXulyTour?action=Detail&value=");
      out.print( ds.getId());
      out.write("&trang=");
      out.print( value);
      out.write("\">Chi Tiết</a></td>\n");
      out.write("                        <td><a style=\"text-decoration: none; color: black;\" href=\"CXulyTour?action=Delete&value=");
      out.print( ds.getId());
      out.write("&trang=");
      out.print( value);
      out.write("\">Xóa</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                            }
                        } catch (Exception ex) {
                        };
                    } else if (giatri > 1) {
                    
      out.write("\n");
      out.write("\n");
      out.write("                    ");

                        trang = giatri * 12;
                        int pt = giatri * 12;
                        int count = 0;
                        ChiTiet ct = new ChiTiet();
                        int tongsp = ct.show().size();
                        List<ChiTiet> list = new ArrayList<ChiTiet>();
                        ChiTiet ds = null;
                        if (tongsp - trang > 0) {
                            trang = giatri * 12;
                        } else if (tongsp - trang <= 0) {
                            trang = tongsp;
                        }
                        for (int i = (pt) - 12; i < trang; i++) {

                            count = i + 1;

                            ds = new ChiTiet();
                            list = ct.show();
                            ds = list.get(i);

                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( count);
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( ds.getId());
      out.write("</td>\n");
      out.write("                        <td><img style=\"width: 70px; height: 60px;\" src=\"");
 out.print(ds.getUrl()); 
      out.write("\" /></td>\n");
      out.write("                        <td style=\"padding-left: 50px; box-sizing: border-box\">");
 out.print(ds.getTentour()); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.print(ds.getNgaykh()); 
      out.write("</td>\n");
      out.write("                        <td style=\"padding-left: 50px; box-sizing: border-box; text-align: left\">");
 out.print(ds.getThoigian());
      out.write("</td>\n");
      out.write("                        <td ><a style=\"text-decoration: none; color: black;\" href=\"CXulyTour?action=Detail&value=");
      out.print( ds.getId());
      out.write("&trang=");
      out.print( value);
      out.write("\">Chi tiết</a></td>\n");
      out.write("                        <td><a style=\"text-decoration: none; color: black;\" href=\"CXulyTour?action=Delete&value=");
      out.print( ds.getId());
      out.write("&trang=");
      out.print( value);
      out.write("\">Xóa</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                            }
                        }
                    
      out.write("    \n");
      out.write("                </table>\n");
      out.write("                ");

                    for (int i = 1; i <= (36 / 12); i++) {
                        if (i == giatri) {

                
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"phantrang\" style=\" margin-left: 490px; margin-top: 50px; text-decoration: none;\"><a class=\"phantrangdk\" style=\"text-align: center; line-height: 32px;background-color: #305cb7; width: 32px; height: 32px;margin-bottom: 24px; display: block; float: left; margin-left: 10px; text-decoration: none; color: black\" href=\"CPhantrang?value=");
      out.print( i);
      out.write('"');
      out.write('>');
      out.print( i);
      out.write("</a></div>\n");
      out.write("\n");
      out.write("                ");

                } else {
                
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"phantrang\" style=\"margin-left: 470px; margin-top: 50px; \"><a style=\"text-align: center; line-height: 32px;background-color: #305cb7; width: 32px; height: 32px;margin-bottom: 24px; display: block; float: left; margin-left: 10px; text-decoration: none; color: black\" href=\"CPhantrang?value=");
      out.print( i);
      out.write('"');
      out.write('>');
      out.print( i);
      out.write("</a></div>\n");
      out.write("                    ");
}
                        }
                    } else if (s.equals("QLUser")) {
                    
      out.write("\n");
      out.write("\n");
      out.write("                <div style=\"font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; margin-top: 20px; margin-left: 320px;\">QUẢN LÝ TÀI KHOẢN NGƯỜI DÙNG</div>\n");
      out.write("                <table style=\"margin-left: 200px; min-width: 800px; margin-bottom: 20px;\" border=\"1\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>STT</th>\n");
      out.write("                        <th>Mã User</th>\n");
      out.write("                        <th>Họ tên</th>\n");
      out.write("                        <th>Username</th>\n");
      out.write("                        <th>Email</th>\n");
      out.write("                        <th style=\"width: 80px; height: 80px;\">Ảnh đại diện</th>\n");
      out.write("                        <th>Giới tính</th>\n");
      out.write("                        <th>Cấp độ</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        int count = 0;

                        User tk = new User();
                        int size = tk.getsize();
                        List<User> list = new ArrayList<User>();
                        list = tk.show();
                        for (User ds : list) {
                            count++;

                            if (ds.getIduser() == null) {
                                continue;
                            }
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( count);
      out.write("</td>\n");
      out.write("                        <td>");
 out.print(ds.getIduser()); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.print(ds.getHoten()); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.print(ds.getUsername()); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.print(ds.getEmail()); 
      out.write("</td>\n");
      out.write("                        <td><img style=\"width: 80px;\" src=\"");
 out.print(ds.getUrl()); 
      out.write("\"/></td>\n");
      out.write("                        <td>");
 out.print(ds.getGioitinh()); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.print(ds.getCapdo());
      out.write("</td>\n");
      out.write("                        <td><a style=\" text-decoration: none; color: black; cursor: pointer;\" href=\"CUser?action=Sửa&value=");
      out.print( ds.getIduser());
      out.write("\">Sửa</a></td>\n");
      out.write("                        <td><a style=\" text-decoration: none; color: black; cursor: pointer;\" href=\"CUser?action=Xóa&value=");
      out.print( ds.getIduser());
      out.write("\">Xóa</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("                ");

                } else if (s.equals("QLDonhang")) {
                
      out.write("\n");
      out.write("                <div style=\"font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; margin-top: 20px; margin-left: 400px;\">THÔNG TIN ĐƠN HÀNG</div>\n");
      out.write("                <table style=\"margin-left: 200px; min-width: 800px; margin-bottom: 20px;\" border=\"1\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>STT</th>\n");
      out.write("                        <th>Họ tên</th>\n");
      out.write("                        <th>Email</th>\n");
      out.write("                        <th style=\"width: 200px; \">Địa chỉ</th>\n");
      out.write("                        <th>Số điện Thoại</th>\n");
      out.write("                        <th>Tổng tiền</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        int count = 0;
                        DonHang dh = new DonHang();
                        ArrayList<DonHang> ds = dh.show();
                        for (int i = 0; i < ds.size(); i++) {
                            count++;

                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( count);
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( ds.get(i).getHoten());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( ds.get(i).getEmail());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( ds.get(i).getDiachi());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( ds.get(i).getDienthoai());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( ds.get(i).getTongtien());
      out.write("</td>\n");
      out.write("                        <td><a href=\"CThanhToan?action=getdata&value=");
      out.print( ds.get(i).getId() );
      out.write("\" style=\"text-decoration: none; color: black; width: 60px; cursor: pointer;\">Sửa</a></td>\n");
      out.write("                        <td><a href=\"CThanhToan?action=Delete&value=");
      out.print( ds.get(i).getId() );
      out.write("\" style=\"text-decoration: none; color: black; width: 60px; cursor: pointer;\">Xóa</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div style=\"clear: both;\"></div>\n");
      out.write("            <div style=\"background-color:rgba(43,42,50,1); width: 100%; height: 100px;\">\n");
      out.write("                <div style=\"color: white; text-align: center; line-height: 100px; font-size: 22px;\">© 2015 - Công ty Cổ Phần Du Lịch Quốc Tế Asian. Design bởi KIÊN_FPOLY</div>    \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");
}

        
      out.write("\n");
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
