<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.master" AutoEventWireup="true" CodeFile="Chats.aspx.cs" Inherits="Teacher_Chats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table>
            <tr>
                <td>
                    &nbsp;
                </td> <td>
                    &nbsp;
                </td> <td>
                    &nbsp;
                </td> <td>
                    &nbsp;
                </td>
<td>
    <asp:Panel ID="Panel1" runat="server" Width="1199px" GroupingText="Modify Deadlines">
             <table class="auto-style2" align="center">
        <tr>
          <td>
              Enter Assignment ID:
          </td><td>
              
              <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                
               </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
            <td>&nbsp;</td>
            <td>
                      <asp:Button ID="Button2" runat="server" Text="Search" CssClass="btn-primary"  CausesValidation="false" OnClick="Button2_Click" Font-Bold="True" Width="115px" />
            </td> <td>&nbsp;</td>
           
                </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <td>
                Assignment Name:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox></td>
            <td>
                &nbsp;</td>
            
           
        </tr>

          <tr>
                <td>&nbsp;</td>
            </tr>
         <tr>
                <td>Start Date:</td>
                <td>
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </td>
             <td>
                  &nbsp;</td>
            </tr>
        <tr>
                <td>&nbsp;</td>
            </tr>
         <tr>
                <td>End Date:</td>
                <td>
                     <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </td>
             <td>
                  &nbsp;</td>
            </tr>
        <tr>
                <td>&nbsp;</td>
            </tr>
        <tr>
            <td>Select Class:</td>
            <td>
               <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </td>
            
            <td>
                 &nbsp;</td>
        </tr>
        <tr>
                <td>&nbsp;</td>
            </tr>
        <tr>
            <td>Assign Teacher</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                
            </td>
            <td>
                 &nbsp;</td>
            
        </tr>
        <tr>
                <td>&nbsp;</td>
            </tr>
       <tr>
            <td>Assign Student:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </td>
            <td>
                 &nbsp;</td>
        </tr><tr>
                <td>&nbsp;</td>
            </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Modify" OnClick="Button1_Click" CssClass="btn btn-success" Font-Bold="True" Width="196px" />
            
            </td>
            <td>
                &nbsp;</td>
           
            <td>
                 &nbsp;</td>
            
        </tr>
    </table>
    </asp:Panel>   </td></tr> 
        </table>
</asp:Content>

