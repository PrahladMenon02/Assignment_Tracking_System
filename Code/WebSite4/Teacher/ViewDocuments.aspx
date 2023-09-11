<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.master" AutoEventWireup="true" CodeFile="ViewDocuments.aspx.cs" Inherits="Teacher_ViewDocuments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="../css/bootstrap.min.css" rel="stylesheet" />
      <style type="text/css">
          .auto-style1 {
              display: block;
              width: 100%;
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
          .auto-style2 {
              display: block;
              font-size: 14px;
              line-height: 1.42857143;
              color: #555;
              border-radius: 4px;
              -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
              box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
              -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
              -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
              transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
              border: 1px solid #ccc;
              padding: 6px 12px;
              background-color: #fff;
              background-image: none;
          }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table>
        <tr>
            <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td> <td>&nbsp; </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server" GroupingText="Assignment Details" CssClass="auto-style2" Width="1073px">
                        <table>
                            <tr>
                                <td>

                            
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Height="204px" Width="1042px" HeaderStyle-BackColor="#cc6699"  OnRowCommand="GridTweets_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="AssignmentID" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true">
                <ItemTemplate>
                   <asp:Label ID="lblEventID" runat="server" Text='<%#Eval("AssignmentID")%>'  />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="FileData" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true">
                <ItemTemplate>
                   <asp:Label ID="lblTweetName" runat="server" Text='<%#Eval("Filedata")%>'  />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Startdate" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true">
                <ItemTemplate>
                   <asp:Label ID="lblTweetBy" runat="server" Text='<%#Eval("Startdate")%>' />
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Enddate" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true">
                <ItemTemplate>
                   <asp:Label ID="lblPostedDate" runat="server" Text='<%#Eval("Enddate")%>' />
                </ItemTemplate>
            </asp:TemplateField>
          <asp:TemplateField HeaderText="class" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true">
                <ItemTemplate>
                   <asp:Label ID="lblclass" runat="server" Text='<%#Eval("class")%>' />
                </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="Teacher" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true">
                <ItemTemplate>
                   <asp:Label ID="lblteacher" runat="server" Text='<%#Eval("Teacher")%>' />
                </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="Student" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true">
                <ItemTemplate>
                   <asp:Label ID="lblstudent" runat="server" Text='<%#Eval("Student")%>' />
                </ItemTemplate>
            </asp:TemplateField>
           
                  <asp:TemplateField HeaderText="Comments" HeaderStyle-ForeColor="#cc3300" HeaderStyle-Font-Bold="true"  >
                <ItemTemplate>
             <asp:LinkButton ID="lnkComments" runat="server" Text="Download" CommandName="DownloadFile" CommandArgument='<%#Eval("AssignmentID") %>'/>
                &nbsp;    <asp:LinkButton ID="LinkButton1" runat="server" Text="GuideLines" CommandName="Uploaddgudelines" CommandArgument='<%#Eval("AssignmentID") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
           
        </Columns>
     <HeaderStyle BackColor="White" />
    </asp:GridView>
                                        </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            
           
        </tr>
    </table>
    <br />
    <br/>

   
    <asp:Panel ID="Panel2" runat="server" Font-Bold="true" Visible="false" HorizontalAlign="center">
        <table align="center">
            <tr>
                <td>Upload Guidelines/Resources:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-info" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
   
<asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
</asp:Content>

