using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mainpages_Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text=="Admin" && TextBox2.Text=="Admin")
        {
            Response.Redirect("~/Admin/Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Credentails')</script>");
        }
    }
}