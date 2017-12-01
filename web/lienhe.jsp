<%-- 
    Document   : lienhe
    Created on : Jun 2, 2017, 9:06:00 PM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên hệ</title>
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
                    <img alt="arrow" style="position:absolute; top:8px; left:64px;" src="Images/icon_Logo/1475704202_icon-ios7-arrow-right.png" />
                    <a style="position:absolute; left:62px;" href="khachsan.html"><span style="color:#F00; margin-left:16px; ">Liên hệ</span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->
                <div id="left-lienhe">
                    <p style="color:#305cb7; font-size:24px; font-weight:600;">THÔNG TIN LIÊN HỆ</p>
                    <p style="line-height:40px;">
                        CÔNG TY CỔ PHẦN DU LỊCH QUỐC TẾ ASIAN<br />

                        Địa chỉ: Số 419, Nguyễn Văn Cừ, TP Hạ Long, Quảng Ninh<br />

                        Hotline: 0168 868 8999<br />

                        Tel: 0333.819.668 - Fax 0333.819.669<br />

                        Website: http://asiantravel.vn
                    </p>
                </div>
                <div id="right-lienhe">
                    <p style="color:#305cb7; font-size:24px; font-weight:600; text-transform:uppercase;">thông tin phản hồi</p>
                    <div class="box-lienhe">
                        <form action="server66.hostinger.vn" method="post">
                            <label>Họ Tên <span>*</span><br />
                                <input placeholder="Họ Tên" class="ip"type="text" required="required" /><br /></label>
                            <label>Email <span>*</span><br />
                                <input placeholder="Email" class="ip" type="email" required="required" /><br /></label>
                            <label>Tiêu đề <span>*</span><br />
                                <input placeholder="Tiêu đề" class="ip" type="text" required="required" /><br /> </label>
                            <label>Nội dung <span>*</span><br />
                                <textarea placeholder="Nội dung" style=" padding-top:6px; padding-left:16px; box-sizing:border-box; margin-top:10px; width:700px; height:80px; border:1px solid #CCC; border-radius:4px;margin-bottom:10px;background-color:#f7f7f7;" type="text" required="required" ></textarea></label>
                            <input class="button" type="submit" value="Gửi" />
                            <input class="button" type="reset" value="Reset" />
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
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
