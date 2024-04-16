using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SieuThiDienMay
{
    public class UserProducts
    {
        private string id;
        private SanPham sanPham;
        private string userName;
        private int quatity;

        public UserProducts(string id, SanPham sanPham, string userName, int quatity)
        {
            this.Id = id;
            this.SanPham = sanPham;
            this.UserName = userName;
            this.quatity = quatity;
        }

        public UserProducts(string id, SanPham sanPham, string userName)
        {
            this.Id = id;
            this.SanPham = sanPham;
            this.UserName = userName;
        }

        public string Id { get => id; set => id = value; }
        public SanPham SanPham { get => sanPham; set => sanPham = value; }
        public string UserName { get => userName; set => userName = value; }
        public int Quatity { get => quatity; set => quatity = value; }
    }
}