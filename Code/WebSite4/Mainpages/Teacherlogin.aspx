<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpages/MasterPage.master" AutoEventWireup="true" CodeFile="Teacherlogin.aspx.cs" Inherits="Mainpages_Teacherlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <center>
<asp:Panel ID="Panel1" runat="server" GroupingText="Teacher  Login" Height="500" Width="500" Font-Bold="True" >
    <table>
        <tr>
            <td>UserName:</td>
            <td>
             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
             <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-info" Font-Bold="true" Width="143px" ></asp:Button>
            </td>
        </tr>
    </table>
</asp:Panel>
    </center>
</asp:Content>

