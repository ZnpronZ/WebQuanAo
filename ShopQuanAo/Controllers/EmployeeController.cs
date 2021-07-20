using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ShopQuanAo.Models;
namespace ShopQuanAo.Controllers
{
    public class EmployeeController : ApiController
    {
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        [HttpGet]
        public IEnumerable<NhanVien> GetNVLists()
        {
            IList<NhanVien> list = new List<NhanVien>();
            var query = (from prods in db.NhanViens select prods).ToList();
            foreach (var item in query)
            {
                list.Add(new NhanVien
                {
                    MaNV = item.MaNV,
                    HoTen = item.HoTen,
                    SDT = item.SDT,
                    DiaChi = item.DiaChi,
                    Luong = item.Luong

                });
            }
            return list;
        }
        //2. Dịch vụ lấy thông tin một nhân viên với mã nào đó
        [HttpGet]
        [Route("api/Employee/get/{MaNV}")]
        public IEnumerable<NhanVien> GetNV(string MaNV)
        {
            IList<NhanVien> prosList = new List<NhanVien>();
            var query = (from prods in db.NhanViens where prods.MaNV == MaNV select prods).ToList();
            foreach (var item in query)
            {
                prosList.Add(new NhanVien
                {
                    MaNV = item.MaNV,
                    HoTen = item.HoTen,
                    SDT = item.SDT,
                    DiaChi = item.DiaChi,
                    Luong = item.Luong
                });
            }
            return prosList;
        }
        [HttpPost]
        public bool InsertNewEmployee(string id, string HoTen, string SDT, string DiaChi, string Password, int Quyen, int Luong)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                NhanVien employees = new NhanVien();
                employees.MaNV = id;
                employees.HoTen = HoTen;
                employees.SDT = SDT;
                employees.DiaChi = DiaChi;
                employees.Luong = Luong;
                db.NhanViens.Add(employees);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpPut]
        public bool UpdateEmployees(string id, string HoTen, string SDT, string DiaChi, string Password, int Quyen, int Luong)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                //Lấy mã khách đã có
                NhanVien employees = db.NhanViens.FirstOrDefault(x => x.MaNV == id);
                if (employees == null) return false;
                employees.MaNV = id;
                employees.HoTen = HoTen;
                employees.SDT = SDT;
                employees.DiaChi = DiaChi;
                employees.Luong = Luong;
                db.SaveChanges();//Xác nhận chỉnh sửa
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpDelete]
        [Route("api/Employee/delete/{id}")]
        public bool DeleteEmployees(string id)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                //Lấy mã khách đã có
                NhanVien employees = db.NhanViens.FirstOrDefault(x => x.MaNV == id);
                if (employees == null) return false;
                db.NhanViens.Remove(employees);
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
