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
public partial class Mainpages_Contact : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr; public int FriendId; public int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        if (IsPostBack)
        {
            display();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
               string filename = Label1.Text;
                Response.ContentType = ".txt";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");
                Response.TransmitFile(filename);
                Response.End();
            }
    public void display()
    {
        cmd = new SqlCommand("select Holidays from tblholidays", con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label1.Text = (dr["Holidays"].ToString());
        }
        }
    }
