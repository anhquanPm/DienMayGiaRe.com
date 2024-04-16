using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SieuThiDienMay
{
    public partial class ThongTinTaiKhoan : System.Web.UI.Page
    {
        List<User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<User>)Application["listUser"];
            if (!IsPostBack) // Kiểm tra nếu không phải là postback để tránh gán lại dữ liệu khi postback
            {
                string user = (string)Session["user"];
                if (Session["user"] != null)
                {
                    foreach(User u in listUser)
                    {
                        if (u.Name == user)
                        {
                            fullname.Value = u.Name;
                            username.Value = u.UserName;
                            password.Value = u.PassWord;
                            repassword.Value = u.PassWord;
                        }
                    }
                }
                else
                {
                    Response.Redirect("DangNhap.aspx");
                }

                
                
            }
        }


        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            listUser = (List<User>)Application["listUser"];
            if (IsPostBack)
            {
                string user = (string)Session["user"];
                string fullName = Request.Form.Get("fullname").Trim();
                string username = "";
                foreach(User u in listUser)
                {
                    if(u.Name == user)
                    {
                        username = u.UserName;
                    }
                }
                string password = Request.Form.Get("password").Trim();
                string repassword = Request.Form.Get("repassword").Trim();

                bool check = true;
                if (fullName != "" && username != "" && password != "" && repassword != "")
                {

                    if (password != repassword)
                    {
                        errorLogin.InnerHtml = "Mật khẩu không trùng khớp";
                    }
                    else if (password.Length < 8 || !Regex.IsMatch(password, @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"))
                    {
                        errorLogin.InnerHtml = "Mật khẩu cần ít nhất 8 kí tự, bao gồm ít nhất 1 chữ hoa, 1 số và 1 kí tự đặc biệt.";
                    }
                    else
                    {
                        if (check)
                        {
                            foreach(User u in listUser)
                            {
                               if(u.UserName == username)
                                {
                                    u.Name = fullName;
                                    u.PassWord = password;
                                    Session["user"] = u.Name;
                                    Session["user_name"] = u.UserName;
                                    break;
                                }
                            }
                            Application["listUser"] = listUser;
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Cập nhật thông tin tài khoản thành công!!!'); window.location.href = 'Index.aspx';", true);
                        }
                    }
                }
                else
                {
                    errorLogin.InnerHtml = "Vui lòng nhập đủ thông tin";
                }
            }
        }
    }
}