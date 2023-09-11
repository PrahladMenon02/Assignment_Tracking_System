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

public partial class Admin_Assignment : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        Label1.Text = System.DateTime.Now.ToString();
        if (!IsPostBack)
        {
            display();
        }
    }



    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        display();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        display();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");

        cmd = new SqlCommand("delete FROM tblFileupload where AssignmentID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
        cmd.ExecuteNonQuery();
        display();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        display();
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        displayteacher();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        if (FileUpload1.HasFile)
        {

            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/AdminuploadFiles/") + FileName);
            string msg = "insert into tblFileupload(AssignName,Filedata,Startdate,Enddate,class,Teacher,Student,Uploadeddate) values(@AssignName,@Filedata,@Startdate,@Enddate,@class,@Teacher,@Student,@Uploadeddate)";
            cmd = new SqlCommand(msg, con);
            cmd.Parameters.AddWithValue("@AssignName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Filedata", "~/AdminuploadFiles/" + FileName);
            cmd.Parameters.AddWithValue("@Startdate", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Enddate", TextBox3.Text);
            cmd.Parameters.AddWithValue("@class", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Teacher", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Student", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Uploadeddate", Label1.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('File Uploaded Successfully')</script>");
            TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = "";
        }
    }
    public void displayteacher()
    {
        string teacher = "select * from tblteacher where Class='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(teacher, con);
        dr = cmd.ExecuteReader();
        DropDownList2.DataSource = dr;
        DropDownList2.DataTextField = "FirstName";
        DropDownList2.DataValueField = "ID";
        DropDownList2.DataBind();
        dr.Close();
        string student = "select * from tbltstudent where Class='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(student, con);
        dr = cmd.ExecuteReader();
        DropDownList3.DataSource = dr;
        DropDownList3.DataTextField = "FirstName";
        DropDownList3.DataValueField = "ID";
        DropDownList3.DataBind();
        dr.Close();
    }
    public void display()
    {
        cmd = new SqlCommand("Select *from tblFileupload", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button4.Visible = true;
        Button1.Visible = false;
        Button3.Visible = true;
        string get = "select * from tblFileupload where AssignmentID='" + TextBox4.Text + "'";
        cmd = new SqlCommand(get, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = (dr["AssignName"].ToString());
            TextBox2.Text = (dr["Startdate"].ToString());
            TextBox3.Text = (dr["Enddate"].ToString());
            lblteacher.Visible = true;
            lblteacher.Text = ("Teacher Is:" + dr["Teacher"].ToString());
            lblclass.Visible = true;
            lblclass.Text = ("Class is:" + dr["class"].ToString());
            lblstudent.Visible = true;
            lblstudent.Text = ("Student is:" + dr["Student"].ToString());
            Label2.Text = (dr["Filedata"].ToString());
           
           
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/AdminuploadFiles/") + FileName);
            string update = "update tblFileupload set AssignName=@AssignName,Startdate=@Startdate,Enddate=@Enddate,Teacher=@Teacher,class=@class,Student=@Student";
            cmd = new SqlCommand(update, con);
            cmd.Parameters.AddWithValue("@AssignName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Filedata", "~/AdminuploadFiles/" + FileName);
            cmd.Parameters.AddWithValue("@Startdate", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Enddate", TextBox3.Text);
            cmd.Parameters.AddWithValue("@class", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Teacher", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Student", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Uploadeddate", Label1.Text);
            cmd.ExecuteScalar();
            Response.Write("<script>alert('Updated Succesfully')</script>");
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string filename = Label2.Text;
        Response.ContentType = ".txt";
        Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");

        Response.TransmitFile(filename);
        Response.End();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
      
        string msg = "insert into tblsturemainder(Remaindermsges,Username) values(@Remaindermsges,@Username)";
        cmd = new SqlCommand(msg, con);
        cmd.Parameters.AddWithValue("@Remaindermsges", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Username", TextBox7.Text);
       cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Send Successfully')</script>");
        TextBox6.Text = ""; TextBox7.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    }
}