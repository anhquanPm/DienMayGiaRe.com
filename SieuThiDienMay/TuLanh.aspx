<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TuLanh.aspx.cs" Inherits="SieuThiDienMay.TuLanh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Điện máy giá rẻ - Tủ lạnh</title>
    <link rel="stylesheet" href="   assects/css/sanpham.css"/>
    <link rel="stylesheet" href="   assects/css/grid.css"/>
    <link rel="stylesheet" href="   assects/css/responsive.css"/>
    <link rel="stylesheet" href="   assects/font/themify-icons/themify-icons.css"/>
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
                            <li style="background-color:#fff"><a href="TuLanh.aspx" style="color:#000">Tủ lạnh</a></li>
                            <li><a href="MayGiat.aspx">Máy giặt</a></li>   
                            <li id="dangNhap" runat="server"><a href="DangNhap.aspx">Tài khoản
                                <i class="ti-user"></i>
                             </a>
                             </li>  
                             <li id="dangXuat" runat="server" style="display: none"><a href="DangXuat.aspx">Đăng xuất
                              <i class="ti-shift-right"></i>
                             </a></li>
                        </ul>
                         <span id="userInfor" runat="server"></span>
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

        <div id="content">
            <!-- Begin Slider -->
            <div class="grid wide">
                <div class="row">
                    <div class="col l-12 m-12 c-12">
                        <div class="slider">
                            <img src="assects/img/siler.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Slider -->

            <div class="grid wide">
                <div class="row">
                     <div class="list-item" id="tivi">
                            <div class="row">

                                <div class="heading-sub">
                                    Danh sách sản phẩm tủ lạnh
                                </div>

                                <asp:ListView ID="dsSP" runat="server">
                                    <ItemTemplate>
                                        <div class="col l-3 m-6 c-12">
                                            <div class="item">
                                                <a href="ChiTietSanPham.aspx?id=<%# Eval("id") %>" style="text-decoration: none; color: #000">
                                                <div class="image-item">
                                                    <img src='<%# Eval("url") %>' alt="">
                                                </div>
                                                <div class="body-item">
                                                    <h3 class="name-item"><%# Eval("tenSP") %></h3>
                                                    <h3 class="price-item"><%# Eval("giaSP","{0:0,00}") %> VNĐ</h3>
                                                       <div class="btn-mua_ngay-area">
                                                        <a href="MuaNgay.aspx?id=<%#Eval("id") %>">
                                                            <input type="button" class="btn-mua_ngay" value="Mua ngay">
                                                        </a>
                                                    </div>
                                                    <div class="btn-cart-area">
                                                        <button class="btn-cart">
                                                            Thêm vào giỏ hàng
                                                             <i class="ti-shopping-cart"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                </a>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:ListView>
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