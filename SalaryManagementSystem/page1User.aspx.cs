using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryManagementSystem
{
    public partial class page1User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SMS_DatabaseEntities ent = new SMS_DatabaseEntities();
            Employee em = ent.Employees.First(u => u.Name.Contains(username.Text));
            
            if (em != null && em.Password == password.Text)
            {
                Response.Cookies.Add(new HttpCookie("username") { Value = username.Text });
                Response.Redirect("Printpayslip.aspx");
            }
            //jgn lupa cek pw
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("page1Admin.aspx");
        }
    }
}