<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Admin_Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 1220px;
        }
        .auto-style3 {
            width: 1137px;
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
       <tr>
           <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td>
           <td>
    <asp:Panel ID="Panel1" runat="server"  Font-Bold="True" GroupingText="Teacher Registration" Height="649px" Width="1218px">
    <table class="auto-style3">
   <tr><td>&nbsp;</td><td>&nbsp;</td>
            <td>FirstName</td><td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>LastName:</td><td><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td>
             </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
          <tr><td>&nbsp;</td><td>&nbsp;</td>
            <td>Email:</td><td><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>MobileNo:</td><td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td>
             </tr>
          <tr>
            <td>&nbsp;</td>
        </tr>
          <tr><td>&nbsp;</td><td>&nbsp;</td>
            <td>Username:</td><td><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>Password:</td><td><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox6" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td>
             </tr>
          <tr>
            <td>&nbsp;</td>
        </tr>
          <tr><td>&nbsp;</td><td>&nbsp;</td>
            <td>Confirm Password:</td><td><asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></td>  
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password Mismatch" Font-Bold="True" Font-Italic="False" ForeColor="Red"></asp:CompareValidator>
              </td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>Gender:</td><td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown">
              <asp:ListItem>--Please Select---</asp:ListItem>
              <asp:ListItem>MALE</asp:ListItem>
              <asp:ListItem>FEMALE</asp:ListItem>
              <asp:ListItem></asp:ListItem>
              </asp:DropDownList></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td>
             </tr>
         <tr>
            <td>&nbsp;</td>
        </tr>
          <tr><td>&nbsp;</td><td>&nbsp;</td>
            <td>Subject:</td><td><asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox></td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="TextBox8" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>Class:</td><td><asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown" DataSourceID="SqlDataSource1" DataTextField="Classname" DataValueField="Id">
              <asp:ListItem>--Please Select---</asp:ListItem>
              <asp:ListItem>MALE</asp:ListItem>
              <asp:ListItem>FEMALE</asp:ListItem>
              <asp:ListItem></asp:ListItem>
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectmanagementsystemConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [tblclass]"></asp:SqlDataSource>
              </td>  
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></td>
              <td>&nbsp;</td>
             </tr>
        <tr>
            <td>
            &nbsp;
            </td>
        </tr>
        <tr >
            <td>
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
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-success" OnClick="Button1_Click" Font-Bold="True" Width="226px" />
            </td>
        </tr>
        </table>
        <br />

         <asp:Panel ID="Panel2" runat="server" Font-Bold="True" GroupingText="Edit Details">
         <table>
                        <tr>
                            <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                            <td>
                   <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="ID" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="380px">  
                    <Columns>  
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" />  
                        <asp:BoundField DataField="LastName" HeaderText="LastName" />  
                        <asp:BoundField DataField="Email" HeaderText="Email" /> 
                          <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" /> 
                          <asp:BoundField DataField="UserName" HeaderText="UserName" /> 
                          <asp:BoundField DataField="Password" HeaderText="Password" /> 
                          <asp:BoundField DataField="Gender" HeaderText="Gender" /> 
                          <asp:BoundField DataField="Subject" HeaderText="Subject" /> 
                          <asp:BoundField DataField="Class" HeaderText="Class" /> 
                        <asp:CommandField ShowEditButton="true" CausesValidation="false"   />  
                        <asp:CommandField ShowDeleteButton="true" CausesValidation="false"  /> </Columns>  
                       <FooterStyle BackColor="White" ForeColor="#000066" />
                       <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                       <RowStyle ForeColor="#000066" />
                       <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#007DBB" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>  
                             </td>
                        </tr>
                    </table>
    </asp:Panel>
    </asp:Panel>
               </td>
      </tr>
   </table>
    
</asp:Content>

