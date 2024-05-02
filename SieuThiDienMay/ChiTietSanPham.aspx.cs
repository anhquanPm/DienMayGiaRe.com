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

        protected void btnXoaSanPham_Click(object sender, EventArgs e)
        {
            // Lấy id của sản phẩm cần xóa từ tham số truyền vào
            string idParam = Request.QueryString["id"];
            int id;
            if (!string.IsNullOrEmpty(idParam) && int.TryParse(idParam, out id))
            {
                // Thực hiện xóa sản phẩm ở đây, ví dụ:
                // ProductService.XoaSanPham(id);
                // ProductService là một lớp chứa các phương thức xử lý liên quan đến sản phẩm

                // Sau khi xóa thành công, chuyển hướng về trang chính hoặc trang danh sách sản phẩm
                Response.Redirect("Index.aspx");
            }
            else
            {
                // Xử lý trường hợp id không hợp lệ
            }
        }
    }
}