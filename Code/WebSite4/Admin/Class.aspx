<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Class.aspx.cs" Inherits="Admin_Class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 418px;
        }
        .auto-style3 {
            width: 895px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
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
            </td><td>
            &nbsp;
            </td><td>
            &nbsp;
            </td>
        <td>

           
    <asp:Panel ID="Panel1" runat="server" Height="719px" Width="1218px" Font-Bold="true" GroupingText="Add Class">
        <table class="auto-style1">
            <tr>
                <td>Class Name:</td>
                <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
               </td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                  <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-success" Font-Bold="true" OnClick="Button1_Click" Width="171px"  />
                </td>
            </tr>
            
        </table>
        <asp:Panel ID="Panel2" runat="server" GroupingText="Edit Details" Font-Bold="true">

        <table align="Center">
                        <tr>
                            <td>
                   <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="Id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="380px">  
                    <Columns>  
                        <asp:BoundField DataField="Classname" HeaderText="ClassName" />  
                        <asp:BoundField DataField="Description" HeaderText="Desciption" />  
                        
                        <asp:CommandField ShowEditButton="true" CausesValidation="false"  />  
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
                </asp:GridView>  
                             </td>
                        </tr>
                    </table>
    </asp:Panel>
         <asp:Panel ID="Panel3" runat="server" Font-Bold="true">
             <iframe src="../Default3.aspx" height="300" class="auto-style3"></iframe>
         </asp:Panel>
        </asp:Panel>
                 </td>
        </tr>
    </table>
    
</asp:Content>

