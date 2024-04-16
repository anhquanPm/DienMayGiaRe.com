using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class MuaHang : System.Web.UI.Page
    {
        List<UserProducts> giohang;
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            giohang = (List<UserProducts>)Application["giohang"];
            user = (string)Session["user"];

            foreach (UserProducts i in giohang.ToList())
            {
                if (i.UserName == user)
                {
                    giohang.Remove(i);
                }
            }
            Application["giohang"] = giohang;
        }
    }
}