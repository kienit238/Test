<%-- 
    Document   : chitiet_tqt1
    Created on : Jun 2, 2017, 9:18:09 PM
    Author     : Computer
--%>

<%@page import="java.util.List"%>
<%@page import="Model.ChiTiet"%>
<%@page import="Model.ChiTiet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
        <style>
            #page #content #leftct #ct{
                margin-top:20px;
                width:124px; 
                height:40px; 
                background-color:#305cb7; 
                color:#FFF; 
                text-transform:uppercase; 
                line-height:40px; 
                text-align:center; 
                cursor: pointer;
            }	
            #page #content #leftct #ct a:hover{
                background-color: red;
            }
            #page #content #leftct #ct a{
                width: 124px;
                height: 40px;
                display: block;
            }
        </style>
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
                <%                    String tentour = (String) request.getAttribute("TOUR");
                    String ngaykh = (String) request.getAttribute("NGAYKH");
                    String thoigian = (String) request.getAttribute("THOIGIAN");
                    String diadiem = (String) request.getAttribute("DIADIEM");
                    String gia = (String) request.getAttribute("GIA");
                    String mota = (String) request.getAttribute("MOTA");
                    String chitiet = (String) request.getAttribute("CHITIET");
                    String url = (String) request.getAttribute("URL");
                    String id = (String) request.getAttribute("ID");
                %>
                <div style="width:1200px; height:30px; margin:0 auto; position:relative; ">
                    <a style=" color:#000;float:left; position:absolute; left:0px;;" href="index.jsp">Trang chủ</a>
                    <img alt="Sydney" style="position:absolute; top:8px; left:64px;" src="Images/icon_Logo/1475704202_icon-ios7-arrow-right.png" />
                    <a style="position:absolute; left:62px;" href="CChitiet?tour=QT&ID=<%= id%>"><span style="color:#F00; margin-left:16px; "> <%= tentour%></span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->
                <div id="leftct">
                    <div style="margin-left:20px;" >
                        <div style="  float:left; width:478px; height:360px; margin-right:0px; margin-top:20px;"><img style="width:478px; height:360px;" src="<%= url%>" /></div>
                        <div style=" float:right; width:340px; height:360px; margin-left:20px; margin-right:0px; margin-top:20px;">
                            <div style="font-size:18px; color:#305cb7; margin-bottom:20px; font-weight: bold;"><%= tentour%></div>
                            <div style=" box-sizing: border-box; padding-bottom: 14px;padding-top: 14px;margin-bottom:20px; line-height:28px; color:#666666;width:340px; height:130px; border-top:1px dotted #CCCCCC; border-bottom:1px dotted #CCCCCC;">
                                <div>Ngày khởi hành: <%= ngaykh%></div>
                                <div>Thời gian: <%= thoigian%></div>
                                <div>Điểm đến: <%= diadiem%></div>
                            </div>
                            <div style="font-size:24px; font-weight:600; color:#F00; border-bottom:1px dotted #CCCCCC; padding-bottom:14px;"><%= gia%>VNĐ</div>
                            <div style="padding-top:14px; line-height:20px;"><%= mota%></div>
                            <div id="ct"><a style="color: white; text-decoration: none;" href="CGiohang?tour=QT&value=<%= id%>">đặt tour</a></div>
                        </div>
                        <div class="clear"></div>

                        <div style="width:180px; height:40px; line-height:40px; text-align:center; margin-top:80px; background-color:#305cb7; color:#FFF; text-transform:uppercase;">thông tin chi tiết</div>
                        <hr style="width:860px;"/>



                        <div style="width: 860px; height:80px; line-height:30px; text-align:center;"><span style="color:#000; font-weight:600;">Lịch trình du lịch:<br />

                                <%= tentour%><br />

                                Thời gian <%= thoigian%><br />

                                (phương tiện vận chuyển xe du lịch, máy bay, xe Tuktuk)</span><br />

                        </div>
                        <div style="padding-top:60px;"></div>
                        <p style="line-height: 32px; text-align: justify"><%= chitiet%></p>
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
                <div class="clear"></div>
                <!-- InstanceEndEditable -->	
            </div>

            <%@include file="inc/footer.jsp" %>


        </div>
    </body>
</html>
