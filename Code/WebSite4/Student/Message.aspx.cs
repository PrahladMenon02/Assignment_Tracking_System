using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Student_Upload : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["School"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr; public int FriendId; public int x;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
}