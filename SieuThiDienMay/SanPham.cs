using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SieuThiDienMay
{
    public class SanPham
    {
        private int id;
        private string tenSP;
        private float giaSP;
        private string url;
        private int type;

        public SanPham()
        {
           
        }

        public SanPham(int id, string tenSP, float giaSP, string url , int type)
        {
            this.Id = id;
            this.TenSP = tenSP;
            this.GiaSP = giaSP;
            this.Url = url;
            this.type = type;
        }

        public int Id { get => id; set => id = value; }
        public string TenSP { get => tenSP; set => tenSP = value; }
        public float GiaSP { get => giaSP; set => giaSP = value; }
        public string Url { get => url; set => url = value; }
        public int Type { get => type; set => type = value; }   
    }
}