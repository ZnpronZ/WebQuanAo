using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopQuanAo.Models;
namespace ShopQuanAo.Models
{
    public class Order
    {
        QuanLiQuanAoEntities db = null;
        public Order()
        {
            db = new QuanLiQuanAoEntities();
        }
        public long  Insert(HoaDon hoadon)
        {
            db.HoaDons.Add(hoadon);
            db.SaveChanges();
            return hoadon.MaHD;
        }
    }
}