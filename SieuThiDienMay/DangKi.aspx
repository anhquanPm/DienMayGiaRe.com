﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="SieuThiDienMay.DangKi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Đăng kí tài khoản</title>
    <link rel="stylesheet" href="assects/css/dangki.css" />
    <link rel="stylesheet" href="assects/css/grid.css" />
    <link rel="stylesheet" href="assects/css/responsive.css" />
    <link rel="stylesheet" href="assects/font/themify-icons/themify-icons.css" />
</head>
<body>
    <div id="main">
        <div id="header">

            <div class="grid wide">
                <div class="row">
                    <div class="col l-12 m-12 c-12">
                        <ul id="nav">
                            <li><a href="Index.aspx">
                                <i class="ti-home"></i>
                                Trang chủ
                            </a></li>
                        </ul>
                        <div class="search-btn">
                             <a href="GioHang.aspx"> <i class="search-icon ti-shopping-cart"></i></a>
                        </div>

                        <div id="mobile-menu" class="mobile-menu-btn">
                            <i class="menu-icon ti-menu"></i>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="grid wide">
                <div class="row">
                    <div class="col l-12 m-12 c-12">
                        <form class="form-register" id="form1" runat="server" action="DangKi.aspx" method="post">
                            <h3>Đăng ký</h3>
                            <span class="message-login" style="color: red;" runat="server" id="errorLogin"></span>
                            <div class="col l-12 m-12 c-12"> 
                                <input type="text" name="fullname" required id="fullname" placeholder="Họ và tên" class="full-name" autocomplete="off">
                            </div>
                             <div class="col l-12 m-12 c-12">
                             <input type="text" name="username" required id="username" placeholder="Tài khoản" class="user-name" autocomplete="off">
                         </div>
                                <div class="col l-12 m-12 c-12">
                                <input type="number" name="year" required id="year" placeholder="Năm sinh" class="user-name" autocomplete="off">
                            </div>
                            <div class="col l-12 m-12 c-12">
                                <input type="password" name="password" required id="password" placeholder="Mật khẩu" class="password" autocomplete="off">
                            </div>
                            <div class="col l-12 m-12 c-12">
                                <input type="password" name="repassword" required id="repassword" placeholder="Nhập lại mật khẩu" class="confirm-password" autocomplete="off">
                            </div>
                            <div class="col l-12 m-12 c-12">
                               <button class="btn-register" runat="server">Đăng ký</button>
                            </div>
                            <div class="col l-12 m-12 c-12">
                                <p style="text-align: center; margin-top: 10px; color: #666;">Đã có tài khoản? <a href="DangNhap.aspx">Đăng nhập ngay</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div id="footer">
            <div class="grid wide">
                <div class="row  footer-content">
                    <div class="col l-3 m-3 c-6">
                       <div class="f-menu">
                        <h4>Dịch vụ</h4>
                           <ul>
                            <li><a href="#">Dịch vụ vệ sinh</a></li>
                            <li><a href="#">Dịch vụ sửa chữa</a></li>
                            <li><a href="#">Dịch vụ giao hàng</a></li>
                           </ul>
                       </div>
                    </div>

                     <div class="col l-3 m-3 c-6">
                        <div class="f-menu">
                            <ul>
                                <h4>Về điện máy giá rẻ</h4>
                             <li><a href="#">Giới thiệu về chúng tôi</a></li>
                             <li><a href="#">Tuyển dụng</a></li>
                             <li><a href="#">Góp ý</a></li>
                            </ul>
                        </div>
                     </div>

                     <div class="col l-3 m-3 c-6">
                        <div class="f-menu">
                            <ul>
                                <h4>Liên hệ</h4>
                             <li><a href="#">Gọi mua: 0123456789</a></li>
                             <li><a href="#">Khiếu nại: 0987654321</a></li>
                             <li><a href="#">Bảo hành: 0912873465</a></li>
                            </ul>
                        </div>
                     </div>

                     <div class="col l-3 m-3 c-6">
                        <div class="f-menu">
                            <ul>
                                <h4>Mạng xã hội</h4>
                             <li><a href="#">
                                <i class="ti-facebook"></i>
                                Fanpage: Điện máy giá rẻ
                                
                            </a></li>
                             <li><a href="#">
                                <i class="ti-youtube"></i>
                                Youtube: DienMayGiaRe
                            </a></li>
                             <li><a href="#">
                                <i class="ti-twitter-alt"></i>
                                Tiwtter: Điện máy giá rẻ
                            </a></li>
                            </ul>
                        </div>
                     </div>

                     <div class="col l-12 m-12 c-12">
                        <div class="powered">
                            <h4>Made with ❤️ Powered by QuanDEV</h4>
                        </div>
                     </div>
                </div>
            </div>
        </div>
        </div>
        <script>
        var header = document.getElementById('header')
        var mobileMenu = document.getElementById('mobile-menu')

        var headerHight = header.clientHeight

        mobileMenu.onclick = function () {
            var isClose = header.clientHeight === headerHight

            if (isClose) {
                header.style.height = 'auto'

            } else {
                header.style.height = '46px'
            }
        }

        // tự động đóng khi chọn menu
        var menuItems = document.querySelectorAll('#nav li a[href*="#"]')

        for (var i = 0; i < menuItems.length; i++) {
            var menuItem = menuItems[i]

            menuItem.onclick = function () {
                header.style.height = '46px'
            }
        }

        </script>
</body>
</html>
