using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Teacher_Viewprofile : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        if (!IsPostBack)
        {
            display();
        }
    }
    public void display()
    {
        string get = "select * from tblteacher where UserName='"+Session["ID"].ToString()+"'";
        cmd = new SqlCommand(get,con);
        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            TextBox1.Text = (dr["FirstName"].ToString());
            TextBox2.Text = (dr["LastName"].ToString());
            TextBox3.Text = (dr["Email"].ToString());
            TextBox4.Text = (dr["MobileNo"].ToString());
            TextBox5.Text = (dr["Gender"].ToString());
            TextBox8.Text = (dr["Subject"].ToString());
            TextBox6.Text = (dr["Class"].ToString());
        }

    }
    
}