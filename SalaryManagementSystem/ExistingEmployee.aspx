<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExistingEmployee.aspx.cs" Inherits="SalaryManagementSystem.ExistingEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Existing Employee</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th, td {
            /*padding: 5px;*/
        }

        th {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" action="" method="post">
        <div>
            <h2>Existing Employee</h2>

            <table style="width: 50%">
                <%if (employee_list != null)
                    {%>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>&nbsp;</th>
                </tr>
                <% foreach (SalaryManagementSystem.Employee emp in employee_list)
                    { %>
                <tr>
                    <td><%Response.Write($"{emp.Name} "); %></td>
                    <td><%Response.Write($"{emp.Email} "); %></td>
                    <td><%Response.Write($"{emp.Phone} "); %></td>
                    <%
                        string dn = x.Departments.First(s => s.Department_ID == emp.Department_ID).Department_Name;
                        Response.Write($"<td>{dn}</td>");

                        double es = x.Salaries.Where(s => s.Employee_ID == emp.Employee_ID).Select(s => s.Salary_Amout).FirstOrDefault();
                        Response.Write($"<td>{es}</td>");

                    %>

                    <td><a href="javascript:postdata(<% Response.Write(emp.Employee_ID); %>);">Delete</a></td>

                    <%%>
                </tr>
                <%}
                    }%>
            </table>


        </div>
    </form>
</body>

    <script>

        function postdata(emp_id) {
            if (confirm('Delete selected user from database?')) {
                document.getElementById("form1").innerHTML += '<input type="hidden" name="emp_id" value="' + emp_id + '">';
                document.getElementById("form1").submit(); 
            } 
        }

    </script>

</html>
