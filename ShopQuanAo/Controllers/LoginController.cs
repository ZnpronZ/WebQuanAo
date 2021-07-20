using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopQuanAo.Models;
using ShopQuanAo.Data;
namespace ShopQuanAo.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();

        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        [Route("Login")]
        public ActionResult Index(LoginModel model)
        {

            
            var user = db.KhachHangs.Where(t => t.TaiKhoan == model.UserName).FirstOrDefault();
            if (user == null)
            {

                ViewBag.Err = "Không tồn tại tài khoản";
                return View();
            }
            else
            {
                ViewBag.Err = "";
                if (user.TaiKhoan == null)
                {
                    ViewBag.Err = "Chưa nhập tài khoản";
                    return View();
                }
                if (user.MatKhau == null)
                {
                    ViewBag.Err = "Chưa nhập mật khẩu";
                    return View();
                }
                if (user.MatKhau != model.Password ||user.TaiKhoan!=model.UserName)
                {
                    ViewBag.Err = "Sai mật khẩu hoặc tài khoản";
                    return View();
                }
                Code.SessionHelper
                    .SetSession(new Code.UserSession { UserName = user.TaiKhoan, HoTen = user.HoTen });
                return RedirectToAction("Index", "Home");
            }
        }
    }
}