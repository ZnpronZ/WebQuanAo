using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopQuanAo.Models;
namespace ShopQuanAo.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        public ActionResult CategoryAll()
        {
            var mymodel = new multidata();
            mymodel.blog = db.Blogs.ToList();
            mymodel.congty = db.CongTies.ToList();
            mymodel.gioitinh = db.GioiTinhs.ToList();
            mymodel.loaisp = db.LoaiSPs.ToList();
            mymodel.sanpham = db.SanPhams.ToList();
            return View(mymodel);
        }
        public ViewResult CategoryGioiTinh(string GioiTinh)
        {
            List<SanPham> lstSanPham = db.SanPhams.Where(x => x.GioiTinh == GioiTinh).OrderBy(x => x.MaSP).ToList();
            if (lstSanPham.Count == 0)
            {
                ViewBag.SanPham = "Không có sản phẩm nào thuộc loại này";
            }
            //ViewBag.lstSanPham = db.tDanhMucSP.ToList();
            return View(db.SanPhams.Where(n => n.GioiTinh == GioiTinh).OrderBy(n => n.MaSP).ToList());
        }
        public ViewResult CategoryLoai(string Loai)
        {
            List<SanPham> lstSanPham = db.SanPhams.Where(x => x.Loai == Loai).OrderBy(x => x.MaSP).ToList();
            if (lstSanPham.Count == 0)
            {
                ViewBag.SanPham = "Không có sản phẩm nào thuộc loại này";
            }
            //ViewBag.lstSanPham = db.tDanhMucSP.ToList();
            return View(db.SanPhams.Where(n => n.Loai == Loai).OrderBy(n => n.MaSP).ToList());
        }
        public ActionResult CategoryList()
        {
            var mymodel = new multidata();
            mymodel.blog = db.Blogs.ToList();
            mymodel.congty = db.CongTies.ToList();
            mymodel.gioitinh = db.GioiTinhs.ToList();
            mymodel.loaisp = db.LoaiSPs.ToList();
            mymodel.sanpham = db.SanPhams.ToList();
            return View(mymodel);
        }
        public ActionResult ChiTietSP(String MaSP)
        {
            SanPham sanpham = db.SanPhams.Single(n => n.MaSP == MaSP);
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sanpham);
        }
    }
}