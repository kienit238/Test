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
            input{
                width: 360px;
                
            }
        </style>
    </head>
    <body>
        <div id="page">
        <%@include file="inc/topQT.jsp" %>
        <div id="content" style="padding-left: 300px; padding-top: 20px; padding-bottom: 50px; box-sizing: border-box;">
            <div style="font-weight: bold; font-size: 32px; margin-bottom: 20px; ">QUẢN LÝ TOUR</div>
            <form action="CInsertTour" method="post" enctype="multipart/form-data">
                Mã Tour: <input style="width: 50px; margin-left: 22px;" type="text" name="MaTour" value="" /><br /><br />
                Tên Tour: <input style="margin-left: 18px;" type="text" name="TenTour" value="" /><br /><br />
                Ngày KH: <input style="margin-left: 15px;" type="text" name="NgayKH" value="" /><br /><br />
                Thời gian: <input style="margin-left: 15px;" type="text" name="ThoiGian" value="" /><br /><br />
                Địa điểm: <input style="margin-left: 18px;" type="text" name="DiaDiem" value="" /><br /><br />
                Giá: <input style=" margin-left: 54px;width: 120px;" type="text" name="Gia" value="" /><br /><br />
                <div style="float: left; margin-top: 30px;">Mô tả:</div> <textarea style="margin-left: 44px;" name="MoTa" rows="5" cols="20"></textarea><br /><br />
                Hình ảnh:<input style="margin-left: 22px;" type="file" name="file" /><br /><br />
                <input style="width: 50px;" type="submit" name="action" value="Thêm" />
                
                
            </form>
        </div>
        <%@include file="inc/footer.jsp" %>
        </div>
    </body>
</html>
