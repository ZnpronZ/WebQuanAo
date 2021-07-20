using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopQuanAo.Models;
namespace ShopQuanAo.Models
{
    public class orderdetail
    {
        QuanLiQuanAoEntities db = null;
        public orderdetail()
        {
            db = new QuanLiQuanAoEntities();
        }
        public bool Insert(ChiTietHoaDon chitiet)
        {
            try
            {
                db.ChiTietHoaDons.Add(chitiet);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}