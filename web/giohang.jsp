<%-- 
    Document   : giohang
    Created on : Jun 8, 2017, 7:57:32 PM
    Author     : Computer
--%>

<%@page import="Model.giohang"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
        <style>
            #page #content #ct{
                margin-top:20px;
                width:220px; 
                height:40px; 
                background-color:#305cb7; 
                color:#FFF; 
                text-transform:uppercase; 
                line-height:40px; 
                text-align:center; 
                cursor: pointer;
                margin-left: 50px;
            }	
            #page #content #ct a:hover{
                background-color: red;
            }
            #page #content #ct a{
                width: 220px;
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
                    <form action="server66.hostinger.vn" method="post">
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
                    <a style="position:absolute; left:62px;" href="giohang.jsp"><span style="color:#F00; margin-left:16px; ">Giỏ hàng</span></a>
                </div>
                <!-- InstanceEndEditable -->

            </div>
            <div id="content">
                <%                    ArrayList<giohang> gt = new giohang().getGt();
                    
                %>

                <%                        int count = 0;
                    int t = 0;
                    int tong;
                    String temp = "";
                    String kyhieu = "";
                    String st = "";
                    if (gt.size() > 0) {

                %>
                <div style="">GIỎ HÀNG</div>
                <table style="margin-left: 50px; margin-top: 50px; border-style: dashed;">
                    <thead >
                        <tr >
                            <th>STT</th>
                            <th style="width: 400px; text-align: left; padding-left: 50px; box-sizing: border-box">Tên Tour</th>
                            <th style="width: 200px; text-align: left; padding-left: 50px; box-sizing: border-box">Ngày KH</th>
                            <th style="width: 200px; text-align: left; padding-left: 10px; box-sizing: border-box">Thời gian</th>

                            <th style="width: 80px;text-align: left; padding-left: 10px; box-sizing: border-box">Số lượng</th>
                            <th style="width: 200px;text-align: left; padding-left: 50px; box-sizing: border-box">Giá tiền</th
                        </tr>
                    </thead>
                    <tr >
                        <%for (int i = 0; i < gt.size(); i++) {
                                String id = gt.get(i).getId();
                                String[] s = gt.get(i).getGia().split("\\.");
                                String ch = "";
                                for (int j = 0; j < s.length; j++) {
                                    ch = ch + s[j];
                                }
                                int gia = Integer.parseInt(ch);
                                t = t + gia;
                                temp = String.valueOf(t);

                                count++;
                        %>
                        <td><%= count%></td>
                        <td style="width: 400px; text-align: left; padding-left: 50px; box-sizing: border-box"><% out.print(gt.get(i).getTentour()); %></td>
                        <td style="width: 200px; text-align: left; padding-left: 50px; box-sizing: border-box"><% out.print(gt.get(i).getNgaykh()); %></td>
                        <td style="width: 200px; text-align: left; padding-left: 10px; box-sizing: border-box"><% out.print(gt.get(i).getThoigian()); %></td>

                        <td style="width: 80px; text-align: left; padding-left: 10px; box-sizing: border-box; text-align: center"><% out.print(gt.get(i).getSoluong()); %></td>
                        <td style="width: 200px; text-align: left; padding-left: 50px; box-sizing: border-box"><% out.print(gt.get(i).getGia());%></td>
                        <td><a href="CGiohangAction?action=<%= i%>"><img src="Images/icon_Logo/remove.png" /></a></td>
                    </tr>
                    <%}%>
                </table>
                <div id="ct"><a style="color: white; text-decoration: none;" href="index.jsp">TIẾP TỤC MUA SẮM</a></div>
                <div style="float: right; margin-right: 276px;">TỔNG GIỎ HÀNG</div>
                <div class="clear"></div>
                <div style="float: right; margin-right: 50px; width: 350px;"><hr></div>
                <div class="clear"></div>
                <div style="float: right; margin-right: 50px; margin-top: 20px; width: 160px; text-align: right; color: red;"><%= temp%> VNĐ</div>
                <div style="float: right; margin-right: 106px; margin-top: 20px;">TỔNG TIỀN</div>
                <div class="clear"></div>
                <div style="float: right; margin-right: 50px; margin-top: 20px; background-color: #ad0800; width: 350px; height: 40px; text-align: center; line-height: 40px;"><a style="width: 350px; height: 40px; color: white; text-decoration: none;" href="thanhtoan.jsp">THANH TOÁN</a></div>
                <%
                } else if (gt.size() == 0) {%>
                <div style="font-size: 32p;"><h1>Giỏ hàng của bạn hiện đang trống</h1></div><br />
                <a style="width: 250px; height: 50px; background-color: yellow; display: block; text-align: center; cursor: pointer; line-height: 50px; text-decoration: none; color: black; font-weight: bold; font-size: 24px;" href="index.jsp">Tiếp tục mua sắm</a>
                <%}%>


            </div>
            <%@include file="inc/footer.jsp" %>
        </div>

    </body>
</html>
