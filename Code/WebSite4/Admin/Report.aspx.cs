using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.IO;
using System.Data.SqlClient;
public partial class Admin_Report : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr; public int FriendId; public int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        if (!IsPostBack)
        {
           
        }
    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "insert into tblreport values(@AssignmentId,@AssignmentName,@Student,@Teacher,@class,@status)";
        cmd = new SqlCommand(str,con);
        cmd.Parameters.AddWithValue("@AssignmentId", TextBox1.Text);
        cmd.Parameters.AddWithValue("@AssignmentName", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Student", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Teacher", TextBox4.Text);
        cmd.Parameters.AddWithValue("@class", TextBox5.Text);
        cmd.Parameters.AddWithValue("@status", TextBox6.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Report Added Successfully')</script>");
        Panel2.Visible = false;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string str = "select AssignmentId from tblreport where AssignmentId='"+TextBox1.Text+"'";
        cmd = new SqlCommand(str, con);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            TextBox7.Visible = true;
            TextBox7.Text = "Report already Done";
        }
        else
        {
            TextBox7.Visible =false;
            TextBox7.Text = "Ok";
        }
    }
}