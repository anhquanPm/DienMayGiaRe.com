﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="SieuThiDienMay.ChiTietSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="assects/css/chitietsanpham.css">
    <link rel="stylesheet" href="assects/css/grid.css">
    <link rel="stylesheet" href="assects/css/responsive.css">
    <link rel="stylesheet" href="assects/font/themify-icons/themify-icons.css">
</head>
<body>
    <form id="form1" runat="server">
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
                            <li><a href="Tivi.aspx">Tivi</a></li>
                            <li><a href="TuLanh.aspx">Tủ lạnh</a></li>
                            <li><a href="MayGiat.aspx">Máy giặt</a></li>   
                            <li id="dangNhap" runat="server"><a href="DangNhap.aspx">Tài khoản
                                <i class="ti-user"></i>
                             </a>
                             </li>                       
                        </ul>
                        <div class="form-search">
                            <input id="content-search" class="content-search" type="text" placeholder="Tìm kiếm ?"
                                autocomplete="off">
                        </div>

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

        <div id="main-content">
            <div class="grid wide">
                <div class="content">
                    <div class="row">
                        <div class="col l-5 m-12 c-12">
                            <div class="content-img">
                                <img src="assects/img/maygiat.jpg" alt="">
                            </div>
                        </div>
     
                        <div class="col l-7 m-12 c-12">
                            <div class="content-info">
                                <div class="head-content">
                                    <h3>Thông tin sản phẩm</h3>
                                </div>

                                <div class="body-content">
                                    <div class="row">
                                        <div class="col l-4 m-6 c-6">
                                            <ul class="info-ques"> 
                                                <li>Ten san pham : </li>
                                                <li>Xuat Xu : </li>
                                                <li>Van chuyen : </li>
                                                <li>Gia ban : </li>
                                            </ul>
                                        </div>

                                        <div class="col l-8 m-6 c-6">
                                            <ul class="info-des">
                                                <li>May giat</li>
                                                <li>Viet Nam</li>
                                                <li>Mien phi van chuyen</li>
                                                <li>120000 VND</li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>

                                <div class="footer-content">
                                    <div class="row">
                                        <div class="col l-6 m-6 c-12">
                                            <div class="btn-mua_ngay-area">
                                                <input type="button" class="btn-mua_ngay" value="Mua ngay">
                                            </div>
                                        </div>

                                        <div class="col l-6 m-6 c-12">
                                            <div class="btn-cart-area">
                                                <button class="btn-cart">
                                                    Thêm vào giỏ hàng
                                                    <i class="ti-shopping-cart"></i>
                                                </button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
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
    </form>
</body>
</html>