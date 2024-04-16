using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class GioHang : System.Web.UI.Page
    {
        List<UserProducts> gioHang;
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            gioHang = (List<UserProducts>)Application["gioHang"];

            if ((string)Session["user"] != null)
            {
                dangNhap.Style.Add("display", "none");
                userInfor.InnerHtml = "Xin chào : " + (string)Session["user"];
                dangXuat.Style.Add("display", "inline-block");

                if (gioHang.Count == 0)
                {
                    emtyCart.Style.Add("display", "block");
                    emtyCart1.Style.Add("display", "none");
                    emtyCart2.Style.Add("display", "none");
                    emtyCart3.Style.Add("display", "none");
                }

                user = (string)Session["user"];

                string html = "";
                html += "<table class='table-giohang'>"
                         + "<tr><th class='th1'>Sản phẩm</th>"
                         + "<th class='th2'>Đơn giá</th>"
                         + "<th class='th3'>Số lượng</th>"
                         + "<th class='th4'>Thành tiền</th>"
                         + "<th class='th5'></th></tr>";
                decimal sum = 0;
                double sl = 0; 
                for (int i = 0; i < gioHang.Count; i++)
                {
                    if (gioHang[i].UserName == user)
                    {
                        html += "<tr><td>"
                                    + "<div class='div-img-name'>"
                                    + "<div class='div-img-name-img'>"
                                    + "<img src = '" + gioHang[i].SanPham.Url + "' alt='Ảnh' style='max-width:60px;'/>"
                                    + "</div>"
                                    + "<div style = 'text-align:left;'>" + gioHang[i].SanPham.TenSP + "</div>"
                                    + "</div>"
                                    + "</td>"
                                    + "<td class='formatCost'>" + gioHang[i].SanPham.GiaSP + "</td>"
                                    + "<td>" + gioHang[i].Quatity + "</td>"
                                    + "<td class='formatCost'>" + gioHang[i].SanPham.GiaSP * gioHang[i].Quatity + "</td>"
                                    + "<td>"
                                    + "<a class='tdXoa' href ='XoaSanPham.aspx?id=" + gioHang[i].Id + "'>Xóa</a>"
                                  + "</td></tr>";
                        sum = sum + gioHang[i].SanPham.GiaSP * gioHang[i].Quatity;
                    }
                }
                html += "<tr> <td></td> <td></td>"
                         + "<td style = 'font-size:1.6rem; font-weight:bold'> Tổng tiền:</td>"
                         + "<td class='formatCost'>" + sum + "</td> </tr></table>";
                idProductAdd.InnerHtml = html;
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }
    }
}