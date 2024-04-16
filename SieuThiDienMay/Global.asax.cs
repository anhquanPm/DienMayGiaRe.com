﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            List<User> listUser = new List<User>();
           
            listUser.Add(new User( "Trần Anh Quân" ,"quan", "quan"));
            listUser.Add(new User( "Trần Ánh Dương", "duong", "duong"));

            Application["listUser"] = listUser;

            List<SanPham> listSanPham = new List<SanPham>();
            // tivi type = 1
            listSanPham.Add(new SanPham(1, "Google Tivi TCL 4K 65 inch", 9900000, "assects/img/tivi1.jpg", 1));
            listSanPham.Add(new SanPham(2, "Smart Tivi Samsung 4K 65 inch", 12000000, "assects/img/tivi2.png", 1)); 
            listSanPham.Add(new SanPham(3, "Smart Tivi Toshiba 4K 55 inch ", 8700000, "assects/img/tivi3.jpg", 1));
            listSanPham.Add(new SanPham(4, "Smart Tivi LG 4K OLED 55 inch", 15000000, "assects/img/tivi4.jpg", 1));

            // tủ lạnh type = 2
            listSanPham.Add(new SanPham(5, "Casper Inverter 458 lít", 9490000, "assects/img/tulanh.jpg", 2));
            listSanPham.Add(new SanPham(6, "Sharp Inverter 401 lít", 14680000, "assects/img/tulanh2.jpg", 2));
            listSanPham.Add(new SanPham(7, "Samsung Inverter 488 lít", 16590000, "assects/img/tulanh3.jpg", 2));
            listSanPham.Add(new SanPham(8, "LG Inverter 470 lít", 15490000, "assects/img/tulanh4.jpg", 2));
           

            // máy giặt type = 3
            listSanPham.Add(new SanPham(9, "Toshiba 7 Kg AW (SG)", 3290000, "assects/img/maygiat1.jpg", 3));
            listSanPham.Add(new SanPham(10, "Beko Inverter 10 kg", 5490000, "assects/img/maygiat2.jpg", 3));
            listSanPham.Add(new SanPham(11, "Toshiba 8 kg AW-(MK)", 5900000, "assects/img/maygiat3.jpg", 3));
            listSanPham.Add(new SanPham(12, "Panasonic 8.2 kg", 6000000, "assects/img/maygiat4.jpg", 3));

            Application["listSanPham"] = listSanPham;

            List<UserProducts> gioHang = new List<UserProducts>();
            Application["giohang"] = gioHang;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}