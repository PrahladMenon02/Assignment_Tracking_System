<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="StudentUpload.aspx.cs" Inherits="Admin_StudentUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        /*.auto-style1 {
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
        }*/
        .auto-style2 {
            width: 305px;
        }
        .auto-style3 {
            width: 592px;
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="500" GroupingText="Student Work">
        <table>
            
                <tr>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
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
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="#cc3300" HeaderText="">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkComments" runat="server" CommandArgument='<%#Eval("AssignmentID") %>' CommandName="DownloadFile" Text="Download" CausesValidation="false" />
                                        &nbsp; <asp:LinkButton ID="LinkButton1" runat="server" Text="SendMessage" CommandName="Send" CausesValidation="false"/>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("AssignmentID") %>' CommandName="Status" Text="Status" CausesValidation="false" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
         
        </table>
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False" Font-Bold="True" GroupingText="Message">
        <table align="center">
            <tr>
                <td>
                    Student Name:
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
                <td>
                    Description:
                </td>
                <td>
                   <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" TextMode="MultiLine" Height="44px" Width="171px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
                
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Admin" Visible="False"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-success" OnClick="Button1_Click" Font-Bold="True" Width="173px" />

                </td>
            </tr>
           
        </table>
    </asp:Panel>
         <asp:Panel ID="Panel3" runat="server" Font-Bold="True" Visible="false" GroupingText="Status">
           <table align="center" class="auto-style3">
               <tr>
                   
                   <td>
                       Status:
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

                   </td>
                   <td>
                    Date:
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>

                </td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

                   </td>
                   <td>
                       <asp:Button ID="Button2" runat="server" Text="Accepted" OnClick="Button2_Click" CssClass="btn btn-info" Font-Bold="True" />
                   </td>
                   
               </tr>
           </table>
            </asp:Panel>
        
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</asp:Content>

