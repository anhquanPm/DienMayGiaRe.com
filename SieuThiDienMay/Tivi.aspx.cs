using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SieuThiDienMay
{
    public partial class SanPham1 : System.Web.UI.Page
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
                List<SanPham> tivi = new List<SanPham>();

                foreach (SanPham sp in dsSanPham)
                {
                    if (sp.Type == 1)
                    {
                        tivi.Add(sp);
                    }
                }

                dsSP.DataSource = tivi;
                dsSP.DataBind();
            }
        }
    }
}