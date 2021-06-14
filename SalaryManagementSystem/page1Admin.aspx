<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1Admin.aspx.cs" Inherits="SalaryManagementSystem.page1Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .group {
            text-align: left;
        }
    </style>
</head>
<body style="width: 739px; margin-left: 376px">
    <form id="form1" runat="server" style="align-content: center; align-self:center;">
        <div>
            <br />
            <br />
            <br />
            <!--div1-->
            <h4 style="text-align: left">Admin Login Page</h4>
        
            <!--Password-->
            <div class="form group"><!--div4-->
                <label class ="col-md-4 control-label" for ="adminpassword">Password: </label>
                    <asp:TextBox ID="adminpassword" TextMode="Password" runat="server" Width="150 px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adminpassword" ErrorMessage="*Password is required." ForeColor="Blue"></asp:RequiredFieldValidator>
                    <br />
            </div><!--div4-->
        <br />
           <!--Button-->
            <asp:Button ID ="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
        </div><!--div1-->
    </form>
</body>
</html>
