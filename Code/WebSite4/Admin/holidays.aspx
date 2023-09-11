<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="holidays.aspx.cs" Inherits="Admin_holidays" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<asp:Panel ID="Panel1" runat="server" Height="500" Font-Bold="true" GroupingText="Holidays">
    <br />
    <br />
    <br />
 <table align="center">
    <tr><td>Name:</td>
        <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
        <td>Upload Holidays List:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </td>
        
       </tr>
     <tr>
         <td>&nbsp;</td>
     </tr>
     <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       <td>
           <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" CssClass="btn btn-success" />

       </td>
    </tr>
 </table>
    
</asp:Panel>
</asp:Content>

