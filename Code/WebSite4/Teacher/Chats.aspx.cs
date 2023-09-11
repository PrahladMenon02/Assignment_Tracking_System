using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
public partial class Teacher_Chats : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        if(IsPostBack)
        {

        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        string get = "select * from tblFileupload where AssignmentID='" + TextBox4.Text + "'";
        cmd = new SqlCommand(get, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = (dr["AssignName"].ToString());
            TextBox2.Text = (dr["Startdate"].ToString());
            TextBox3.Text = (dr["Enddate"].ToString());
            TextBox5.Text = (dr["class"].ToString());
            TextBox6.Text = (dr["Teacher"].ToString());
            TextBox7.Text = (dr["Student"].ToString());
         }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string update = "update tblFileupload set Startdate=@Startdate,Enddate=@Enddate where AssignmentID=@AssignmentID";
        cmd = new SqlCommand(update, con);
       
        cmd.Parameters.AddWithValue("@Startdate", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Enddate", TextBox3.Text);
        cmd.Parameters.AddWithValue("@AssignmentID", TextBox4.Text);
        cmd.ExecuteScalar();
        Response.Write("<script>alert('Updated Succesfully')</script>");
    }
}