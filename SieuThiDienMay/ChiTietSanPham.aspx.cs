using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        List<User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            {
                dangNhap.Style.Add("display", "none");
                userInfor.InnerHtml = "Xin chào : " + (string)Session["user"];
                dangXuat.Style.Add("display", "inline-block");
            }

            List<SanPham> dsSanPham = (List<SanPham>)Application["listSanPham"];
            List<SanPham> ctsp = new List<SanPham>();

            string idParam = Request.QueryString["id"];
            int id;
            if (!string.IsNullOrEmpty(idParam) && int.TryParse(idParam, out id))
            {
                foreach (SanPham item in dsSanPham)
                {
                    if (id == item.Id)
                    {
                        ctsp.Add(item);
                    }
                }

                chitietSP.DataSource = ctsp;
                chitietSP.DataBind();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

    }
}