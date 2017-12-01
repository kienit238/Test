<%-- 
    Document   : dangky
    Created on : Jun 3, 2017, 8:29:46 AM
    Author     : Computer
--%>


<!DOCTYPE html>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
        <style>
            .put{
                width: 300px;
                height: 30px;
                border-radius: 5%;
                margin-left: 40px;
            }
            #boxdk{
                width: 500px;
                height: 500px;

                margin-left: 360px;
                padding-top: 100px;
                padding-left: 20px;
                box-sizing: border-box;
            }
            #btndk{
                width: 140px;
                height: 50px;
                margin-left: 130px;
                margin-top: 50px;
                cursor: pointer;
                background-color: rgb(48,92,183);
                color: #fff;
            }
            #btndk:hover{
                background-color: rgb(232,35,0);
            }

            .sex{
                width: 24px;
                height: 32px;


            }
        </style>
    </head>
    <body>
        <div id="page">

            <div id="headertop">
                <div id="khung">
                    <div id="textheader">Chào mừng bạn đến với Công ty Cổ Phần Du Lịch Quốc Tế Asian</div>

                    <a id="dangnhap" href="baotri.jsp" >Đăng nhập</a>
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
                    <a style=" color:#000;float:left; position:absolute; left:0px;;" href="index.jsp">Trang chủ</a>
                    <img alt="arrow" style="position:absolute; top:8px; left:64px;" src="Images/icon_Logo/1475704202_icon-ios7-arrow-right.png" />
                    <a style="position:absolute; left:62px;" href="dangnhap.jsp"><span style="color:#F00; margin-left:16px; ">Đăng ký tài khoản</span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->
                <div id="boxdk">
                    <script type="text/javascript">
                        function checkform() {
                            var username = myform.username.value;
                            var email = myform.email.value;
                            var password = myform.password.value;
                            var pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                                    + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
                            if (username == null || username == "") {
                                document.getElementById("username").innerHTML = "Bạn chưa nhập Họ tên!!!";
                                myform.username.focus();
                                return false;
                            }
                            if (email == null || email == "") {
                                document.getElementById("email").innerHTML = "Bạn chưa nhập Email!!!";
                                document.myform.email.focus();
                                return false;
                            }
                            if (email.length > 0 && !email.match(pattern)) {
                                document.getElementById("email").innerHTML = "Email không hợp lệ!!!";
                                myform.email.focus();
                                return false;
                            }
                            if (password == null || password == "") {
                                document.getElementById("password").innerHTML = "Bạn chưa nhập Password!!!";
                                myform.password.focus();
                                return false;
                            }


                        }
                    </script>
                    <form name="myform" method="post" onsubmit="return checkform();" action="CLogin"  >

                        Họ tên: <input style="margin-left: 35px;" class="put" type="text" name="username" value="" placeholder=" Nhập họ tên" /><br />

                        <div style="color: red; margin-left: 90px;" id="username"></div>
                       
                        <br />
                        Email: <input class="put" type="email" name="email" value="" placeholder=" Nhập Email" /><br />
                        <div style="color: red; margin-left: 90px;" id="email"></div>
                        <br />
                        Mật khẩu: <input style="margin-left: 17px;" class="put" type="password" name="password" value="" placeholder=" Mật khẩu từ 6 đến 32 ký tự" /><br />
                        <div style="color: red; margin-left: 90px;" id="password"></div>
                        <br />
                        Giới tính: <span style="width: 140px; height: 30px; padding-left: 20px; "><input type="radio" name="gioitinh" value="Nam" />
                            Nam
                            <input type="radio" name="gioitinh" value="Nữ" />Nữ </span><br /><br />

                        Ngày sinh: <input style="margin-left: 14px;" class="put" type="date" name="ngaysinh" value="" /><br /><br />
                        <input type="hidden" name="btnsubmit" value="Register" />
                        <input id="btndk" type="submit" value="Đăng ký" />
                    </form>

                </div>
                <div style="clear:both;"></div> 
                <div style="margin-bottom: 100px;"></div>                
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
