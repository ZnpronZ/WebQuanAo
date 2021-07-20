using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopQuanAo.Models;
namespace ShopQuanAo.Data
{
    [Serializable]
    public class CartItem
    {
        
        public SanPham sanpham { get; set; }

        public int SoLuong { get; set; }


    }
}