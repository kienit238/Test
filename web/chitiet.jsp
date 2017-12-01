<%-- 
    Document   : chitiettour
    Created on : Jun 16, 2017, 7:55:12 PM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết Tour</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
        <style>

        </style>
    </head>
    <body>
        <div id="page">

            <%@include file="inc/topQT.jsp" %>
            <% request.setCharacterEncoding("UTF-8"); %>
            <%
                String chucnang = (String) request.getAttribute("chucnang");
                if (chucnang.equals("Tour")) {
            %>
            <div id="content" style="padding-left: 300px; padding-top: 20px; padding-bottom: 50px; box-sizing: border-box;">
                <div style="font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; ">QUẢN LÝ TOUR</div>
                <form action="CUpdateTour" method="post" enctype="multipart/form-data">
                    Mã Tour: <input style="width: 50px; margin-left: 22px;" type="text" name="MaTour" value="<% out.print(request.getAttribute("MaTour")); %>" /><br /><br />
                    Tên Tour: <input style="margin-left: 18px; width: 360px;" type="text" name="TenTour" value="<% out.print(request.getAttribute("TenTour")); %>" /><br /><br />
                    Ngày KH: <input style="margin-left: 15px; width: 360px;" type="text" name="NgayKH" value="<% out.print(request.getAttribute("NgayKH")); %>" /><br /><br />
                    Thời gian: <input style="margin-left: 15px; width: 360px;" type="text" name="ThoiGian" value="<% out.print(request.getAttribute("ThoiGian")); %>" /><br /><br />
                    Địa điểm: <input style="margin-left: 18px; width: 360px;" type="text" name="DiaDiem" value="<% out.print(request.getAttribute("DiaDiem")); %>" /><br /><br />
                    Giá: <input style=" margin-left: 54px;width: 120px;" type="text" name="Gia" value="<% out.print(request.getAttribute("Gia")); %>"  /><br /><br />
                    <div style="float: left; margin-top: 30px;">Mô tả:</div> <textarea style="margin-left: 44px;" name="MoTa" rows="5" cols="20"><% out.print(request.getAttribute("MoTa"));%></textarea><br /><br />
                    Hình ảnh:<input style="margin-left: 22px;" type="file" name="file" /><br /><br />
                    <input style="width: 50px;" type="submit" value="Sửa" />


                </form>
            </div>
            <%} else if (chucnang.equals("User")) {
            %>
            <div id="content" style="padding-left: 300px; padding-top: 20px; padding-bottom: 50px; box-sizing: border-box;">
                <div style="font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; ">QUẢN LÝ NGƯỜI DÙNG</div>
                <form action="CUser" method="get">
                    Mã User: <input style="width: 50px; margin-left: 35px;" type="text" name="mauser" value="<% out.print(request.getAttribute("mauser")); %>" /><br /><br />
                    Họ Tên: <input style="margin-left: 42px; width: 360px;" type="text" name="hoten" value="<% out.print(request.getAttribute("hoten")); %>" /><br /><br />
                    Username: <input style="margin-left: 25px; width: 360px;" type="text" name="username" value="<% out.print(request.getAttribute("username")); %>" /><br /><br />
                    Điện thoại: <input style="margin-left: 23px; width: 200px;" type="text" name="dienthoai" value="<% out.print(request.getAttribute("dienthoai")); %>" /><br /><br />
                    Email: <input style="margin-left: 52px; width: 200px;" type="text" name="email" value="<% out.print(request.getAttribute("email"));%>" /><br /><br />


                    <div style="float: left; margin-top: 36px;">Ảnh đại diện:</div>
                    <div style="width: 80px; height: 80px; border: 1px solid; float: left; margin-left: 10px; margin-top: 10px;"><img style="width: 80px; height: 80px;" src="<%= request.getAttribute("url")%>" /></div><br /><br />
                    <div style="clear: both;"></div>
                    <%
                        String gt = (String) request.getAttribute("gioitinh");
                        if (gt.equals("Nam")) {
                    %>
                    <div style="margin-top: 12px;">Giới tính: <input style="margin-left: 30px;" type="radio" name="gioitinh" value="Nam" checked />Nam<input style="margin-left: 20px;" type="radio" name="gioitinh" value="Nữ"  />Nữ</div><br /><br />
                        <%
                        } else {
                        %>
                    <div style="margin-top: 12px;">Giới tính: <input style="margin-left: 30px;" type="radio" name="gioitinh" value="Nam"  />Nam<input style="margin-left: 20px;" type="radio" name="gioitinh" value="Nữ" checked />Nữ</div><br /><br />
                        <%
                            }
                        %>
                    <input type="submit" name="action" value="Save" /><br /><br />





                </form>
            </div>
            <%} else if (chucnang.equals("donhang")) {%>
            <div id="content" style="padding-left: 300px; padding-top: 20px; padding-bottom: 50px; box-sizing: border-box;">
                <div style="font-weight: bold; font-size: 32px; margin-bottom: 20px; margin-left: 160px; ">QUẢN LÝ ĐƠN HÀNG</div>
                <form action="CThanhToan" method="post" >
                    Họ tên: <input style="margin-left: 46px; width: 200px;" type="text" name="hoten" value="<%= request.getAttribute("hoten") %>" /><br /><br />
                    Email: <input style="margin-left: 50px; width: 200px;" type="text" name="email" value="<%= request.getAttribute("email") %>" /><br /><br />
                    Đia chỉ: <input style="margin-left: 41px; width: 200px;" type="text" name="diachi" value="<%= request.getAttribute("diachi") %>" /><br /><br />
                    Điện thoại: <input style="margin-left: 21px; width: 200px;" type="text" name="dienthoai" value="<%= request.getAttribute("dienthoai") %>" /><br /><br />
                    Tổng tiền: <input style="margin-left: 26px; width: 200px;" type="text" name="gia" value="<%= request.getAttribute("gia") %>" /><br /><br />
                    <input type="hidden" name="id" value="<%= request.getAttribute("id") %>" />
                    <input style="cursor: pointer; height: 30px; line-height: 30px;" type="submit" value="Cập nhật" />
                    <input type="hidden" name="action" value="Update" />
                </form>
            </div>
            <%
                }
            %>
            <div style="background-color:rgba(43,42,50,1); width: 100%; height: 100px;">
                <div style="color: white; text-align: center; line-height: 100px; font-size: 22px;">© 2015 - Công ty Cổ Phần Du Lịch Quốc Tế Asian. Design bởi KIÊN_FPOLY</div>    
            </div>
        </div>
    </body>
</html>
