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
    public partial class EmpCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=LAPTOP-CL65602K\\SQLEXPRESS;Database=Capstone;Trusted_Connection=True");

            SqlCommand cmd = new SqlCommand("insert into EmpInfo(EmailId,Name,DateOfJoining,Passcode) values(@emailid,@name,@doj,@passcode)", con);
            cmd.Parameters.AddWithValue("@emailid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@doj", TextBox3.Text);
            cmd.Parameters.AddWithValue("@passcode", TextBox4.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "EmpInfo");
            Response.Redirect("Emp.aspx");
        }
    }
}