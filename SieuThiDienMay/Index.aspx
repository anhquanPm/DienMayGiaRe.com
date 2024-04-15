<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SieuThiDienMay.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Điện máy giá rẻ</title>
    <link rel="stylesheet" href="assects/css/style.css" />
    <link rel="stylesheet" href="assects/css/grid.css" />
    <link rel="stylesheet" href="assects/css/responsive.css" />
    <link rel="stylesheet" href="assects/font/themify-icons/themify-icons.css" />
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

                                <li id="dangXuat" runat="server" style="display: none"><a href="DangXuat.aspx">Đăng xuất
                                 <i class="ti-shift-right"></i>
                                </a></li>
                            </ul>

                            <span id="userInfor" runat="server"></span>

                            <div class="form-search">
                                <input id="content-search" class="content-search" type="text" placeholder="Tìm kiếm ?" autocomplete="off">
                            </div>

                            <div class="search-btn">
                                <a href="GioHang.aspx"><i class="search-icon ti-shopping-cart"></i></a>
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
            </div>
            <!-- End Slider -->


            <div class="grid wide">
                <div class="row">


                    <%-- Sản phẩm tivi --%>
                    <div class="list-item" id="tivi">
                        <div class="row">

                            <div class="heading-sub">
                                Tivi siêu nét
                            </div>

                            <asp:ListView ID="dsTivi" runat="server">
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
                                                        <input type="button" class="btn-mua_ngay" value="Mua ngay">
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
                            <div class="col l-12 m-12 c-12">
                                <div class="all">
                                    <!-- Sử dụng thẻ a để tạo liên kết đến trang "SanPham.aspx" -->
                                    <a href="Tivi.aspx" id="btn-all">Xem tất cả
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>



                    <%-- Sản phẩm tủ lạnh--%>
                    <div class="list-item" id="tulanh">
                        <div class="row">
                            <div class="heading-sub">
                                Tủ lạnh khồng lồ
                            </div>

                            <asp:ListView ID="dsTuLanh" runat="server">
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
                                                        <input type="button" class="btn-mua_ngay" value="Mua ngay">
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
                            <div class="col l-12 m-12 c-12">
                                <div class="all">
                                    <!-- Sử dụng thẻ a để tạo liên kết đến trang "SanPham.aspx" -->
                                    <a href="TuLanh.aspx" id="btn-all">Xem tất cả
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%-- Sản phẩm máy giặt--%>
                    <div class="list-item" id="maygiat">
                        <div class="row">
                            <div class="heading-sub">
                                Máy giặt thế hệ mới
                            </div>

                            <asp:ListView ID="dsMayGiat" runat="server">
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
                                                        <input type="button" class="btn-mua_ngay" value="Mua ngay">
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
                            <div class="col l-12 m-12 c-12">
                                <div class="all">
                                    <!-- Sử dụng thẻ a để tạo liên kết đến trang "SanPham.aspx" -->
                                    <a href="MayGiat.aspx" id="btn-all">Xem tất cả
                                    </a>
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

            <div class="modal js-modal">
                <div class="modal-container js-modal-container">
                    <div class="modal-close js-modal-close">
                        <i class="ti-close"></i>
                    </div>
                    <header class="modal-header">
                        <i class="modal-heading-icon ti-briefcase"></i>
                        Tickets
                    </header>

                    <div class="modal-body">
                        <label for="ticket-quantity" class="modal-label">
                            <i class="ti-shopping-cart"></i>
                            Tickets, $15 per person
                        </label>
                        <input type="text" id="ticket-quantity" class="modal-input" placeholder="How many ?" />

                        <label for="ticket-email" class="modal-label">
                            <i class="ti-user"></i>
                            Send to
                        </label>
                        <input type="email" id="ticket-email" class="modal-input" placeholder="Enter email..." />

                        <button id="buy-tickets">
                            PAY
                    <i class="ti-check"></i>
                        </button>
                    </div>

                    <footer class="modal-footer">
                        <p class="modal-help">Need <a href="#">help?</a></p>
                    </footer>
                </div>
            </div>
        </div>
    </form>
</body>

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

<script>
    const buyBtns = document.querySelectorAll('.js-buy-ticket');
    const modal = document.querySelector('.js-modal');
    const modalContainer = document.querySelector('.js-modal-container');
    const modalClose = document.querySelector('.js-modal-close');

    // hàm hiển thị modal mua vé (thên class open vào modal)
    function showBuyTickets() {
        modal.classList.add('open')
    }

    // ẩn modal mua vé (xóa bỏ class open ra khỏi modal)
    function hideBuyTickets() {
        modal.classList.remove('open')
    }

    // lặp qua từng thẻ button và nghe hành vi click vào nút buy
    for (const buyBtn of buyBtns) {
        buyBtn.addEventListener('click', showBuyTickets);
    }

    // nghe hành vi click vào nút close
    modalClose.addEventListener('click', hideBuyTickets)

    // nghe hành vi click vào khoảng không để đóng modal
    modal.addEventListener('click', hideBuyTickets);

    modalContainer.addEventListener('click', function (event) {
        event.stopPropagation();
    })

</script>
</html>
