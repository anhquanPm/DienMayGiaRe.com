<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="SieuThiDienMay.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="assects/css/giohang.css">
    <link rel="stylesheet" href="assects/css/grid.css">
    <link rel="stylesheet" href="assects/css/responsive.css">
    <link rel="stylesheet" href="assects/font/themify-icons/themify-icons.css">
    <style>
td {
     padding: 0;
 }
 .th1 {
     width: 50%;
 }
 .th2 {
     width: 15%;
 }
 .th3 {
     width: 10%;
 }
 .th4 {
     width: 15%;
 }
 .th5 {
     width: 10%;
 }
 .tdXoa {
     background-color: #ff5252;
     color: white;
     width: 50px;
     border-radius: 2px;
     border: none;
     padding: 5px 10px;
     text-decoration: none;
 }

 .formatCost {
     color: var(--primary-color);
 }
 .formatCost:after {content:'đ'}

 .tdXoa:hover {
     cursor: pointer;
     opacity: 0.7;
 }
    </style>
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
                            <i class="search-icon ti-shopping-cart"></i>
                        </div>

                        <div id="mobile-menu" class="mobile-menu-btn">
                            <i class="menu-icon ti-menu"></i>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="app__container">
            <div class="grid wide">

                 <!-- Empty cart: header__cart-list--empty -->
                <div class="empty-cart" id="emtyCart" runat="server">
                    <div style="text-align:center; padding-top: 50px;">
                        <img class="empty-cart-img" src="./assets/img/empty_cart.png" />
                    </div>
                    <div style="text-align:center; font-size:2rem; padding-top:30px; color:#ff5252;">Chưa có sản phẩm</div>
                </div>


                <div class="giohang-mota" id="emtyCart1" runat="server">
                    <span class="heading-cart-list">DANH SÁCH SẢN PHẨM ĐÃ CHỌN</span>
                </div>
                <div class="col l-12 m-12 c-12" id="emtyCart2" runat="server">
                    <div class="table-cart-list" id="idProductAdd" runat="server">
                        <table class="table-giohang">
                            <tr>
                               <th class="th1">Sản phẩm</th>
                               <th class="th2">Đơn giá</th>
                               <th class="th3">Số lượng</th>
                               <th class="th4">Thành tiền</th>
                               <th class="th5"></th>

                            </tr>
                            <tr>
                                <td>
                                    <div class="div-img-name">
                                        <div class="div-img-name-img">
                                            <img src="assects/img/maygiat1.jpg" style="max-width:100px;"/>
                                        </div>
                                        <div style="text-align:left;">Máy giặt</div>
                                    </div>
                                </td>
                                <td>2</td>
                                <td>3</td>
                                <td>4</td>
                                <td>
                                    <button class="tdXoa">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td style="font-size:1.6rem; font-weight:bold">Tổng tiền:</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="giohang-mota" id="emtyCart3" runat="server">
                    <input id="input-thanhtoan" class="input-thanhtoan" type="button" value="Thanh toán"/>
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
