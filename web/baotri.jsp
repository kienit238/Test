<%-- 
    Document   : baotri
    Created on : Jun 2, 2017, 9:35:14 PM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bảo trì</title>
        <link rel="stylesheet" type="text/css" href="CSS/trangchu.css"/>
        <style>
            #content{
                width:400px;
                height:160px;
                border:1px solid #06F;
                border-radius:5px;
                margin: 0 auto;
                text-align:center;
            }
            #content #thongbao{
                width: 380px;
                height:50px;
                position:relative;
                margin: 0 auto;
                margin-top:20px;
                font-size:20px;
                color:#F30;
                text-transform:uppercase;
                margin-bottom:30px;

            }
            #content #lammo{
                width:400px;
                height:160px;
                position:absolute;
                border-radius:5px;
                top:9px;

            }
            #content #lammo:hover{
                background-color:rgba(153,153,153,0.2);
            }		
            #content  a{
                width: 100px;
                height:40px;
                background:#06C;
                color:#FFF;
                text-decoration:none;
                display:block;
                margin-left: 150px;;

                line-height:40px;
                float:left;

            }
            #content a:hover{
                background-color:#FF9;
                color:#000;
            }	
        </style>
    </head>
    <body>
        <div id="content">
            <div id="lammo">	
                <div id="thongbao">website đang trong giai đoạn phát triển, vui lòng quay lại sau

                </div>
                <a href="index.jsp">Trang chủ</a> 

            </div>
        </div>
    </body>
</html>
