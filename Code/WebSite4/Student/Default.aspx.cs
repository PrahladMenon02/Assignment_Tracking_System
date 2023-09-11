using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Student_Default : System.Web.UI.Page
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
        string get = "select * from tblsturemainder where Username='" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(get, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
           
         Label1.Text = (dr["Remaindermsges"].ToString());

        }

    }
}