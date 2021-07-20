using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopQuanAo.Models;
namespace ShopQuanAo.Models
{
    public class multidata
    {
        public IEnumerable<Blog> blog { get; set; }
        public IEnumerable<CongTy> congty { get; set; }
        public IEnumerable<GioiTinh> gioitinh { get; set; }
        public IEnumerable<LoaiSP> loaisp { get; set; }
        public IEnumerable<SanPham> sanpham { get; set; }
    }
}