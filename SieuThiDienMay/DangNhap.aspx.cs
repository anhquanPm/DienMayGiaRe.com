using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class DangNhap : System.Web.UI.Page
    {
        List<User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userName = Request.Form.Get("user-name");
                string passWord = Request.Form.Get("password");

                int dem = 0;
                int fail = 0;
                if (userName != "" && passWord != "")
                {
                    listUser = (List<User>)Application["listUser"];

                    foreach (User u in listUser)
                    {
                        if (userName == u.UserName)
                        {
                            dem = 1;
                            if (passWord == u.PassWord)
                            {
                                Session["user"] = u.Name;
                                Session["user_name"] = u.UserName;
                                Session["user_role"] = u.Check;

                                string activeUsers = (string)Application["ActiveUsers"];
                                activeUsers += (activeUsers == "") ? u.UserName : ("," + u.UserName);
                                Application["ActiveUsers"] = activeUsers;

                                if ((string)Application["lastURL"]!= "")
                                {
                                    Response.Redirect((string)Application["lastURL"]);
                                }
                                Response.Redirect("Index.aspx");
                                
                                break;
                            }
                            else
                            {
                                //Response.Write("<script>alert('Sai mật khẩu')</script>");
                                errorLogin.InnerHtml = "Sai mật khẩu";
                                fail++;
                                break;
                            }
                        }
                    }
                    if (dem == 0)
                    {
                        //Response.Write("<script>alert('Khong ton tai tai khoan')</script>");
                        errorLogin.InnerHtml = "Không tồn tại tài khoản trong hệ thống";
                    }
                }
            }

        }
    }
}