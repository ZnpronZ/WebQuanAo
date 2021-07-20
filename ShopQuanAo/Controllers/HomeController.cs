using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopQuanAo.Models;
using common;
using System.Configuration;
namespace ShopQuanAo.Controllers
{
    public class HomeController : Controller
    {
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        public ActionResult Index()
        {
            var mymodel = new multidata();
            mymodel.blog = db.Blogs.ToList();
            mymodel.congty = db.CongTies.ToList();
            mymodel.gioitinh = db.GioiTinhs.ToList();
            mymodel.loaisp = db.LoaiSPs.ToList();
            mymodel.sanpham = db.SanPhams.ToList();
            return View(mymodel);
        }
        public PartialViewResult ChuDePartial()
        {
            return PartialView(db.SanPhams.ToList());
        }
        public PartialViewResult MenuPartial()
        {
            var mymodel = new multidata();
            mymodel.gioitinh = db.GioiTinhs.ToList();
            mymodel.loaisp = db.LoaiSPs.ToList();
            return PartialView(mymodel);
        }
        public ActionResult About()
        {

            return View();
        }

        public ActionResult Contact()
        {

            return View();
        }
        public ActionResult FAQ()
        {
            return View();
        }
        public ActionResult Blog()
        {
            return View(db.Blogs.ToList());
        }
        public ActionResult ChiTietBlog(string MaBlog)
        {
            Blog sanpham = db.Blogs.Single(n => n.MaBlog == MaBlog);
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sanpham);
        }
        public ActionResult TrackOrder()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Subcribe(FormCollection f)
        {
            String ToEmail = f["txtEmail"].ToString();
            string content = System.IO.File.ReadAllText(Server.MapPath("~/client/Subcribe.html"));
            
            new MailHelper().SendMail(ToEmail, "Đăng ký theo dõi thành công", content);
            return RedirectToAction("Index", "Home");
        }
    }
}