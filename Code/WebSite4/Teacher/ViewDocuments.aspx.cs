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
public partial class Teacher_ViewDocuments : System.Web.UI.Page
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
                Label1.Text = (dr["Filedata"].ToString());
                string filename = Label1.Text;
                Response.ContentType = ".txt";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");
                Response.TransmitFile(filename);
                Response.End();
            }
        }
        if(e.CommandName== "Uploaddgudelines")
        {
            x = Convert.ToInt32(e.CommandArgument);
            cmd = new SqlCommand("select * from tblFileupload where AssignmentID=@FileID", con);
            cmd.Parameters.AddWithValue("@FileID", x);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label2.Text = (dr["TeacherGuidlines"].ToString());
                Label1.Text = (dr["AssignmentID"].ToString());
               
                Panel2.Visible = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/AdminuploadFiles/") + FileName);
            string insert = "update tblFileupload set TeacherGuidlines=@TeacherGuidlines where AssignmentID=@AssignmentID";
            cmd = new SqlCommand(insert,con);
            cmd.Parameters.AddWithValue("@TeacherGuidlines", "~/AdminuploadFiles/" + FileName);
            cmd.Parameters.AddWithValue("@AssignmentID",Label1.Text);
            cmd.ExecuteScalar();
            Response.Write("<script>alert('Guidelines Uploaded')</script>");
            Panel2.Visible = false;
        }
    }
}