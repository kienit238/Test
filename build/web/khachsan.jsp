<%-- 
    Document   : khachsan
    Created on : Jun 2, 2017, 8:44:23 PM
    Author     : Computer
--%>

<%@page import="java.util.List"%>
<%@page import="Model.ChiTiet"%>
<%@page import="Model.KhachSan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Khách sạn</title>

        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>

    </head>
    <body> 


        <div id="page">

            <%@include file="inc/tophead.jsp" %> 
            <div id="header">   
                <div id="banner">
                    <a id="logo" href="index.jsp"></a>
                    <form action="server66.hostinger.vn" method="post">
                        <div style="width:370px; height:46px; position:relative;left: 210px;top: 36px; ">
                            <input style=" padding-left:14px; box-sizing:border-box;height:40px; width:298px; border:1px solid #dddddd; float:left; color:#a9a9a9; font-weight:300;" type="text" name="diadiem" placeholder="Nhập địa điểm bạn muốn đi..." id="search" />
                            <input type="submit" value="Tìm kiếm" style=" text-transform:uppercase;padding-left:4px; box-sizing:border-box; float:left;  width:70px; height:40px; background-color:#305cb7; color:#FFF;" />

                        </div>
                    </form>  
                    <div id="boxbanner">
                        <div id="clock"></div>
                        <div id="text1">T2-CN: 08:00-23:00</div>
                    </div>
                    <div id="boxbanner1">
                        <div id="icon1"></div>
                        <div id="texticon1">Hotline: <span>0168 868 8999</span></div>
                    </div>
                    <div id="boxbanner2">
                        <div id="icon2"></div>
                        <div id="texticon2">Số 419, Nguyễn Văn Cừ, TP. Hạ Long, Quảng Ninh</div>
                    </div>
                </div>
            </div>



            <div id="menu">

                <div id="boxmenu">
                    <ul style="margin:0; padding:0; list-style-type:none;">
                        <li><a id="home" href="index.jsp" ><img id="img1" alt="icon" src="Images/icon_Logo/1475354283_Streamline-18.png" width="24" height="24" /></a></li>

                        <li><a class="a1" href="index.jsp">TRANG CHỦ</a></li>
                        <li><a class="a1" href="gioithieu.jsp">GIỚI THIỆU</a></li>
                        <li><a class="a1" href="trongnuoc.jsp">TOUR TRONG NƯỚC</a>

                        </li>
                        <li><a class="a1" href="quocte.jsp">TOUR QUỐC TẾ<img alt="hoticon" style="position:absolute; right:20px;" src="Images/icon_Logo/hot-icon.gif" /></a></li>


                        <li><a class="a1" href="khachsan.jsp">KHÁCH SẠN</a></li>

                        <li><a class="a1" href="lienhe.jsp">LIÊN HỆ</a></li>
                    </ul>
                </div>    
            </div>
            <div class="trongnuoc"><!-- InstanceBeginEditable name="trongnuoc" -->
                <div style="width:1200px; height:30px; margin:0 auto; position:relative; ">
                    <a style=" color:#000;float:left; position:absolute; left:0px;;" href="index.html">Trang chủ</a>
                    <img style="position:absolute; top:8px; left:64px;" src="Images/icon_Logo/1475704202_icon-ios7-arrow-right.png" />
                    <a style="position:absolute; left:62px;" href="khachsan.jsp"><span style="color:#F00; margin-left:16px; ">Khách sạn</span></a>
                </div>

                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->

                <div id="leftks">
                    <div ><h3 id="boxvien1" >khách sạn</h3></div>
                    <%                        KhachSan ks = new KhachSan();
                        ArrayList<KhachSan> ds = ks.show();
                        for (int i = 0; i < 8; i++) {
                    %>

                    <div class="boxvien2">
                        <a style=" position:absolute;opacity:0.2;width:100px;height:75px; display:block;" href="CKhachSan?value=<%= ds.get(i).getId()%>"></a>
                        <div class="boximg2"><img style="width: 100px; height: 75px;" src="<%= ds.get(i).getUrl()%>" /></div>
                        <div class="boxvien3">
                            <a href="CKhachSan?value=<%= ds.get(i).getId()%>" class="textcolor1"><%= ds.get(i).getTenks()%></strong></a>
                            <br />

                            <p class="textcolor2 ">Khách sạn: <%= ds.get(i).getDanhgia()%><br />
                                Địa điểm: <%= ds.get(i).getDiadiem()%></p>
                        </div>
                    </div>

                    <%
                        }
                    %>




                </div>
                <div id="right">
                    <div id="boxright">
                        <div style="margin-bottom:20px;"><h3 style="color:#305cb7;">TOUR NỔI BẬT</h3></div>
                        <%
                            ChiTiet ct = new ChiTiet();
                            List<ChiTiet> lst = ct.show();
                            for (int i = 0; i < 6; i++) {
                        %>
                        <div class="boxrightimg"><a href="CChitiet?tour=TN&ID=<%= lst.get(i).getId() %>"><img style="width: 72px; height: 56px;" alt="Error" src="<%= lst.get(i).getUrl() %>" /></a></div>
                        <div class="boxrighttext" style="padding: 0px;"><a href="CChitiet?tour=TN&ID=<%= lst.get(i).getId() %>"><%= lst.get(i).getTentour() %></a><br />
                            <span style="color:#e33729; font-weight:600"><%= lst.get(i).getGia() %>đ</span></div>
                            <%
                                }
                            %>
                    </div>
                </div>
                <div style="clear:both"></div>
                <!-- InstanceEndEditable -->	
            </div>

            <div id="footer">
                <div id="footerpage">
                    <div id="footer-top">

                        <a class="footer-top-menu" href="index.jsp">TRANG CHỦ</a>
                        <a class="footer-top-menu" href="baotri.jsp">QUY ĐỊNH CHÍNH SÁCH</a>
                        <a class="footer-top-menu" href="baotri.jsp">ĐIỀU KHOẢN SỬ DỤNG</a>
                        <a class="footer-top-menu"href="baotri.jsp">QUAN ĐIỂM KINH DOANH</a>
                        <a class="footer-top-menu" href="baotri.jsp">Ý KIẾN PHẢN HỒI</a>

                    </div>
                    <div id="lienhe">
                        <p><font color="#f9f9f9">THÔNG TIN LIÊN HỆ</font></p>
                        <div class="icon">
                            <img alt="icon1" src="Images/icon_Logo/1475653288_location_pin_logo_social_media.png" />
                        </div>

                        <div class="span1"> Số 419, Nguyễn Văn Cừ, TP Hạ Long, Tỉnh Quảng Ninh</div>
                        <div class="clear"></div>
                        <div class="icon"><img alt="icon2" src="Images/icon_Logo/1475653277_phone_logo_social_media.png" /></div>
                        <div class="boxchild">0333.819.668 - Fax 0333.819.669</div>
                        <div class="clear"></div>
                        <div class="icon"><img alt="icon3" src="Images/icon_Logo/1475653300_email_mail_envelope_send_message.png" /></div>
                        <div class="boxchild">kienphvps05194@fpt.edu.vn</div>
                        <div class="clear"></div>
                    </div>
                    <div class="leftfooter">
                        <p style="color:#f4f4f4;">TOUR TRONG NƯỚC</p>
                        <ul class="margin">
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch Hạ Long</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch miền Bắc</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch miền Trung</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch miền Nam</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Tour ghép khách lẻ</a></li>
                        </ul>
                    </div>

                    <div class="leftfooter">
                        <p style="color:#f4f4f4;">TOUR QUỐC TẾ</p>
                        <ul class="margin">
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch Đông Nam Á</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch Đông Bắc Á</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch Trung Quốc</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch Hồng Kông</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Du lịch Âu Mỹ</a></li>
                        </ul>
                    </div>

                    <div class="leftfooter">
                        <p style="color:#f4f4f4;">TIN TỨC DU LỊCH</p>
                        <ul class="margin">
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Danh lam thắng cảnh</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Tin tức du lịch Việt Nam</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Thông tin ẩm thực</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Cẩm nang du lịch</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.jsp">Tin tức du lịch quốc tế</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                    <div id="bottom">© 2015 - Công ty Cổ Phần Du Lịch Quốc Tế Asian. Design bởi KIÊN_FPOLY</div>    
                </div>    
            </div>


        </div>
    </body>
</html>
