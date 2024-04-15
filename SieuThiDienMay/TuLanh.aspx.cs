using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SieuThiDienMay
{
    public partial class TuLanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            {
                dangNhap.Style.Add("display", "none");
                userInfor.InnerHtml = "Xin chào : " + (string)Session["user"];
                dangXuat.Style.Add("display", "inline-block");
            }

            if (!Page.IsPostBack)
            {
                List<SanPham> dsSanPham = (List<SanPham>)Application["listSanPham"];
                List<SanPham> tulanh = new List<SanPham>();

                foreach (SanPham sp in dsSanPham)
                {
                    if (sp.Type == 2)
                    {
                        tulanh.Add(sp);
                    }
                }

                dsSP.DataSource = tulanh;
                dsSP.DataBind();
            }
        }
    }
}