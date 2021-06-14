using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalaryManagementSystem
{
    public partial class NewEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Cookies.Add(new HttpCookie("dept_id") { Value = (new Random()).Next().ToString() });
            Response.Cookies.Add(new HttpCookie("emp_name") { Value = emp_name.Text });
            Response.Cookies.Add(new HttpCookie("address") { Value = address.Text });
            Response.Cookies.Add(new HttpCookie("phone") { Value = phone.Text });
            Response.Cookies.Add(new HttpCookie("email") { Value = email.Text });
            Response.Cookies.Add(new HttpCookie("department") { Value = department.Text });
            Response.Cookies.Add(new HttpCookie("username") { Value = username.Text });
            Response.Cookies.Add(new HttpCookie("password") { Value = password.Text });
            Response.Cookies.Add(new HttpCookie("salary") { Value = salary.Text });
            Response.Cookies.Add(new HttpCookie("allowance") { Value = allowance.Text });
            Response.Cookies.Add(new HttpCookie("bonus") { Value = bonus.Text });

            // declare master database
            SMS_DatabaseEntities form = new SMS_DatabaseEntities();

            // userdb class is the same name as the table name in the database
            Department dept = new Department();
            Employee employee = new Employee();
            Salary xsalary = new Salary(); 
            Addition addition = new Addition();
            Deduction deduction = new Deduction();

            // insert variables into a userdb object
            int dep_id = (new Random()).Next();
            dept.Department_ID = dep_id;
            dept.Department_Name = Request.Cookies["department"].Value;

            int emp_id = (new Random()).Next();
            employee.Employee_ID = emp_id;
            employee.Name = Request.Cookies["emp_name"].Value;
            employee.Address = Request.Cookies["address"].Value;
            employee.Phone = Request.Cookies["phone"].Value;
            employee.Email = Request.Cookies["email"].Value;
            employee.Username = Request.Cookies["username"].Value;
            employee.Password = Request.Cookies["password"].Value;
            employee.Department_ID = dep_id;

            int salaryid = (new Random()).Next();
            xsalary.Salary_ID = salaryid;
            xsalary.Salary_Amout = int.Parse(Request.Cookies["salary"].Value.ToString()); 
            xsalary.Employee_ID = emp_id;

            addition.Addition_ID = (new Random()).Next();
            addition.Allowance = int.Parse(Request.Cookies["allowance"].Value.ToString());
            addition.Bonus = int.Parse(Request.Cookies["bonus"].Value.ToString());
            addition.Salary_ID = salaryid;

            int deductionid = (new Random()).Next();
            deduction.Deduction_ID = deductionid;
            deduction.Salary_ID = salaryid;
            deduction.Tax = 0;
            deduction.EPF = (decimal) xsalary.Salary_Amout * (decimal) 0.05;
            deduction.SOCSO = (decimal) xsalary.Salary_Amout * (decimal) 0.11;

            xsalary.Net_Salary = xsalary.Salary_Amout - (double)deduction.EPF - (double)deduction.SOCSO - (double)deduction.Tax + (double)addition.Allowance + (double)addition.Bonus;

            // insert data (userdb object) into the corresponding database and save changes
            form.Departments.Add(dept);
            //form.SaveChanges();

            form.Salaries.Add(xsalary);

            form.Employees.Add(employee);
            //form.SaveChanges();

            form.Additions.Add(addition);
            //form.SaveChanges();

            form.Deductions.Add(deduction);
            //form.SaveChanges();

            
            form.SaveChanges();
            // ----------------------------

            if (HttpContext.Current != null)
            {
                int cookieCount = HttpContext.Current.Request.Cookies.Count;
                for (var i = 0; i < cookieCount; i++)
                {
                    var cookie = HttpContext.Current.Request.Cookies[i];
                    if (cookie != null)
                    {
                        var cookieName = cookie.Name;
                        var expiredCookie = new HttpCookie(cookieName) { Expires = DateTime.Now.AddDays(-1) };
                        HttpContext.Current.Response.Cookies.Add(expiredCookie); // overwrite it
                    }
                }

                // clear cookies server side
                HttpContext.Current.Request.Cookies.Clear();
            }

            Response.Redirect("NewEmployeeSaved.aspx");
        }

        protected void department_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void salary_TextChanged(object sender, EventArgs e)
        {

        }
    }
}