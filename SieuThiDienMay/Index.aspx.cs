using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SieuThiDienMay
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            {
                dangNhap.Style.Add("display", "none");
                userInfor.InnerHtml = "Xin chào : " + (string)Session["user"];
                dangXuat.Style.Add("display", "inline-block");
            }

            

            List<SanPham> dsSanPham = (List<SanPham>)Application["listSanPham"];
            List<SanPham> tivi = new List<SanPham>();
            List<SanPham> tulanh = new List<SanPham>();
            List<SanPham> maygiat = new List<SanPham>();

            foreach (SanPham sp in dsSanPham)
            {
                if (sp.Type == 1)
                {
                    tivi.Add(sp);
                }

                if(sp.Type == 2)
                {
                    tulanh.Add(sp);
                }

                if (sp.Type == 3)
                {
                    maygiat.Add(sp);
                }
            }

            dsTivi.DataSource = tivi;
            dsTivi.DataBind();
            dsTuLanh.DataSource = tulanh;
            dsTuLanh.DataBind();
            dsMayGiat.DataSource = maygiat;
            dsMayGiat.DataBind();

        }

        protected void content_search_TextChanged(object sender, EventArgs e)
        {
            string keyword = content_search.Text.ToLower(); // Lấy từ khóa tìm kiếm và chuyển đổi thành chữ thường để tìm kiếm không phân biệt chữ hoa chữ thường

            // Lọc danh sách sản phẩm dựa trên từ khóa tìm kiếm
            List<SanPham> dsSanPham = (List<SanPham>)Application["listSanPham"];
            List<SanPham> ketQuaTimKiem = dsSanPham.Where(sp => sp.TenSP.ToLower().Contains(keyword)).ToList();

            // Cập nhật dữ liệu được hiển thị trên trang
            dsTivi.DataSource = ketQuaTimKiem.Where(sp => sp.Type == 1).ToList();
            dsTivi.DataBind();
            btn_all_1.Visible = false;
            btn_all_2.Visible = false; 
            btn_all_3.Visible = false;
            dsTuLanh.DataSource = ketQuaTimKiem.Where(sp => sp.Type == 2).ToList();
            dsTuLanh.DataBind();
            dsMayGiat.DataSource = ketQuaTimKiem.Where(sp => sp.Type == 3).ToList();
            dsMayGiat.DataBind();
            
        }

    }
}