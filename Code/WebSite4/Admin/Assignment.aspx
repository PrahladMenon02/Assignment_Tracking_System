<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Assignment.aspx.cs" Inherits="Admin_Assignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 390px;
        }
        .auto-style3 {
            width: 889px;
        }
        .auto-style4 {
            width: 915px;
            height: 59px;
        }
        .auto-style5 {
            width: 442px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" CausesValidation="False">Add  Remainder</asp:LinkButton>
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    <table>
        <tr><td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Panel ID="Panel3" runat="server">
                    <table class="auto-style3">
                        <tr>
                             <td>
                <asp:Button ID="Button4" runat="server" Text="Download File" CssClass="btn-primary"  CausesValidation="false" OnClick="Button4_Click" Visible="false"/>
            </td>
            <td>
                <asp:Label ID="lblclass" runat="server" Text="Label" Visible="False"></asp:Label>
            </td><td>&nbsp;</td><td>
                <asp:Label ID="lblteacher" runat="server" Text="Label" Visible="False"></asp:Label>
            </td><td>&nbsp;</td><td>
                <asp:Label ID="lblstudent" runat="server" Text="Label" Visible="False"></asp:Label>
            </td><td>&nbsp;</td><td>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
                        </tr>
                    </table>
                </asp:Panel>
           
    <asp:Panel ID="Panel1" runat="server" GroupingText="File Uplaod" Font-Bold="true" Height="758px" Width="1092px">
        <table class="auto-style4">
        <tr>
          <td>
              Enter Assignment ID:
          </td><td>
              
              <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                
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
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
            
           
        </tr>

            <tr>
                <td>&nbsp;</td>
            </tr>
        
            <tr>
                <td>Upload File:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="FileUpload1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
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
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
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
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
            </tr>
        <tr>
                <td>&nbsp;</td>
            </tr>
        <tr>
            <td>Select Class:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Classname" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectmanagementsystemConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [tblclass]"></asp:SqlDataSource>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
                <td>&nbsp;</td>
            </tr>
        <tr>
            <td>Assign Teacher</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
                <td>&nbsp;</td>
            </tr>
       <tr>
            <td>Assign Student:</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control"></asp:DropDownList>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="DropDownList3" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr><tr>
                <td>&nbsp;</td>
            </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-info" OnClick="Button1_Click" Font-Bold="True" Width="160px"/>

            </td>
           
            <td>
                 <asp:Button ID="Button3" runat="server" Text="Update" CssClass="btn-info" OnClick="Button3_Click" Visible="false" Font-Bold="True" Width="160px" />
            </td>
            
        </tr>
    </table>
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" GroupingText="Edit details" Font-Bold="true" Width="915px">
                  
                     <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="AssignmentID" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="533px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">  
                    <Columns>  
                         <asp:BoundField DataField="AssignmentID" HeaderText="AssignmentID" />
                        <asp:BoundField DataField="AssignName" HeaderText="AssignName" />  
                        <asp:BoundField DataField="Filedata" HeaderText="Filedata" />  
                                       <asp:BoundField DataField="Startdate" HeaderText="Startdate" /> 
                                       <asp:BoundField DataField="Enddate" HeaderText="Enddate" /> 
                                       <asp:BoundField DataField="class" HeaderText="class" /> 
                                       <asp:BoundField DataField="Teacher" HeaderText="Teacher" /> 
                                       <asp:BoundField DataField="Student" HeaderText="Student" /> 
                                       <asp:BoundField DataField="Uploadeddate" HeaderText="Uploadeddate" /> 
                       <%-- <asp:CommandField ShowEditButton="true" CausesValidation="false"  />--%>  
                        <asp:CommandField ShowDeleteButton="true" CausesValidation="false" /> </Columns>  
                       <FooterStyle BackColor="White" ForeColor="#000066" />
                       <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                       <RowStyle ForeColor="#000066" />
                       <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#007DBB" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>  </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
                            
                 </td>
        </tr>
    </table>
   <asp:TextBox ID="TextBox5" runat="server" Visible="false"></asp:TextBox>
    <div align="center">
        <asp:Panel ID="Panel4" runat="server" Font-Bold="True" Visible="false">
            <table class="auto-style5">
                <tr>
                    <td>
                        Remainder Message:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="TextBox6" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Student Name:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="TextBox7" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Send"  CssClass="btn btn-info" Font-Bold="True" OnClick="Button5_Click"/>
                    </td>
                </tr>
                
            </table>
        </asp:Panel>
    </div>
          
</asp:Content>

