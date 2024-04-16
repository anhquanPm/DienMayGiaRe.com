using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class XoaGioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<UserProducts> gioHang;
            gioHang = (List<UserProducts>)Application["gioHang"];
            string id = Request.QueryString["id"];
            foreach (UserProducts i in gioHang.ToList())
            {
                if (i.Id == id)
                {
                    gioHang.Remove(i);
                }
            }
            Application["giohang"] = gioHang;
            Response.Redirect("GioHang.aspx");
        }
    }
}