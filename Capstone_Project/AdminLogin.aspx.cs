using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Capstone_Project
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=LAPTOP-CL65602K\\SQLEXPRESS;Database=Capstone;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("Select * from AdminInfo where EmailId = @mailid and Password = @password", con);
            cmd.Parameters.AddWithValue("@mailid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "AdminInfo");
            if (ds.Tables["AdminInfo"].Rows.Count == 0)
            {
                Response.Write("Invalid user");
            }
            else
            {
                Response.Redirect("Emp.aspx");
            }
        }
    }
}

