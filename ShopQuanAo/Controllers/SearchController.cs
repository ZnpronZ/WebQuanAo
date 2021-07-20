using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopQuanAo.Models;
namespace ShopQuanAo.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        // GET: Sreach  
        [HttpPost]
        public ActionResult KetQuaTimKiem(FormCollection f)
        {
            String searchkey = f["txtTimKiem"].ToString();
            ViewBag.keyword = searchkey;
            List<SanPham> lstKQTK = db.SanPhams.Where(n => n.Loai.Contains(searchkey)).ToList();
            if (lstKQTK.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm này";
                return View(db.SanPhams.OrderBy(n => n.Loai));
            }
            ViewBag.ThongBao = "Đã tìm thấy" + lstKQTK.Count + "sản phẩm";
            return View(lstKQTK.OrderBy(n => n.Loai));
        }
        [HttpGet]
        public ActionResult KetQuaTimKiem( String searchkey)
        {
            ViewBag.keyword = searchkey;
            List<SanPham> lstKQTK = db.SanPhams.Where(n => n.Loai.Contains(searchkey)).ToList();
            if (lstKQTK.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm này";
                return View(db.SanPhams.OrderBy(n => n.Loai));
            }
            ViewBag.ThongBao = "Đã tìm thấy" + lstKQTK.Count + "sản phẩm";
            return View(lstKQTK.OrderBy(n => n.Loai));
        }
    }
}