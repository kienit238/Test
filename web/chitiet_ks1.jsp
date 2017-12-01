<%-- 
    Document   : chitiet_ks1
    Created on : Jun 2, 2017, 9:14:49 PM
    Author     : Computer
--%>

<%@page import="java.util.List"%>
<%@page import="Model.ChiTiet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
    </head>
    <body>
        <div id="page">

            <div id="headertop">
                <div id="khung">
                    <div id="textheader">Chào mừng bạn đến với Công ty Cổ Phần Du Lịch Quốc Tế Asian</div>

                    <%
                        String username = (String)session.getAttribute("USER");
                        if (username == null || username.length()==0) {
                            
                    %>
                    <a id="dangnhap" href="dangnhap.jsp" >Đăng nhập</a>
                    <%
                    } else if (username.length() > 0) {
                    %>
                    <a id="dangnhap" href="CLogin?btnsubmit=Logout">Xin chào! <%= username%></a>
                    <%
                        }
                    %>
                    <a id="dangky"  href="baotri.jsp">Đăng ký</a>
                    <a id="giohang" href="giohang.jsp">Giỏ hàng(0)</a>
                </div>
            </div> 
            <div id="header">   
                <div id="banner">
                    <a id="logo" href="index.jsp"></a>
                    <form action="baotri.jsp" method="post">
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
                    <a style="position:absolute; left:62px;" href="chitiet_ks1.html"><span style="color:#F00; margin-left:16px; "> Fortuna Hotel Hanoi</span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->
                <div id="leftct">
                    
                    <div style="margin-left:20px;" >
                        <div style="  float:left; width:478px; height:360px; margin-right:0px; margin-top:20px;"><img style="width: 478px; height: 360px;" alt="Error" src="<%= request.getAttribute("URL") %>" /></div>
                        <div style=" float:right; width:340px; height:360px; margin-left:20px; margin-right:0px; margin-top:20px;">
                            <div style="font-size:18px; color:#305cb7; margin-bottom:20px;"><%= request.getAttribute("TenKS") %></div>
                            <div style=" margin-bottom:14px; line-height:42px; color:#666666;width:340px; height:100px; border-top:1px dotted #CCCCCC; border-bottom:1px dotted #CCCCCC;">
                                <div>Cấp độ: <%= request.getAttribute("DanhGia") %></div>
                                <div>Điểm đến: <%= request.getAttribute("DiaDiem") %></div>
                            </div>
                                <div style="font-size:24px; font-weight:600; color:#F00; border-bottom:1px dotted #CCCCCC; padding-bottom:14px;"><%= request.getAttribute("Gia") %> VNĐ</div>
                                <div style="padding-top:14px; line-height:20px;"><%= request.getAttribute("MoTa") %></div>
                            <div style=" margin-top:20px;width:124px; height:40px; background-color:#305cb7; color:#FFF; text-transform:uppercase; line-height:40px; text-align:center;"><a href="baotri.jsp">đặt tour</a></div>
                        </div>
                        <div class="clear"></div>

                        <div style="width:180px; height:40px; line-height:40px; text-align:center; margin-top:80px; background-color:#305cb7; color:#FFF; text-transform:uppercase;">thông tin chi tiết</div>
                        <hr style="width:860px;"/>
                        <p><%= request.getAttribute("ChiTiet") %></p>

                    </div>
                </div>

                <div id="right">
                    <div id="boxright">
                        <div id="boxrighttt1">
                            <div style="width:270px; margin-bottom:6px;height:52px; line-height:52px; font-size:16px; font-weight:600; background-color:#305cb7; color:#FFF; padding-left:14px; text-transform:uppercase; box-sizing:border-box;">TẠI SAO CHỌN CHÚNG TÔI</div>
                            <ul style=" font-size:15px;list-style-position:inside; margin: 0px;padding:0px;list-style-image:url(Images/icon_Logo/tick-icon.png); line-height:36px;">
                                <li>Cam kết giá rẻ nhất thị trường</li>
                                <li>Nhân viên tư vấn nhiều kinh nghiệm!</li>
                                <li>Nhiều chương trình khuyến mãi</li>
                                <li>Thanh toán dễ dàng, đa dạng</li>
                                <li>Chính sách ưu đãi, hỗ trợ khách hàng tốt nhất!</li>
                            </ul>
                        </div>
                        <div  id="boxrighttt2">
                            <div style="margin-left:14px;">
                                <div style=" width:242px; height:50px;border-bottom:1px solid #dbdbdb; padding-top:24px; font-weight:400; color:#3066c9;box-sizing:border-box;">GỌI ĐỂ ĐƯỢC TƯ VẤN</div>
                                <div style="width:182px; height:43px; margin-top:14px; margin-bottom:14px; position:relative;"><img src="Images/icon_Logo/hotline-bg.png" /></div>
                                <p>Hãy gọi điện cho Asian Travel để nhận được những ưu đãi tốt nhất!</p>
                            </div>    
                        </div>


                        <div id="boxrighttt3">
                            <a style=" position:absolute;width:270px; height:203px; display:block; opacity:0.2;" href="baotri.html"><img style="position:absolute; top: 71px; right: 105px;" src="Images/icon_Logo/plus-img.png" /></a>
                            <img src="Images/icon_Logo/block-banner.png" />

                        </div>

                        <div id="boxrighttt4"><marquee direction="right" behavior="scroll" onmouseover="this.stop()" onmouseout="this.start()">
                                <img src="Images/Slide_Image/slider_home1.jpg" />
                                <img src="Images/Slide_Image/slider_home2.jpg" />
                                <img src="Images/Slide_Image/slider_home3.jpg" />
                            </marquee></div>

                        <div style=" margin-top:20px;margin-bottom:20px;"><h3 style="color:#305cb7;">TOUR NỔI BẬT</h3></div>
                        <%
                            ChiTiet ct = new ChiTiet();
                            List<ChiTiet> lst = ct.show();
                            for (int i = 0; i < 6; i++) {
                        %>
                        <div class="boxrightimg"><a href="CChitiet?tour=TN&ID=<%= lst.get(i).getId()%>"><img style="width: 72px; height: 56px;" alt="Error" src="<%= lst.get(i).getUrl()%>" /></a></div>
                        <div class="boxrighttext" style="padding: 0px;"><a href="CChitiet?tour=TN&ID=<%= lst.get(i).getId()%>"><%= lst.get(i).getTentour()%></a><br />
                            <span style="color:#e33729; font-weight:600"><%= lst.get(i).getGia()%>đ</span></div>
                            <%
                                }
                            %>
                    </div>
                </div>
                <div class="clear"></div>
                <!-- InstanceEndEditable -->	
            </div>

            <div id="footer">
                <div id="footerpage">
                    <div id="footer-top">

                        <a class="footer-top-menu" href="index.html">TRANG CHỦ</a>
                        <a class="footer-top-menu" href="baotri.html">QUY ĐỊNH CHÍNH SÁCH</a>
                        <a class="footer-top-menu" href="baotri.html">ĐIỀU KHOẢN SỬ DỤNG</a>
                        <a class="footer-top-menu"href="baotri.html">QUAN ĐIỂM KINH DOANH</a>
                        <a class="footer-top-menu" href="baotri.html">Ý KIẾN PHẢN HỒI</a>

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
                        <div class="boxchild">trangnt@dkt.com.vn</div>
                        <div class="clear"></div>
                    </div>
                    <div class="leftfooter">
                        <p style="color:#f4f4f4;">TOUR TRONG NƯỚC</p>
                        <ul class="margin">
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch Hạ Long</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch miền Bắc</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch miền Trung</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch miền Nam</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Tour ghép khách lẻ</a></li>
                        </ul>
                    </div>

                    <div class="leftfooter">
                        <p style="color:#f4f4f4;">TOUR QUỐC TẾ</p>
                        <ul class="margin">
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch Đông Nam Á</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch Đông Bắc Á</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch Trung Quốc</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch Hồng Kông</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Du lịch Âu Mỹ</a></li>
                        </ul>
                    </div>

                    <div class="leftfooter">
                        <p style="color:#f4f4f4;">TIN TỨC DU LỊCH</p>
                        <ul class="margin">
                            <li class="bullet-icon"><a class="type" href="baotri.html">Danh lam thắng cảnh</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Tin tức du lịch Việt Nam</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Thông tin ẩm thực</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Cẩm nang du lịch</a></li>
                            <li class="bullet-icon"><a class="type" href="baotri.html">Tin tức du lịch quốc tế</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                    <div id="bottom">© 2015 - Công ty Cổ Phần Du Lịch Quốc Tế Asian. Design bởi KIÊN_FPOLY</div>    
                </div>    
            </div>


        </div>
    </body>
</html>
