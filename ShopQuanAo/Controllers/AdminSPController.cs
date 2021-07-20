using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ShopQuanAo.Models;
namespace ShopQuanAo.Controllers
{
    public class AdminSPController : ApiController
    {
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        [HttpGet]
        public IEnumerable<SanPham> GetSPLists()
        {
            IList<SanPham> list = new List<SanPham>();
            var query = (from prods in db.SanPhams select prods).ToList();
            foreach (var item in query)
            {
                list.Add(new SanPham
                {
                    MaSP = item.MaSP,
                    TenSP = item.TenSP,
                    GiaBan = item.GiaBan,
                    Loai = item.Loai,
                    TinhTrang = item.TinhTrang,
                    Anh = item.Anh,
                    GioiTinh = item.GioiTinh,
                    MoTa = item.MoTa,
                    Anh_hover = item.Anh_hover

                });
            }
            return list;
        }

        //2. Dịch vụ lấy thông tin một sản phẩm với mã nào đó
        [HttpGet]
        [Route("api/AdminSP/get/{MaSP}")]
        public IEnumerable<SanPham> GetSP(string MaSP)
        {
            IList<SanPham> prosList = new List<SanPham>();
            var query = (from prods in db.SanPhams where prods.MaSP == MaSP select prods).ToList();
            foreach (var item in query)
            {
                prosList.Add(new SanPham
                {
                    MaSP = item.MaSP,
                    TenSP = item.TenSP,
                    GiaBan = item.GiaBan,
                    Loai = item.Loai,
                    TinhTrang = item.TinhTrang,
                    Anh = item.Anh,
                    GioiTinh = item.GioiTinh,
                    MoTa = item.MoTa,
                    Anh_hover = item.Anh_hover
                });
            }
            return prosList;
        }
        //3. httpPost, dịch vụ thêm mới một khách hàng
        [HttpPost]
        public bool InsertNewSP(string id, string tensp, float giaban, string loai, string tinhtrang, string anh, string gioitinh, string mota, string anh_hover)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                SanPham SP = new SanPham();
                SP.MaSP = id;
                SP.TenSP = tensp;
                SP.GiaBan = giaban;
                SP.Loai = loai;
                SP.TinhTrang = tinhtrang;
                SP.Anh = anh;

                SP.GioiTinh = gioitinh;
                SP.MoTa = mota;
                SP.Anh_hover = anh_hover;
                db.SanPhams.Add(SP);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //4. httpPut để chỉnh sửa thông tin 
        [HttpPut]
        public bool UpdateSP(string id, string tensp, float giaban, string loai, string tinhtrang, string anh, string gioitinh, string mota, string anh_hover)
        {
            try
            {
                QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
                //Lấy mã khách đã có
                SanPham SP = db.SanPhams.FirstOrDefault(x => x.MaSP == id);
                if (SP == null) return false;
                SP.MaSP = id;
                SP.TenSP = tensp;
                SP.GiaBan = giaban;
                SP.Loai = loai;
                SP.TinhTrang = tinhtrang;
                SP.Anh = anh;

                SP.GioiTinh = gioitinh;
                SP.MoTa = mota;
                SP.Anh_hover = anh_hover;

                db.SaveChanges();//Xác nhận chỉnh sửa
                return true;
            }
            catch
            {
                return false;
            }
        }
        //5.httpDelete để xóa một Khách hàng
        [HttpDelete]
        [Route("api/AdminSP/delete/{id}")]
        public bool DeleteSP(string id)
        {
            //try
            //{
            //Lấy mã khách đã có
            SanPham SP = db.SanPhams.FirstOrDefault(x => x.MaSP == id);

            if (SP == null) return false;
            //var p=dbSP.ExecuteCommand($"delete from ChiTietHDB where MaHQ={SP.MaHQ}");

            db.SanPhams.Remove(SP);
            db.SaveChanges();
            return true;
            //}
            //catch
            //{
            //    return false;
            //}
        }

       
    }
}
