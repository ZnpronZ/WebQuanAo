using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ShopQuanAo.Models;
namespace ShopQuanAo.Controllers
{
    public class CompanyController : ApiController
    {
        QuanLiQuanAoEntities db = new QuanLiQuanAoEntities();
        [HttpGet]
        public IEnumerable<CongTy> GetCTyLists()
        {
            IList<CongTy> list = new List<CongTy>();
            var query = (from prods in db.CongTies select prods).ToList();
            foreach (var item in query)
            {
                list.Add(new CongTy
                {
                    TenCty = item.TenCty,
                    DiaChiCty = item.DiaChiCty,
                    SdtCty = item.SdtCty

                });
            }
            return list;
        }
    }
}
