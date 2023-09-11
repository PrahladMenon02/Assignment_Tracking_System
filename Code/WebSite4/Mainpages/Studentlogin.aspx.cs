using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Mainpages_Studentlogin : System.Web.UI.Page

{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select UserName,Password from tbltstudent  where UserName=@UserName and Password=@Password ", con);
        cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        int i = cmd.ExecuteNonQuery();

        if (dt.Rows.Count > 0)
        {
            Session["ID"] = TextBox1.Text;
            Response.Redirect("~/Student/Default.aspx");
            Session.RemoveAll();
        }
        else
        {
            Response.Write("<script>alert('Invalid Login Details')</script>");
            //Response.Redirect("~/Mainpage/Login.aspx");
            //Label1.Text = "You're username and word is incorrect";
            //Label1.ForeColor = System.Drawing.Color.Red;

        }

        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
