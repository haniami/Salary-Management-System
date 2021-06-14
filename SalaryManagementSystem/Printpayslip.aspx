<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Printpayslip.aspx.cs" Inherits="SalaryManagementSystem.Printpayslip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payslip</title>
    <style>

    @import url('https://fonts.googleapis.com/css?family=Roboto:200,300,400,600,700');
    table{
        border: 1px solid black;
        border-collapse: collapse;
    }
    h1
    {
        font-family: 'Roboto', sans-serif; font-size: 36px; color: #444;
    }

    </style>
</head>

          

<body>
    <h1>[Payslip]</h1>
    <form id="form1" runat="server">
        <div>
            <h4>Salary</h4>
            <table style="width:70%" > 
                <tr>
                    <th>Salary</th>
                    <th>Amount(RM): <% Response.Write(s.Salary_Amout); %></th> 
                </tr>
            </table>
            
            <h4>Deduction</h4>
            <table style="width:70%"> 
                <tr>
                    <th>EPF</th>
                    <th>Amount(RM): <% Response.Write(d.EPF); %></th> 
                </tr>

                <tr>
                    <th>SOCSO</th>
                    <th>Amount(RM): <% Response.Write(d.SOCSO); %></th> 
                </tr>

                <tr>
                    <th>Tax</th>
                    <th>Amount(RM): <% Response.Write(d.Tax); %></th> 
                </tr>
            </table>

            
<h4>Addition</h4>
            <table style="width:70%"> 
                <tr>
                    <th>Allowance</th>
                    <th>Amount(RM): <% Response.Write(a.Allowance); %></th> 
                </tr>

                <tr>
                    <th>Bonus</th>
                    <th>Amount(RM): <% Response.Write(a.Bonus); %></th> 
                </tr>

            </table>

            <h4>Net Salary</h4>
            <table style="width:70%"> 
                <tr>
                    <th>Net Salary</th>
                    <th>Amount(RM): <% Response.Write(s.Net_Salary); %></th> 
                </tr>
            </table>




        </div>
    </form>
</body>
</html>
