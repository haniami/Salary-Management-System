<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1User.aspx.cs" Inherits="SalaryManagementSystem.page1User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" background-color: #f3f3f3;>
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .control-label {
            text-align: left;
        }
    </style>
</head>



<body style="width: 739px; margin-left: 376px">

    <form id="form1" runat="server" style="z-index: 10; position: center;top: 60px;  background: #FFFFFF; border-color:darkslateblue; border-style: groove; align-content:center;">
        <!--div1-->
        <div style="height: 285px; width: 753px; text-align: center"><!--div1-->
            <h2>Salary Management System</h2>
            <h4 style="text-align: center">Login Page</h4>
            <div class="form group">
                <label class ="col-md-4 control-label" for ="username">Username: </label>
                    <asp:TextBox ID="username" runat="server" Width="150 px" style="text-align: left"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="*Username is a required field." ForeColor="blue"></asp:RequiredFieldValidator>
                    <br />
            </div><!--div2-->
        
            <!--Password-->
            <div class="form group"><!--div4-->
                <label class ="col-md-4 control-label" for ="password">Password: </label>
                    <asp:TextBox ID="password" TextMode="Password" runat="server" Width="150 px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="*Password is a required field." ForeColor="blue" ></asp:RequiredFieldValidator>
                    <br />
            </div><!--div4-->
        <br />
           <!--Button-->
            <asp:Button ID ="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>    
            &nbsp;&nbsp;    
            <asp:LinkButton runat="server" ID ="btnAdmin" Text="Click here if you are an admin" OnClick="btnAdmin_Click" CausesValidation="false"/>
        </div>
    </form>
    
</body>
</html>
