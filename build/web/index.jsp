<%-- 
    Document   : index
    Created on : Jun 2, 2017, 7:10:36 PM
    Author     : Computer
--%>

<%@page import="Model.hinhanh"%>
<%@page import="Model.ChiTiet"%>
<%@page import="Model.getData"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Du lịch Á Âu</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
    </head>
    <body>
    <body>

        <div id="page">

            <%@include file="inc/tophead.jsp" %>

            <div id="header">   
                <div id="banner">
                    <a id="logo" href="index.jsp"></a>
                    <form action="baotri.jsp" method="post">
                        <div style="width:370px; height:46px; position:relative;left: 210px;top: 36px; ">
                            <input style=" padding-left:14px; box-sizing:border-box;height:40px; width:298px; border:1px solid #dddddd; float:left; color:#a9a9a9; font-weight:300;" type="text" name="diadiem" placeholder="Nhập địa điểm bạn muốn đi..." id="search" />
                            <input type="submit" value="Tìm kiếm" style=" text-transform:uppercase;padding-left:4px; box-sizing:border-box; float:left;  width:70px; height:40px; background-color:#305cb7; color:#FFF; border: none;" />

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

            <div class="slideshow-container">
                <div class="mySlides fade">

                    <img src="Images/Slideshow/slide-img1.jpg" style="width:100%">

                </div>

                <div class="mySlides fade">

                    <img src="Images/Slideshow/slide-img2.jpg" style="width:100%">

                </div>

                <div class="mySlides fade">

                    <img src="Images/Slideshow/slide-img3.jpg" style="width:100%">

                </div>

                <div class="mySlides fade">

                    <img src="Images/Slideshow/slide-img4.jpg" style="width:100%">

                </div>

                <div class="mySlides fade">

                    <img src="Images/Slideshow/slide-img5.jpg" style="width:100%">

                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>

            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span> 
                <span class="dot" onclick="currentSlide(2)"></span> 
                <span class="dot" onclick="currentSlide(3)"></span> 
                <span class="dot" onclick="currentSlide(4)"></span> 
                <span class="dot" onclick="currentSlide(5)"></span> 

            </div>
            <script>
                var slideIndex = 1;
                showSlides(slideIndex);

                function plusSlides(n) {
                    showSlides(slideIndex += n);
                }

                function currentSlide(n) {
                    showSlides(slideIndex = n);
                }

                function showSlides(n) {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    var dots = document.getElementsByClassName("dot");
                    if (n > slides.length) {
                        slideIndex = 1
                    }
                    if (n < 1) {
                        slideIndex = slides.length
                    }
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    for (i = 0; i < dots.length; i++) {
                        dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex - 1].style.display = "block";
                    dots[slideIndex - 1].className += " active";
                }
            </script>   
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
                    <a style=" color:#000;float:left; position:absolute; left:0px;;" href="index.jsp">Trang chủ</a>
                    <img alt="arrow" style="position:absolute; top:8px; left:64px;" src="Images/icon_Logo/1475704202_icon-ios7-arrow-right.png" />
                    <a style="position:absolute; left:62px;" href="index.jsp"><span style="color:#F00; margin-left:16px; ">Trang chủ</span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->
                <%try {%>
                <%                    String tentour = (String) request.getAttribute("TOUR");
                    String ngaykh = (String) request.getAttribute("NGAYKH");
                    String thoigian = (String) request.getAttribute("THOIGIAN");
                    String diadiem = (String) request.getAttribute("DIADIEM");
                    String gia = (String) request.getAttribute("GIA");
                    String mota = (String) request.getAttribute("MOTA");
                    String chitiet = (String) request.getAttribute("CHITIET");
                %>
                <div class="box1">du lịch trong nước</div>
                <%
                    for (int i = 1; i <= 6; i++) {

                        ChiTiet ct = new ChiTiet();
                        ChiTiet ds = ct.showTN("TN" + i);

                %>


                <div  class="boxleft">

                    <a href="CChitiet?tour=TN&ID=<%= ds.getId()%>"><img style="width: 370px; height: 274px;background-size: cover; background-position: center center;background-repeat: no-repeat;"  src="<%= ds.getUrl()%>" /></a>
                    <div class="img2">tour mới</div>

                    <a class="boxinleft" href="CChitiet?tour=TN&ID=<%= ds.getId()%>" ><div class="overflow" style="font-weight: bold;"><%= ds.getTentour()%></div>
                        <%= ds.getThoigian()%><br />
                        <%= ds.getGia()%> VNĐ<br />
                        Điểm đến: <%= ds.getDiadiem()%>
                    </a>

                </div>    

                <%}%>



                <div style="clear:both;"></div> 

                <div class="box1">du lịch quốc tế</div>
                <%
                    for (int i = 1; i <= 6; i++) {

                        ChiTiet ct = new ChiTiet();

                        ChiTiet ds = ct.showQT("QT" + i);

                %>

                <div  class="boxleft">
                    <a href="CChitiet?tour=QT&ID=<%= ds.getId()%>"><img style="width: 370px; height: 274px;" alt="disneyland" src="<%= ds.getUrl()%>" /></a>
                    <div class="img2">tour mới</div>
                    <a class="boxinleft" href="CChitiet?tour=QT&ID=<%= ds.getId()%>"><div class="overflow"><%= ds.getTentour()%></div>
                        <%= ds.getThoigian()%><br />
                        Giá: <%= ds.getGia()%>VNĐ<br />
                        Điểm đến: <%= ds.getDiadiem()%>
                    </a>
                </div>
                <%}%>


                <%} catch (Exception ex) {
        
    }%>
                <div style="clear:both;"></div>   		
                <!-- InstanceEndEditable -->	
            </div>

            <%@include file="inc/footer.jsp" %>


        </div>
    </body>
</html>
