using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Admin_Teacher : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = "insert into tblteacher values( @FirstName, @LastName, @Email, @MobileNo, @UserName, @Password, @Gender, @Subject, @Class)";
        cmd = new SqlCommand(msg,con);
        cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
        cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@MobileNo", TextBox4.Text);
        cmd.Parameters.AddWithValue("@UserName", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Subject", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Class", DropDownList2.SelectedItem.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Added Successfully')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }
    public void display()
    {
        cmd = new SqlCommand("Select *from tblteacher", con);
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

        cmd = new SqlCommand("delete FROM tblteacher where ID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
        cmd.ExecuteNonQuery();
        display();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        display();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblID = (Label)row.FindControl("lblID");
        TextBox Email = (TextBox)row.Cells[2].Controls[0];
        TextBox Mobileno = (TextBox)row.Cells[3].Controls[0];
        TextBox Username = (TextBox)row.Cells[4].Controls[0];
        TextBox Password = (TextBox)row.Cells[5].Controls[0];
        TextBox Subject = (TextBox)row.Cells[7].Controls[0];
        TextBox Class = (TextBox)row.Cells[8].Controls[0];
        

        GridView1.EditIndex = -1;


        cmd = new SqlCommand("update tblteacher set Email='" + Email.Text + "',MobileNo='" + Mobileno.Text + "',UserName='" + Username.Text + "',Password='" + Password.Text+ "',Class='" + Class.Text+ "',Subject='" + Subject.Text  + "'where ID='" + userid + "'", con);
        cmd.ExecuteNonQuery();

        display();
    }
}