﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            {
                dangNhap.Style.Add("display", "none");
                userInfor.InnerHtml = "Xin chào : " + (string)Session["user"];
                dangXuat.Style.Add("display", "inline-block");
            }

            

            List<SanPham> dsSanPham = (List<SanPham>)Application["listSanPham"];
            List<SanPham> tivi = new List<SanPham>();
            List<SanPham> tulanh = new List<SanPham>();
            List<SanPham> maygiat = new List<SanPham>();

            foreach (SanPham sp in dsSanPham)
            {
                if (sp.Type == 1)
                {
                    tivi.Add(sp);
                }

                if(sp.Type == 2)
                {
                    tulanh.Add(sp);
                }

                if (sp.Type == 3)
                {
                    maygiat.Add(sp);
                }
            }

            dsTivi.DataSource = tivi;
            dsTivi.DataBind();
            dsTuLanh.DataSource = tulanh;
            dsTuLanh.DataBind();
            dsMayGiat.DataSource = maygiat;
            dsMayGiat.DataBind();
        }
    }
}