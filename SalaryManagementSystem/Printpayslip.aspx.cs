using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace SalaryManagementSystem
{
    public partial class Printpayslip : System.Web.UI.Page
    {

        public Employee e = null;
        public SMS_DatabaseEntities y;
        public Salary s;
        public Addition a;
        public Deduction d;
        string u;

        //public List<Salary> salary_list = null;
        protected void Page_Load(object sender, EventArgs eeq)
        {
            if (Request.Cookies["username"] != null)
            {
                u = Request.Cookies["username"].Value;
                y = new SMS_DatabaseEntities();
                e = y.Employees.First(ee => ee.Name.Contains(u));
                s = y.Salaries.First(ss => ss.Employee_ID == e.Employee_ID);
                a = y.Additions.First(aa => aa.Salary_ID == s.Salary_ID);
                d = y.Deductions.First(dd => dd.Salary_ID == s.Salary_ID);
            }
        }
    }
}
