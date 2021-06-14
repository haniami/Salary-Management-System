using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryManagementSystem
{
    public partial class ExistingEmployee : System.Web.UI.Page
    {

        public List<Employee> employee_list = null;
        public SMS_DatabaseEntities x;
        //public List<Salary> salary_list = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                x = new SMS_DatabaseEntities();
                employee_list = x.Employees.ToList();
            }
            else
            {
                int emp_id = int.Parse(Request["emp_id"]);
                x = new SMS_DatabaseEntities();
                Employee u = x.Employees.First(uu => uu.Employee_ID == emp_id);
                
                var s = x.Salaries.First(ss => ss.Employee_ID == emp_id);

                var a = x.Additions.First(aa => aa.Salary_ID == s.Salary_ID);
                x.Additions.Remove(a);

                var b = x.Deductions.First(bb => bb.Salary_ID == s.Salary_ID);
                x.Deductions.Remove(b);

                x.Salaries.Remove(s);
                x.Employees.Remove(u);

                x.SaveChanges();
                employee_list = x.Employees.ToList();
            }
        }
    }
}