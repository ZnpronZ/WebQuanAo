using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ShopQuanAo.Models;
namespace ShopQuanAo.Controllers
{
    public class CustomerController : ApiController
    {
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        [HttpGet]
        public IEnumerable<KhachHang> GetKHLists()
        {
            IList<KhachHang> list = new List<KhachHang>();
            var query = (from prods in db.KhachHangs select prods).ToList();
            foreach (var item in query)
            {
                list.Add(new KhachHang
                {
                    MaKH = item.MaKH,
                    HoTen = item.HoTen,
                    DiaChi = item.DiaChi,
                    Sdt = item.Sdt,
                    TaiKhoan = item.TaiKhoan,
                    MatKhau=item.MatKhau
                });
            }
            return list;
        }
        //2. Dịch vụ lấy thông tin một nhân viên với mã nào đó
        [HttpGet]
        [Route("api/Customer/get/{MaKH}")]
        public IEnumerable<KhachHang> GetKH(string MaKH)
        {
            IList<KhachHang> prosList = new List<KhachHang>();
            var query = (from prods in db.KhachHangs where prods.MaKH == MaKH select prods).ToList();
            foreach (var item in query)
            {
                prosList.Add(new KhachHang
                {
                    MaKH = item.MaKH,
                    HoTen = item.HoTen,
                    DiaChi = item.DiaChi,
                    Sdt = item.Sdt,
                    TaiKhoan = item.TaiKhoan,
                    MatKhau = item.MatKhau
                });
            }
            return prosList;
        }
        [HttpPost]
        public bool InsertNewCustomer(string id, string HoTen, string DiaChi,string sdt, string TaiKhoan, string MatKhau)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                KhachHang customer = new KhachHang();
                customer.MaKH = id;
                customer.HoTen = HoTen;
                customer.Sdt = sdt;
                customer.DiaChi = DiaChi;
                customer.TaiKhoan = TaiKhoan;
                customer.MatKhau = MatKhau;
                db.KhachHangs.Add(customer);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpPut]
        public bool UpdateCustomer(string id, string HoTen, string DiaChi, string sdt, string TaiKhoan, string MatKhau)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                //Lấy mã khách đã có
                KhachHang customer = db.KhachHangs.FirstOrDefault(x => x.MaKH == id);
                if (customer == null) return false;
                customer.MaKH = id;
                customer.HoTen = HoTen;
                customer.Sdt = sdt;
                customer.DiaChi = DiaChi;
                customer.TaiKhoan = TaiKhoan;
                customer.MatKhau = MatKhau;
                db.SaveChanges();//Xác nhận chỉnh sửa
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpDelete]
        [Route("api/Customer/delete/{id}")]
        public bool DeleteCustomer(string id)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                //Lấy mã khách đã có
                KhachHang customer = db.KhachHangs.FirstOrDefault(x => x.MaKH == id);
                if (customer == null) return false;
                db.KhachHangs.Remove(customer);
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
