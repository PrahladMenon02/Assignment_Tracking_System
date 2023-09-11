<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpages/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Mainpages_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../css/bootstrap.min.css" rel="stylesheet" />
     <style type="text/css">
         .auto-style5 {
             width: 309px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
       <asp:Panel ID="Panel1" runat="server" Height="500px" Width="1113px">
           <h1>Welcome to Contact Us</h1>
       <table class="auto-style5">
           <tr>
               <td>
                   <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
               </td>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="Click Here To View Holidays" OnClick="Button1_Click" CssClass="btn btn-info"> </asp:Button>
               </td>
           </tr>
       </table>
   
    
    
                      </asp:Panel>  </center>
</asp:Content>

