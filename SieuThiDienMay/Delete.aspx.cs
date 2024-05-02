using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SieuThiDienMay
{
    public partial class Delete : System.Web.UI.Page
    {
    
        string user;
        List<User> nguoiDung;

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user_name"] != null)
            {
                // Check if the user is an admin
                if ((string)Session["user_role"] == "admin")
                {
                    List<SanPham> dsSanPham = (List<SanPham>)Application["listSanPham"];
                    string idParam = Request.QueryString["id"];
                    int id;

                    if (!string.IsNullOrEmpty(idParam) && int.TryParse(idParam, out id))
                    {
                        for (int i = dsSanPham.Count - 1; i >= 0; i--)
                        {
                            if (id == dsSanPham[i].Id)
                            {
                                dsSanPham.RemoveAt(i);
                                Response.Redirect("Index.aspx");
                                break;
                            }
                        }
                    }
                    else
                    {
                        Response.Redirect("Index.aspx");
                    }
                }
                else
                {
                    // If not an admin, redirect to home page or show an error message
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('bạn không phải admin!!!'); window.location.href = 'Index.aspx';", true);
                   
                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }
    }
}
