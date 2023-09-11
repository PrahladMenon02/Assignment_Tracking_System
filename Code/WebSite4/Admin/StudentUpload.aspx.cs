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

public partial class Admin_StudentUpload : System.Web.UI.Page
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
            Display();
        }
    }
    public void Display()
    {
        string get = "select * from tblFileupload Where status='Unaccepted'";
        cmd = new SqlCommand(get, con);
        dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();

    }


    protected void GridTweets_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DownloadFile")
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            x = Convert.ToInt32(e.CommandArgument);
            cmd = new SqlCommand("select * from tblFileupload where AssignmentID=@FileID", con);
            cmd.Parameters.AddWithValue("@FileID", x);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = (dr["StudentWork"].ToString());
                Label3.Text = (dr["AssignmentID"].ToString());
                string filename = Label1.Text;
                Response.ContentType = ".txt";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");
                Response.TransmitFile(filename);
                Response.End();
            }
        }
        if(e.CommandName== "Send")
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        if(e.CommandName== "Status")
            {
            Panel3.Visible = true;
            Panel2.Visible = false;
            x = Convert.ToInt32(e.CommandArgument);
            cmd = new SqlCommand("select * from tblFileupload where AssignmentID=@FileID", con);
            cmd.Parameters.AddWithValue("@FileID", x);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = (dr["StudentWork"].ToString());
                Label3.Text = (dr["AssignmentID"].ToString());
                
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string add = "insert into TBLSTUDENTMSGES values(@StudentName,@Description,@SentBY)";
        cmd = new SqlCommand(add,con);
        cmd.Parameters.AddWithValue("@StudentName", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Description", TextBox2.Text);
        cmd.Parameters.AddWithValue("@SentBY", Label2.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Sent Successfully')</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string s1 = "update tblFileupload set Status=@Status,ProjectCompletedDate=@ProjectCompletedDate where AssignmentID=@AssignmentID ";
        cmd = new SqlCommand(s1,con);
        cmd.Parameters.AddWithValue("@Status",TextBox3.Text);
        cmd.Parameters.AddWithValue("@ProjectCompletedDate",TextBox4.Text);
        cmd.Parameters.AddWithValue("@AssignmentID", Label3.Text);
        cmd.ExecuteScalar();
        Response.Write("<script>alert('Status Updated')</script>");
    }
}