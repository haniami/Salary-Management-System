<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewEmployee.aspx.cs" Inherits="SalaryManagementSystem.NewEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Employee</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--div1-->
            <h2>New Employee</h2>
            <h4 style="color: red">All details are compulsory</h4>

            <!--Basic details-->
            <h4>Basic details</h4>
            <!--Employee name-->
            <div class="form group">
                <!--div2-->
                <label class="col-md-4 control-label" for="emp_name">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>&nbsp;
                    <asp:TextBox ID="emp_name" runat="server" Width="300 px"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="emp_name" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
            </div>
            <!--div2-->

            <!--Address-->
            <div class="form group">
                <!--div3-->
                <label class="col-md-4 control-label" for="address">
                    Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </label>
                &nbsp;<asp:TextBox ID="address" Width="300px" Height="150px" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="address" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
            </div>
            <!--div3-->
            <br />

            <!--Phone-->
            <div class="form group">
                <!--div4-->
                <label class="col-md-4 control-label" for="phone">Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>&nbsp;
                    <asp:TextBox ID="phone" runat="server" Width="300 px"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
                <br />
            </div>
            <!--div4-->

            <!--Email-->
            <div class="form group">
                <!--div5-->
                <label class="col-md-4 control-label" for="email">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>&nbsp;
                    <asp:TextBox ID="email" runat="server" Width="300 px"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
                <br />
            </div>
            <!--div5-->

            <!--Department-->
            <div style="height: 85px;">
                <div class="form group" style="width: 315px;">
                    <!--div6-->
                    <label class="col-md-4 control-label" for="department">Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                    <div style="float: right;">
                        <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="department" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                        <asp:RadioButtonList ID="department" runat="server" OnSelectedIndexChanged="department_SelectedIndexChanged" Width="120px">
                            <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                            <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                            <asp:ListItem Text="Engineering" Value="Engineering"></asp:ListItem>
                            <asp:ListItem Text="Marketing" Value="Marketing"></asp:ListItem>
                        </asp:RadioButtonList>               
                    </div>
                </div>
            </div>
            <!--div6-->

            <!--Login details-->
            <h4>Login details</h4>
            <!--Username-->
            <div class="form group">
                <!--div7-->
                <label class="col-md-4 control-label" for="username">Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>&nbsp;
                    <asp:TextBox ID="username" runat="server" Width="300 px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
                <br />
            </div>
            <!--div7-->

            <!--Password-->
            <div class="form group">
                <!--div8-->
                <label class="col-md-4 control-label" for="password">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>&nbsp;
                    <asp:TextBox ID="password" runat="server" Width="300 px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="password" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
                <br />
            </div>
            <!--div8-->

            <!--Salary details-->
            <h4>Salary details</h4>
            <!--Salary-->
            <div class="form group">
                <!--div9-->
                <label class="col-md-4 control-label" for="salary">Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>&nbsp;
                    <asp:TextBox ID="salary" runat="server" Width="300 px" OnTextChanged="salary_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="salary" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
                <br />
            </div>
            <!--div9-->

            <!--Allowance-->
            <div class="form group">
                <!--div10-->
                <label class="col-md-4 control-label" for="allowance">Allowance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>&nbsp;
                    <asp:TextBox ID="allowance" runat="server" Width="300 px"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="allowance" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
                <br />
            </div>
            <!--div10-->

            <!--Bonus-->
            <div class="form group">
                <!--div10-->
                <label class="col-md-4 control-label" for="bonus">Bonus&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>&nbsp;
                    <asp:TextBox ID="bonus" runat="server" Width="300 px"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server" ControlToValidate="bonus" ErrorMessage="*" ForeColor="red" ></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
            </div>
            <!--div10-->

            <!--Button-->
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </div>
        <br />
        <br />
        <br />
        <!--div1-->
    </form>
</body>
</html>
