<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" Height="201px" Font-Bold="true" GroupingText="Holidays">
    <br />
    <br />
    <br />
 <table align="center">
    <tr><td>Name:</td>
        <td><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Width="245px"></asp:TextBox></td>
        <td>Upload Holidays List:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </td>
        
       </tr>
     <tr>
         <td>&nbsp;</td>
     </tr>
     <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       <td>
           <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" CssClass="btn btn-success" />

       </td>
    </tr>
 </table>
    
</asp:Panel>
    </div>
    </form>
</body>
</html>
