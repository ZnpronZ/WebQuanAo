using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopQuanAo.Models;
using System.Net.Http;
namespace ShopQuanAo.Areas.Admin.Controllers
{
    public class GmailsendController : Controller
    {
        // GET: Gmailsend
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(EmailClass ec)
        {
            HttpClient hc = new HttpClient();
            hc.BaseAddress = new Uri("https://localhost:44360/api/Email");
            var consumewebapi = hc.PostAsJsonAsync<EmailClass>("Email",ec);
            consumewebapi.Wait();
            var sendmail = consumewebapi.Result;
            if(sendmail.IsSuccessStatusCode)
            {
                ViewBag.message = "thư đã được chuyển đi cho " + ec.to.ToString();
            }    
            return View();
        }
    }
}