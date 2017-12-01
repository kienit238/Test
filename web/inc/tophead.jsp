<%-- 
    Document   : tophead
    Created on : Jun 6, 2017, 2:26:18 PM
    Author     : Computer
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.giohang"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <a id="dangnhap" href="CLogin?btnsubmit=Logout">Xin chào! <%= username%></a>
                    <%
                        }
                    %>
                    <a id="dangky"   href="dangky.jsp">Đăng ký</a>
                    <%
                        ArrayList<giohang> list=new giohang().getGt();
                        int sum=list.size();
                        int soluong=sum;
                    %>
                    <a id="giohang" href="giohang.jsp">Giỏ hàng(<span style="color: red;"><%= soluong %></span>)</a>

                </div>
            </div>  