using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Teacher_StudentUploaded : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr; public int FriendId; public int x;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        if (!IsPostBack)
        {
            Display();
        }
    }
    public void Display()
    {
        string get = "select * from tblFileupload where Teacher='" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(get, con);
        dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();

    }


    protected void GridTweets_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DownloadFile")
        {
            x = Convert.ToInt32(e.CommandArgument);
            cmd = new SqlCommand("select * from tblFileupload where AssignmentID=@FileID", con);
            cmd.Parameters.AddWithValue("@FileID", x);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = (dr["StudentWork"].ToString());
                string filename = Label1.Text;
                Response.ContentType = ".txt";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");
                Response.TransmitFile(filename);
                Response.End();
            }
        }
       
    }
}
