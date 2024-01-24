using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_Project
{
    public partial class EmpLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=LAPTOP-CL65602K\\SQLEXPRESS;Database=Capstone;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("Select * from EmpInfo where EmailId = @emailid and Passcode = @password", con);
            cmd.Parameters.AddWithValue("@emailid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "EmpInfo");
            if (ds.Tables["EmpInfo"].Rows.Count == 0)
            {
                Response.Write("Invalid user");
            }
            else
            {
                Response.Redirect("Blog.aspx");
            }
        }
    }
}
