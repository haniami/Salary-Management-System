<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="SalaryManagementSystem.AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Homepage</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Admin Homepage</h2>

            <asp:LinkButton ID ="btnNewEmployee" runat="server" Text="Click here to insert data for new employee" OnClick="btnNewEmployee_Click"/>
            <br />
            <asp:LinkButton ID ="btnCheckEmployee" runat="server" Text="Click here to check existing employee data" OnClick="btnCheckEmployee_Click"/>
        </div>
    </form>
</body>
</html>
