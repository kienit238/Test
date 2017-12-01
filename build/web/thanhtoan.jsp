<%-- 
    Document   : thanhtoan
    Created on : Jun 30, 2017, 8:18:54 PM
    Author     : Computer
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.giohang"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh Toán</title>
        <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
    </head>
    <body>
        <div style="width: 1200px;min-height: 600px; margin:0 auto;">
            <div style="color: #2a9dcc; margin-top: 30px; margin-bottom: 20px; font-size: 28px; font-weight: bold;">Công Ty Cổ Phần Du Lịch Quốc Tế Asian</div>
            <form action="CThanhToan" method="post">
                <%
                    ArrayList<giohang> ds = new giohang().getGt();
                    int sum = 0;
                    int phivc = 0;


                %>
                <div style="width: 400px; min-height: 300px; float: left;">
                    <p style="font-size: 18px; font-weight: bold;">Thông tin mua hàng</p>
                    <p><a style="color: #2a9fcc; text-decoration: none;" href="dangky.jsp">Đăng ký tài khoản mua hàng</a><span style="color: black; margin-left: 6px; margin-right: 6px;">/</span><a style="color: #2a9fcc; text-decoration: none;" href="dangnhap.jsp">Đăng nhập</a></p>
                    <hr style="color: #eeeeee; margin-bottom: 20px; opacity: 0.4" />
                    <input style="width: 400px; height: 24px; border-radius: 6px; margin-bottom:0px;" type="text" name="email" value="" placeholder="Email" required="" />
                    <p style="color: #2a9fcc;">Thông tin thanh toán và nhận hàng</p>
                    <input style="width: 400px; height: 24px; border-radius: 6px; margin-bottom:0px;" type="text" name="hoten" value="" placeholder="Họ và Tên" required="" /><br /><br />
                    <input style="width: 400px; height: 24px; border-radius: 6px; margin-bottom:0px;" type="text" name="dienthoai" value="" placeholder="Số điện thoại"  /><br /><br />
                    <input style="width: 400px; height: 24px; border-radius: 6px; margin-bottom:0px;" type="text" name="diachi" value="" placeholder="Địa chỉ" required="" /><br /><br/>
                    <textarea style="border-radius: 6px;" placeholder="Ghi chú" cols="54" rows="6"></textarea>
                </div>

                <div style="width: 400px; min-height: 300px; float: left; padding: 0px 30px 0px 30px; box-sizing: border-box;">
                    <p style="font-size: 18px; font-weight: bold;">Vận chuyển</p>
                    <p style="margin-left: 30px;">Giao hàng tận nơi: 40.000 VNĐ</p>
                    <p style="font-size: 18px; font-weight: bold;">Thanh toán</p>
                    <p style="color: #ff5555; margin-left: 30px; font-weight: bold;">Thanh toán khi giao hàng (COD)</p>
                </div>

                <div style="width: 360px; min-height: 200px; float: left;">
                    <div style=" padding: 0px 14px 0px 14px; box-sizing: border-box; margin-left: 38px; width: 360px; min-height: 286px; float: left; border: 1px solid #dadada; background-color: #fafafa;">
                        <div style="height: 39px; margin-left: 14px; line-height: 39px; font-weight: bold;">ĐƠN HÀNG ()</div>
                        <hr style="color: #dadada; opacity: 0.4" />
                        <div style="height: 80px; line-height: 80px; ">
                            <%  String temp = "";
                                String tamtinh = "";
                                int t = 0;
                                int tongtien = 0;
                                for (int i = 0; i < ds.size(); i++) {

                                    String[] s = ds.get(i).getGia().split("\\.");
                                    String ch = "";
                                    for (int j = 0; j < s.length; j++) {
                                        ch = ch + s[j];
                                    }
                                    int gia = Integer.parseInt(ch);
                                    phivc = 40000;
                                    t = t + gia;
                                    tongtien = t + phivc;
                                    temp = String.valueOf(tongtien);
                                    tamtinh = String.valueOf(t);

                            %>
                            <div style="margin-right: 20px; float: left; width: 70px; height: 70px;"><img style="width: 70px; height: 70px;"  src="<%= ds.get(i).getUrl()%>" /></div>

                            <div style="width: 120px; height: 70px; float: left; overflow: auto; "><%= ds.get(i).getTentour()%></div>

                            <div style="float: right; height: 70px;"><%= ds.get(i).getGia()%> VNĐ</div>




                            <%
                                }
                            %>
                        </div>
                        <div style="clear: both;"></div>
                        <hr style="color: #dadada; opacity: 0.4" />
                        <div style="float: left">Tạm tính </div>
                        <div style="float: right;"><%= tamtinh %>VNĐ</div>
                        <div style="clear: both;"></div><br />
                        <div style="float: left;">Phí vận chuyển</div>
                        <div style="float: right;">40.000 VNĐ</div>
                        <div style="clear: both;"></div>
                        <hr style="color: #dadada; opacity: 0.4" />
                        <div style="float: left; margin-top: 10px;">Tổng tiền</div>
                        <div style="float: right; color:#369ad7; margin-top: 10px; font-weight: bold;"><%= temp%> VNĐ</div>
                        <div style="clear: both;"></div>
                    </div>
                    <div style="clear: both;"></div>
                    <input type="hidden" name="gia" value="<%= temp %>" />
                    <input type="submit" name="action" value="Thanh Toán" style=" margin-left: 38px; margin-top: 8px; display: block; width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #337ab7; border-radius: 6px; text-decoration: none; color: #fffff8; cursor: pointer; font-weight: bold;" />
                </div>  
            </form>
        </div>
    </body>
</html>
