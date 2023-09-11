<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewReports.aspx.cs" Inherits="Admin_ViewReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>
                
            
            <td>
                
            <asp:Panel ID="Panel1" runat="server" Height="500px" GroupingText="View Reports" Font-Bold="true" Width="1240px">
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="1202px">
                                <Columns>
                                    <asp:BoundField DataField="AssignmentId" HeaderText="AssignmentId" SortExpression="AssignmentId" />
                                    <asp:BoundField DataField="AssignmentName" HeaderText="AssignmentName" SortExpression="AssignmentName" />
                                    <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
                                    <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
                                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                </Columns>
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectmanagementsystemConnectionString %>" SelectCommand="SELECT DISTINCT [AssignmentId], [AssignmentName], [Student], [Teacher], [class], [status] FROM [tblreport]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

