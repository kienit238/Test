<%-- 
    Document   : quocte
    Created on : Jun 2, 2017, 9:09:10 PM
    Author     : Computer
--%>

<%@page import="java.util.List"%>
<%@page import="Model.hinhanh"%>
<%@page import="Model.ChiTiet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tour Quốc Tế</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
    </head>
    <body>
        <div id="page">

            <%@include file="inc/tophead.jsp" %> 
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
                    <img alt="arrow" style="position:absolute; top:8px; left:64px;" src="Images/icon_Logo/1475704202_icon-ios7-arrow-right.png" />
                    <a style="position:absolute; left:62px;" href="quocte.jsp"><span style="color:#F00; margin-left:16px; ">Tour quốc tế</span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->
                <div id="leftqt">
                    <div ><h3 id="boxvien1" >du lịch quốc tế</h3></div>
                    <%                        String value = "";
                        int trang = 0;
                        int giatri = 0;
                        try {
                            value = (String) request.getAttribute("VALUE");
                            giatri = Integer.parseInt(value);

                        } catch (Exception ex) {
                        };
                        if (giatri == 0 || value.equals("1")) {

                            trang = 1;
                            try {
                                for (int i = trang; i <= trang * 12; i++) {

                                    ChiTiet ct = new ChiTiet();

                                    ChiTiet ds = ct.showQT("QT" + i);

                    %>
                    <div class="boxleftqt">
                        <div class="boxleftqtimg">
                            <a href="CChitiet?tour=QT&ID=<%= ds.getId()%>" style="position:absolute; width:260px; height:198px; opacity:0.2; display:block;"></a>
                            <img style=" width:260px; height:198px;background-repeat: no-repeat; background-size: cover;" src="<%= ds.getUrl()%>" />
                            <div class="boxleftqttext"><%= ds.getThoigian()%></div>
                        </div>
                        <div class="boxleftqt2">
                            <div class="boxleftqt3">
                                <div style="margin-bottom:30px;" ><strong><%= ds.getTentour()%></strong></div>
                            </div>
                            <div style="color:#CCCC;margin-bottom:6px;">Khởi hành: <%= ds.getNgaykh()%></div>
                            <div style="color:#e33729;"><strong><%= ds.getGia()%>VNĐ</strong></div>	
                        </div>
                    </div>

                    <%}
                        } catch (Exception ex) {
                        };
                    } else if (giatri > 1) {

                    %>   
                    <%                     trang = giatri * 12;

                        for (int i = (trang) - 11; i <= trang; i++) {

                            ChiTiet ct = new ChiTiet();

                            ChiTiet ds = ct.showQT("QT" + i);

                    %>


                    <div class="boxleftqt">
                        <div class="boxleftqtimg">
                            <a href="CChitiet?tour=QT&ID=<%= ds.getId()%>" style="position:absolute; width:260px; height:198px; opacity:0.2; display:block;"></a>
                            <img style=" width:260px; height:198px;background-repeat: no-repeat; background-size: cover;" src="<%= ds.getUrl()%>" />
                            <div class="boxleftqttext"><%= ds.getThoigian()%></div>
                        </div>
                        <div class="boxleftqt2">
                            <div class="boxleftqt3">
                                <div style="margin-bottom:30px;" ><strong><%= ds.getTentour()%></strong></div>
                            </div>
                            <div style="color:#CCCC;margin-bottom:6px;">Khởi hành: <%= ds.getNgaykh()%></div>
                            <div style="color:#e33729;"><strong><%= ds.getGia()%>VNĐ</strong></div>	
                        </div>
                    </div>
                    <%}
                        }
                    %>

                    <%
                        for (int i = 1; i <= 2; i++) {
                            if (i == giatri) {

                    %>
                    <div class="phantrang" style="margin-left: 400px;"><a style="text-align: center; line-height: 32px;background-color: #305cb7; width: 32px; height: 32px;margin-bottom: 24px; display: block; float: left; margin-left: 10px;" href="CPhantrangQT?value=<%= i%>"><%= i%></a></div>
                        <% } else {
                        %>
                    <div class="phantrang" style="margin-left: 400px;"><a style="text-align: center; line-height: 32px;background-color: #305cb7; width: 32px; height: 32px;margin-bottom: 24px; display: block; float: left; margin-left: 10px;" href="CPhantrangQT?value=<%= i%>"><%= i%></a></div>
                        <%}
                            }
                        %>
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
                            <a style=" position:absolute;width:270px; height:203px; display:block; opacity:0.2;" href="#"><img style="position:absolute; top: 71px; right: 105px;" src="Images/icon_Logo/plus-img.png" /></a>
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
                            List<ChiTiet> lst = ct.showQT();
                            for (int i = 0; i < 6; i++) {
                        %>
                        <div class="boxrightimg"><a href="CChitiet?tour=QT&ID=<%= lst.get(i).getId()%>"><img style="width: 72px; height: 56px;" alt="Error" src="<%= lst.get(i).getUrl()%>" /></a></div>
                        <div class="boxrighttext" style="padding: 0px;"><a href="CChitiet?tour=QT&ID=<%= lst.get(i).getId()%>"><%= lst.get(i).getTentour()%></a><br />
                            <span style="color:#e33729; font-weight:600"><%= lst.get(i).getGia()%>đ</span></div>
                            <%
                                }
                            %>
                    </div>

                </div>

                <div style="clear:both"></div>

                <div class="clear"></div>   
                <!-- InstanceEndEditable -->	
            </div>

            <%@include file="inc/footer.jsp" %>


        </div>
    </body>
</html>
