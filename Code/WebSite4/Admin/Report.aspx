<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 5px;
        }
        .auto-style2 {
            height: 150px;
        }
        .auto-style3 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
       <tr>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>
               <asp:Panel ID="Panel1" runat="server" Font-Bold="True" GroupingText="Completed Projects" Height="800">
               <table>
                   <tr>
                       <td class="auto-style2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="1031px">
                                <Columns>
                                    <asp:BoundField DataField="AssignmentID" HeaderText="AssignmentID" InsertVisible="False" ReadOnly="True" SortExpression="AssignmentID" />
                                    <asp:BoundField DataField="AssignName" HeaderText="AssignName" SortExpression="AssignName" />
                                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                                    <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
                                    <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    <asp:BoundField DataField="ProjectCompletedDate" HeaderText="ProjectCompletedDate" SortExpression="ProjectCompletedDate" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectmanagementsystemConnectionString %>" SelectCommand="SELECT DISTINCT [AssignmentID], [AssignName], [class], [Teacher], [Student], [Status], [ProjectCompletedDate] FROM [tblFileupload]"></asp:SqlDataSource>
                       </td>
                      
                   </tr>
                   <tr align="center">
                       
                            <td>
                           <asp:Button ID="Button1" runat="server" Text="Make Report" CssClass="btn btn-info" OnClick="Button1_Click" />
                      
                       </td>
                   </tr>
               </table>
                   <asp:Panel ID="Panel2" runat="server" Font-Bold="True" Visible="False" GroupingText="Report">
                       <table>
                           <tr>
                               <td>
                                   Assignment ID:
                               </td>
                               <td>
                                   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
                                   
                               </td>
                               <td>
                                   <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style3" Visible="false" Width="248px"></asp:TextBox>
                               </td>
                               <td class="auto-style1">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;
                               </td>
                           </tr>
                           <tr>
                               <td>
                               Assignment Name:
                               </td>
                               <td>
                                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                               </td><td class="auto-style1">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;
                               </td>
                           </tr>
                           <tr>
                               <td>
                                  Student Name:
                               </td>
                               <td>
                                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                               </td><td class="auto-style1">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;
                               </td>
                           </tr>
                           <tr>
                               <td>
                              Teacher Name:
                               </td>
                               <td>
                                   <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                               </td><td class="auto-style1">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;
                               </td>
                           </tr>
                           <tr>
                               <td>
                                  Class:
                               </td>
                               <td>
                                   <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                               </td><td class="auto-style1">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   Status:
                               </td>
                               <td>
                                   <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                               </td><td class="auto-style1">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox6" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                   <asp:Button ID="Button2" runat="server" Text="Add" CssClass="btn btn-success" Font-Bold="True" Width="276px" OnClick="Button2_Click" />
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;
                               </td>
                           </tr>
                       </table>
                   </asp:Panel>
          
                   </asp:Panel>
           </td>
       </tr>
   </table>
</asp:Content>

