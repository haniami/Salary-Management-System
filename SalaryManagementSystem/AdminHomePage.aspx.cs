using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryManagementSystem
{
    public partial class AdminHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewEmployee.aspx");
        }

        protected void btnCheckEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExistingEmployee.aspx");
        }
    }
}