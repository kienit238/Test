<%-- 
    Document   : dangnhap
    Created on : Jun 2, 2017, 10:01:39 PM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
        <style>

            .dangnhap1{
                width: 560px; 
                height: 450px; 
                background-color: #f7f7f7; 
                border: 1px solid #eaeaea; 
                margin-top: 30px; 
                float: left; 
                padding: 40px 50px; 
                box-sizing: border-box; 
                text-align: justify;
            }

            .dangnhap1 .dh{
                width: 160px;
                height: 40px;
                background-color: #305cb7; 
                line-height: 40px; 
                text-align: center;
                float: left;
                color: #fff;
                cursor: pointer;
            }
            .dangnhap1 .dh a{
                text-decoration: none;

                width: 160px;
                height: 40px;
                font-weight: bold;
                display: block;
            }
            .dangnhap1 .dh:hover{
                background-color: #ed0e33;
            }
            #pass{
                height: 40px;
                line-height: 40px;
                margin-left: 12px;

                width: 160px;
                float: left;
            }
            #pass a{
                color: black;
                text-decoration: none;
                background-color: #f7f7f7; 

            }
            #pass a:hover{
                color: #8e1a2d;
            }
        </style>
    </head>
    <body>
        <div id="page">

            <div id="headertop">
                <div id="khung">
                    <div id="textheader">Chào mừng bạn đến với Công ty Cổ Phần Du Lịch Quốc Tế Asian</div>

                    <a id="dangnhap" href="dangnhap.jsp" >Đăng nhập</a>
                    <a id="dangky"  href="dangky.jsp">Đăng ký</a>
                    <a id="giohang" href="giohang.jsp">Giỏ hàng(0)</a>
                </div>
            </div>  

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
                    <a style=" color:#000;float:left; position:absolute; left:0px;;" href="index.jsp">Trang chủ</a>
                    <img alt="arrow" style="position:absolute; top:8px; left:64px;" src="Images/icon_Logo/1475704202_icon-ios7-arrow-right.png" />
                    <a style="position:absolute; left:62px;" href="dangnhap.jsp"><span style="color:#F00; margin-left:16px; ">Đăng nhập tài khoản</span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <!-- InstanceBeginEditable name="content" -->
                <h3 style=" padding-top:20px; padding-bottom: 0px; margin:0px; color:#305cb7; font-weight:600;">ĐĂNG NHẬP HOẶC TẠO TÀI KHOẢN MỚI</h3>
                <div class="dangnhap1" >
                    <p style="margin-bottom: 30px;"><strong>NGƯỜI DÙNG MỚI</strong></p>
                    <p style="margin-bottom: 16px;">Bằng cách tạo tài khoản, người dùng có thể nhận được thông tin từ cửa hàng một cách nhanh hơn, lưu trữ được nhiều địa chỉ giao hàng,xem và theo dõi đơn hàng của bạn và nhiều hơn nữa...</p>
                    <form method="get" action="CLogin">
                        <input class="dh" style="width: 190px; border: none; text-transform: uppercase" name="btnsubmit" value="Tạo tài khoản" />
                    </form>
                </div>
                <div class="dangnhap1" style="float: right;">
                    <p style="margin-bottom: 30px;"><strong>ĐĂNG NHẬP</strong></p>
                    <p style="margin-bottom: 16px;">Nếu bạn đã có tài khoản hãy nhập thông tin.</p>
                    
                    <form method="get" action="CLogin" name="myform" onsubmit="return checkform()" >
                        Nhập Email <span style="color: red;">*</span><br /><br />
                        <input style="height: 30px; width: 360px;" type="text" name="txtemail" value="" /> 

                        
                        
                        
                        <div id="mail" style="color: red"></div>
                        <br />
                        
                        Mật khẩu <span style="color: red;">*</span><br /><br />
                        <input style="height: 30px; width: 360px;" type="password" name="txtpassword" value="" /><br />
                        
                        
                        <script>
                            function checkform(){
                            var email=document.myform.txtemail.value;
                            var password=document.myform.txtpassword.value;
                            var pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
                            if(email==null || email==""){
                                document.getElementById("mail").innerHTML="Bạn chưa nhập Email!!!";
                                return false;
                            }
                            if(!email.match(pattern)){
                                document.getElementById("mail").innerHTML="Email không hợp lệ!!!";
                                return false;
                            }else{
                                return true;
                            }
                            if(password==null || password==""){
                                document.getElementById("password").innerHTML="Bạn chưa nhập Password!!!";
                                return false;
                            }
                            
                        }
                        </script>
                        <div id="password" style="color: red"></div>
                        <%
                            String result=(String)session.getAttribute("RESULT");
                            if(result==""){
                                 
                        %>
                        <div style="color: red">Email hoặc Password không chính xác!!!</div>
                        <%
                            session.invalidate();
                            
                        }

                        %>
                        <br />
                        <input style="text-transform: uppercase; border: none;" class="dh" type="submit" value="Đăng nhập" />
                        <input type="hidden" name="btnsubmit" value="Login" />

                        <div id="pass" ><a href="getpass.jsp">Quên mật khẩu?</a></div>
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
