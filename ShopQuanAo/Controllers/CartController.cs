using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopQuanAo.Data;
using ShopQuanAo.Models;
using System.Web.Script.Serialization;
namespace ShopQuanAo.Controllers
{
    public class CartController : Controller
    {
        private const string CartSession = "CartSession";
        // GET: Cart
        public ActionResult Index()
        {
            var cart = Session[CartSession];
            var list = (List<CartItem>)cart;
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return View(list);
        }
        public JsonResult DeleteAll()
        {
            Session[CartSession] = null;
            return Json(new
            {
                status = true
            });
        }
        public JsonResult Delete(String MaSP)
        {
            var sessionCart = (List<CartItem>)Session[CartSession];
            sessionCart.RemoveAll(x => x.sanpham.MaSP == MaSP);
            Session[CartSession] = sessionCart;

            return Json(new
            {
                status = true
            });
        }
        public JsonResult Update(string cartModel)
        {
            var jsonCart = new JavaScriptSerializer().Deserialize<List<CartItem>>(cartModel);
            var sessionCart = (List<CartItem>)Session[CartSession];

            foreach (var item in sessionCart)
            {
                var jsonItem = jsonCart.SingleOrDefault(x => x.sanpham.MaSP == item.sanpham.MaSP);
                if (jsonItem != null)
                {
                    item.SoLuong = jsonItem.SoLuong;
                }
            }
            Session[CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }
        public ActionResult AddItem(string MaSP, int SoLuong, FormCollection f)
        {
            
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                var sanpham = db.SanPhams.Find(MaSP);
                var cart = Session[CartSession];
                if (cart != null)
                {

                    var list = (List<CartItem>)cart;
                    if (list.Exists(x => x.sanpham.MaSP == MaSP))
                    {
                        foreach (var item in list)
                        {
                            if (item.sanpham.MaSP == MaSP)
                            {
                                item.SoLuong += SoLuong;
                            }
                        }
                    }
                    else
                    {
                        //tạo mới đối tượng cart item
                        var item = new CartItem();
                        item.sanpham = sanpham;
                        item.SoLuong = SoLuong;
                        list.Add(item);

                    }
                    Session[CartSession] = list;
                }
                else
                {
                    //tạo mới đối tượng cart item
                    var item = new CartItem();
                    item.sanpham = sanpham;
                    item.SoLuong = SoLuong;
                    var list = new List<CartItem>();
                    list.Add(item);
                    //Gán vào session
                    Session[CartSession] = list;
                }

                return RedirectToAction("Index", "Cart");
            
        }
        [HttpGet]
        public ActionResult Payment()
        {
            var cart = Session[CartSession];
            var list = (List<CartItem>)cart;
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return View(list);
        }
        [HttpPost]
        public ActionResult Payment(string shipName,string shipMobile,string shipAdress,string email)
        {
            QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
            var hoadon = new HoaDon();
            hoadon.NgayTao = DateTime.Now;
            hoadon.ShipAdress = shipAdress;
            hoadon.ShipMobile = shipMobile;
            hoadon.ShipName = shipName;
            hoadon.ShipEmail = email;
            var id = new Order().Insert(hoadon);
            var cart = (List<CartItem>)Session[CartSession];
            var orderDetail = new orderdetail();
            foreach(var item in cart)
            {
                var chitiet = new ChiTietHoaDon();
                chitiet.MaSP = item.sanpham.MaSP;
                chitiet.MaHD =  int.Parse(id.ToString());
                chitiet.SoLuong = item.SoLuong;
                chitiet.TongTien = item.sanpham.GiaBan;
                orderDetail.Insert(chitiet);
            }    
            return RedirectToAction("Success","Cart");
        }
        public ActionResult Success()
        {
            return View();
        }
    }
}