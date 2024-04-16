using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SieuThiDienMay
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thanh toán thành công. Cảm ơn bạn đã mua hàng tại siêu thị giá rẻ 🥰!'); window.location='" + "Index.aspx" + "';", true);
            List<UserProducts> gioHang;

            gioHang = (List<UserProducts>)Application["gioHang"];
            gioHang.Clear();
            Application["giohang"] = gioHang;
        }
    }
}