using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Text.RegularExpressions;

namespace SieuThiDienMay
{
    public partial class DangKi : System.Web.UI.Page
    {
        List<User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<User>)Application["listUser"];
            if (IsPostBack)
            {
                string fullName = Request.Form.Get("fullname").Trim();
                int year = Convert.ToInt32(Request.Form.Get("year").Trim());
                string username = Request.Form.Get("username").Trim();
                string password = Request.Form.Get("password").Trim();
                string repassword = Request.Form.Get("repassword").Trim();


                bool check = true;
                if (fullName != "" && username != "" && password != "" && repassword != "")
                {
                    foreach (User user in listUser)
                    {
                        if (username == user.UserName)
                        {
                            errorLogin.InnerHtml = "Tên tài khoản đã tồn tại! Vui lòng nhập tài khoản khác khác.";
                            check = false;
                            break;
                        }
                    }

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
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Đăng kí tài khoản thành công!!!'); window.location.href = 'DangNhap.aspx';", true);
                            User newUser = new User(fullName, username, password, year);
                            listUser.Add(newUser);
                            Application["listUser"] = listUser;
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
