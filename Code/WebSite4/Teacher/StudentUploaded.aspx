<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.master" AutoEventWireup="true" CodeFile="StudentUploaded.aspx.cs" Inherits="Teacher_StudentUploaded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>
              <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>
            <td>

           
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HeaderStyle-BackColor="#cc6699" Height="204px" OnRowCommand="GridTweets_RowCommand" Width="1042px">
                            <Columns>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="AssignmentID">
                                    <ItemTemplate>
                                        <asp:Label ID="lblEventID" runat="server" Text='<%#Eval("AssignmentID")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="FileData">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTweetName" runat="server" Text='<%#Eval("Filedata")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="Startdate">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTweetBy" runat="server" Text='<%#Eval("Startdate")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="Enddate">
                                    <ItemTemplate>
                                        <asp:Label ID="lblPostedDate" runat="server" Text='<%#Eval("Enddate")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="class">
                                    <ItemTemplate>
                                        <asp:Label ID="lblclass" runat="server" Text='<%#Eval("class")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="Teacher">
                                    <ItemTemplate>
                                        <asp:Label ID="lblteacher" runat="server" Text='<%#Eval("Teacher")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="Student">
                                    <ItemTemplate>
                                        <asp:Label ID="lblstudent" runat="server" Text='<%#Eval("Student")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField> <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="Studentwork">
                                    <ItemTemplate>
                                        <asp:Label ID="lblwork" runat="server" Text='<%#Eval("StudentWork")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkComments" runat="server" CommandArgument='<%#Eval("AssignmentID") %>' CommandName="DownloadFile" Text="StudentUploadWork" CausesValidation="false" />
                                       
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="White" />
                        </asp:GridView> </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

</asp:Content>

