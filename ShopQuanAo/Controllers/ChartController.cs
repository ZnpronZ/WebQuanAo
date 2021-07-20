using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ShopQuanAo.Models;
namespace ShopQuanAo.Controllers
{
    public class ChartController : ApiController
    {
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        [HttpGet]
        public IEnumerable<DoanhThu> GetCTyLists()
        {
            IList<DoanhThu> list = new List<DoanhThu>();
            var query = (from prods in db.DoanhThus select prods).ToList();
            foreach (var item in query)
            {
                list.Add(new DoanhThu
                {
                    MaNgayThang = item.MaNgayThang,
                    DoanhThu1 = item.DoanhThu1,
                    TongSLBanDc = item.TongSLBanDc,
                    TenNhanVien = item.TenNhanVien,
                    SoDonBan = item.SoDonBan,
                    DoanhThuNV = item.DoanhThuNV,
                    TenSpBanChay = item.TenSpBanChay,
                    SLBan = item.SLBan
                });
            }
            return list;
        }
    }
}
