using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Crud_OldMethod.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(string Name, string Date, String Number, string Email)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("sp_register",connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Name", Name);
            command.Parameters.AddWithValue("@Date", Date);
            command.Parameters.AddWithValue("@Number", Number);
            command.Parameters.AddWithValue("@Email", Email);
            command.Parameters.AddWithValue("@Action", 1);
            int res=command.ExecuteNonQuery();
            return View();
        }
    }
}