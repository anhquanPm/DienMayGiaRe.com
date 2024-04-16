using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class ThemVaoGioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            {
                string idsp = Request.QueryString["id"];
                string user = (string)Session["user"];

                // Ghi nhớ trang trước đó
                string previousPage = Request.UrlReferrer != null ? Request.UrlReferrer.AbsoluteUri : "Index.aspx";

                // Kiểm tra nếu danh sách sản phẩm và giỏ hàng đã được khởi tạo
                if (Application["listSanPham"] != null && Application["giohang"] != null)
                {
                    List<SanPham> listProduct = (List<SanPham>)Application["listSanPham"];
                    List<UserProducts> giohang = (List<UserProducts>)Application["giohang"];

                    // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng chưa
                    bool productExistsInCart = giohang.Any(item => Convert.ToString(item.SanPham.Id) == idsp && item.UserName == user);
                    if (productExistsInCart)
                    {
                        // Nếu sản phẩm đã tồn tại trong giỏ hàng, tăng số lượng
                        foreach (UserProducts item in giohang)
                        {
                            if (Convert.ToString(item.SanPham.Id) == idsp && item.UserName == user)
                            {
                                item.Quatity += 1; // Tăng số lượng lên 1
                                break;
                            }
                        }
                    }
                    else
                    {
                        // Nếu sản phẩm chưa có trong giỏ hàng, thêm mới
                        foreach (SanPham i in listProduct)
                        {
                            if (Convert.ToString(i.Id) == idsp)
                            {
                                giohang.Add(new UserProducts(giohang.Count + DateTime.Now.ToString(), i, user, 1));
                                break;
                            }
                        }
                    }

                    Application["giohang"] = giohang;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sản phẩm đã được thêm vào giỏ hàng!'); window.location='" + previousPage + "';", true);
                }
                else
                {
                    Response.Redirect("Index.aspx");
                }

            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }


    }
}