<%-- 
    Document   : s
    Created on : Jun 10, 2017, 1:40:12 PM
    Author     : Computer
--%>

<%@page import="Model.DonHang"%>
<%@page import="java.util.Vector"%>
<%@page import="com.sun.javafx.geom.Vec2d"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.User"%>
<%@page import="Model.ChiTiet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
        <style>
            td a:hover{
                color: white;
                background-color: red;
            }
        </style>
    </head>
    <body>
        <%
            String user = (String) session.getAttribute("USER");
            boolean t = false;
            try {
                if (user.equals("ADMIN")) {
                    t = true;
                }
            } catch (Exception ex) {
            }
            if (t == false) {
        %>

        <div style="margin: 0 auto; width: 600px; height: 450px; padding-left: 150px; box-sizing: border-box">
            <h1 style="margin-left: 50px;">ADMIN PANEL</h1>
            <fieldset style="width: 300px;">
                <legend>Đăng nhập</legend>
                <form action="CAdmin" method="post">
                    User name:<input style="margin-left: 10px;" type="text" name="username" value="" /><br /><br />
                    Password:<input style="margin-left: 17px;" type="password" name="txtpassword" value="" /><br /><br />
                    <input type="submit" name="btnsubmit" value="Login" />
                </form>
            </fieldset>
        </div>

        <%} else {%>
        <div id="page">
            <div id="headertop">
                <div id="khung">
                    <div id="textheader">Chào mừng bạn đến với Công ty Cổ Phần Du Lịch Quốc Tế Asian</div>
                    <%
                        String username = (String) session.getAttribute("USER");
                        if (username == null || username.length() == 0) {

                    %>
                    <a id="dangnhap" href="dangnhap.jsp" >Đăng nhập</a>
                    <%                    } else if (username.length() > 0) {
                    %>
                    <a id="dangnhap" >Xin chào! <%= username%></a>
                    <a style="color:#ababab; text-decoration: none; float:left; line-height: 28px; margin-left: 50px; " href="CAdmin?btnsubmit=Logout">Đăng xuất</a>
                    <%
                        }
                    %>


                </div>
            </div> 
            <div id="header">
                <div id="banner">
                    <a id="logo" href="index.jsp"></a>
                    <div style="float: left; margin-left: 180px; min-width: 300px; height: 89px; line-height: 89px; font-weight: bold; font-size: 40px;">ADMIN CPANEL</div>
                </div>

                <div id="menu">

                    <div id="boxmenu">
                        <ul style="margin:0; padding:0; list-style-type:none;">


                            <li><a class="a1" href="CChuyentrang?action=QLTour">QUẢN LÝ TOUR</a></li>
                            <li><a class="a1" href="CChuyentrang?action=QLUser">QUẢN LÝ NGƯỜI DÙNG</a></li>
                            <li><a class="a1" href="CChuyentrang?action=QLDonhang">QUẢN LÝ ĐƠN HÀNG</a></li>

                        </ul>
                    </div>    
                </div>
            </div>
            <div style="clear: both;"></div>
            <div id="content">

                <%  String action = (String) request.getAttribute("QL");
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


                %>
                <div style="font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; margin-top: 20px; margin-left: 460px;">QUẢN LÝ TOUR</div>
                <a style="text-decoration: none; color: black; margin-left: 1080px; display: block; width: 90px; height: 30px; text-align: center; line-height: 30px; background-color: #337ab7; color: white; border-radius: 10px;" href="themTour.jsp">Thêm</a>
                <table style="margin-left: 4px; margin-top: 2px; min-width: 1000px;" border="1">
                    <tr>
                        <th style="width: 50px;">STT</th>
                        <th style="width: 50px;">Mã Tour</th>
                        <th style="width: 70px">Hình ảnh</th>
                        <th style="padding-left: 50px; box-sizing: border-box; text-align: left; width: 600px;">Tên Tour</th>
                        <th style="width: 120px;">Ngày khởi hành</th>
                        <th style="padding-left: 50px; box-sizing: border-box; text-align: left; width: 160px;">Thời gian</th>
                        <th style="width: 60px;"></th>
                        <th style="width: 60px;"></th>
                    </tr>

                    <%  String value = "";
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


                    %>
                    <tr>
                        <td><%= count%></td>
                        <td><%= ds.getId()%></td>
                        <td><img style="width: 70px; height: 60px;" src="<% out.print(ds.getUrl()); %>" /></td>
                        <td style="padding-left: 50px; box-sizing: border-box"><% out.print(ds.getTentour()); %></td>
                        <td><% out.print(ds.getNgaykh()); %></td>
                        <td style="padding-left: 50px; box-sizing: border-box; text-align: left"><% out.print(ds.getThoigian());%></td>

                        <td><a style="text-decoration: none; color: black;display: block; width: 60px;" href="CXulyTour?action=Detail&value=<%= ds.getId()%>&trang=<%= value%>">Chi Tiết</a></td>
                        <td><a onclick="return confirm('Bạn thật sự muốn xóa nội dung này?')" style="text-decoration: none; color: black;" href="CXulyTour?action=Delete&value=<%= ds.getId()%>&trang=<%= value%>">Xóa</a></td>
                    </tr>
                    <%
                            }
                        } catch (Exception ex) {
                        };
                    } else if (giatri > 1) {
                    %>

                    <%
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

                    %>
                    <tr>
                        <td><%= count%></td>
                        <td><%= ds.getId()%></td>
                        <td><img style="width: 70px; height: 60px;" src="<% out.print(ds.getUrl()); %>" /></td>
                        <td style="padding-left: 50px; box-sizing: border-box"><% out.print(ds.getTentour()); %></td>
                        <td><% out.print(ds.getNgaykh()); %></td>
                        <td style="padding-left: 50px; box-sizing: border-box; text-align: left"><% out.print(ds.getThoigian());%></td>
                        <td ><a style="text-decoration: none; color: black;" href="CXulyTour?action=Detail&value=<%= ds.getId()%>&trang=<%= value%>">Chi tiết</a></td>
                        <td><a onclick="return confirm('Bạn thật sự muốn xóa nội dung này?')" style="text-decoration: none; color: black;" href="CXulyTour?action=Delete&value=<%= ds.getId()%>&trang=<%= value%>">Xóa</a></td>
                    </tr>
                    <%
                            }
                        }
                    %>    
                </table>
                <%
                    for (int i = 1; i <= (36 / 12); i++) {
                        if (i == giatri) {

                %>

                <div class="phantrang" style=" margin-left: 490px; margin-top: 50px; text-decoration: none;"><a class="phantrangdk" style="text-align: center; line-height: 32px;background-color: #305cb7; width: 32px; height: 32px;margin-bottom: 24px; display: block; float: left; margin-left: 10px; text-decoration: none; color: black" href="CPhantrang?value=<%= i%>"><%= i%></a></div>

                <%
                } else {
                %>

                <div class="phantrang" style="margin-left: 470px; margin-top: 50px; "><a style="text-align: center; line-height: 32px;background-color: #305cb7; width: 32px; height: 32px;margin-bottom: 24px; display: block; float: left; margin-left: 10px; text-decoration: none; color: black" href="CPhantrang?value=<%= i%>"><%= i%></a></div>
                    <%}
                        }
                    } else if (s.equals("QLUser")) {
                    %>

                <div style="font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; margin-top: 20px; margin-left: 320px;">QUẢN LÝ TÀI KHOẢN NGƯỜI DÙNG</div>
                <table style="margin-left: 200px; min-width: 800px; margin-bottom: 20px;" border="1">
                    <tr>
                        <th>STT</th>
                        <th>Mã User</th>
                        <th>Họ tên</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th style="width: 80px; height: 80px;">Ảnh đại diện</th>
                        <th>Giới tính</th>
                        <th>Cấp độ</th>
                    </tr>
                    <%
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
                    %>
                    <tr>
                        <td><%= count%></td>
                        <td><% out.print(ds.getIduser()); %></td>
                        <td><% out.print(ds.getHoten()); %></td>
                        <td><% out.print(ds.getUsername()); %></td>
                        <td><% out.print(ds.getEmail()); %></td>
                        <td><img style="width: 80px;" src="<% out.print(ds.getUrl()); %>"/></td>
                        <td><% out.print(ds.getGioitinh()); %></td>
                        <td><% out.print(ds.getCapdo());%></td>
                        <td><a style=" text-decoration: none; color: black; cursor: pointer;" href="CUser?action=Sửa&value=<%= ds.getIduser()%>">Sửa</a></td>
                        <td><a onclick="return confirm('Bạn thật sự muốn xóa nội dung này?')" style=" text-decoration: none; color: black; cursor: pointer;" href="CUser?action=Xóa&value=<%= ds.getIduser()%>">Xóa</a></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
                <%
                } else if (s.equals("QLDonhang")) {
                %>
                <div style="font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; margin-top: 20px; margin-left: 400px;">THÔNG TIN ĐƠN HÀNG</div>
                <table style="margin-left: 200px; min-width: 800px; margin-bottom: 20px;" border="1">
                    <tr>
                        <th>STT</th>
                        <th>Họ tên</th>
                        <th>Email</th>
                        <th style="width: 200px; ">Địa chỉ</th>
                        <th>Số điện Thoại</th>
                        <th>Tổng tiền</th>
                    </tr>
                    <%
                        int count = 0;
                        DonHang dh = new DonHang();
                        ArrayList<DonHang> ds = dh.show();
                        for (int i = 0; i < ds.size(); i++) {
                            count++;

                    %>
                    <tr>
                        <td><%= count%></td>
                        <td><%= ds.get(i).getHoten()%></td>
                        <td><%= ds.get(i).getEmail()%></td>
                        <td><%= ds.get(i).getDiachi()%></td>
                        <td><%= ds.get(i).getDienthoai()%></td>
                        <td><%= ds.get(i).getTongtien()%></td>
                        <td><a href="CThanhToan?action=getdata&value=<%= ds.get(i).getId() %>" style="text-decoration: none; color: black; width: 60px; cursor: pointer;">Sửa</a></td>
                        <td><a onclick="return confirm('Bạn thật sự muốn xóa nội dung này?')" href="CThanhToan?action=Delete&value=<%= ds.get(i).getId() %>" style="text-decoration: none; color: black; width: 60px; cursor: pointer;">Xóa</a></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
                <%
                    }
                %>
            </div>

            <div style="clear: both;"></div>
            <div style="background-color:rgba(43,42,50,1); width: 100%; height: 100px;">
                <div style="color: white; text-align: center; line-height: 100px; font-size: 22px;">© 2015 - Công ty Cổ Phần Du Lịch Quốc Tế Asian. Design bởi KIÊN_FPOLY</div>    
            </div>

        </div>
        <%}

        %>
    </body>
</html>
