using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopQuanAo.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        // GET: Admin/HomeAdmin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Map()
        {
            return View();
        }
        public ActionResult Employee()
        {
            return View();
        }
        public ActionResult Customer()
        {
            return View();
        }
        public ActionResult Company()
        {
            return View();
        }
        public ActionResult Chart()
        {
            return View();
        }
    }
}