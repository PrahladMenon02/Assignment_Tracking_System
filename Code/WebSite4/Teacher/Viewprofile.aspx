<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.master" AutoEventWireup="true" CodeFile="Viewprofile.aspx.cs" Inherits="Teacher_Viewprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 1220px;
        }
        .auto-style3 {
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
   <table>
       <tr>
           <td>
               &nbsp;
           </td><td>
               &nbsp;
           </td><td>
               &nbsp;
           </td>
           <td>

           
    <asp:Panel ID="Panel1" runat="server" Height="500" Font-Bold="True" GroupingText="Details">
           <table class="auto-style2">
   <tr><td class="auto-style3">&nbsp;</td><td>&nbsp;</td>
            <td>FirstName</td><td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td>&nbsp;</td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>LastName:</td><td><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td>&nbsp;</td>
              <td>&nbsp;</td>
             </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
          <tr><td class="auto-style3">&nbsp;</td><td>&nbsp;</td>
            <td>Email:</td><td><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td>&nbsp;</td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>MobileNo:</td><td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td></td>
              <td>&nbsp;</td>
             </tr>
          <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
          <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
          <tr><td class="auto-style3">&nbsp;</td><td>&nbsp;</td>
           <td>Gender:</td><td><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></td>
              
            <td>&nbsp;</td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>Subject:</td><td><asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox></td>  
             </tr>
         <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
          <tr><td class="auto-style3">&nbsp;</td><td>&nbsp;</td>
            
           <td>Class:</td><td>
                  <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
              </td>  
            <td>&nbsp;</td>
              <td>&nbsp;</td>
             </tr>
        <tr>
            <td class="auto-style3">
            &nbsp;
            </td>
        </tr>
        <tr >
            <td class="auto-style3">
                &nbsp;
            </td><td>
                &nbsp;
            </td><td>
                &nbsp;
            </td><td>
                &nbsp;
            </td><td>
                &nbsp;
            </td><td>
                &nbsp;
            </td><td>
                &nbsp;
            </td><td>
                &nbsp;
            </td><td>
                &nbsp;
            </td></tr>
    </asp:Panel>
    </td>
       </tr>
   </table>
</asp:Content>

