using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SieuThiDienMay
{
    public partial class DangXuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LogoutUser();
            }
           
        }

        private void LogoutUser()
        {
            // Gỡ bỏ tên người dùng khỏi danh sách ActiveUsers khi đăng xuất
            string activeUsers = (string)Application["ActiveUsers"];
            string userName = (string)Session["user_name"];
            activeUsers = activeUsers.Replace(userName, "").Replace(",,", ",").Trim(',');
            Application["ActiveUsers"] = activeUsers;

            // Xóa Session và chuyển hướng về trang đăng nhập
            Session.Clear();
            Response.Redirect("DangNhap.aspx");
        }
    }
}