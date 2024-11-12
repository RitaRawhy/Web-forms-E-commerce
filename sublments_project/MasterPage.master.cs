using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=DESKTOP-PU165U4;Initial Catalog=project2;Integrated Security=True");
    }
    // registration
     protected void Unnamed5_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into register (first_name,last_name,address,phone,email,password) values('" + first_name.Text + "', '" + last_name.Text + "', '" + address.Text + "', '" + phone.Text + "', '" + email.Text + "', '" + password.Text + "')", cn);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery(); // excute without return data from database
        Response.Write("<script>alert('success')</script>");
        first_name.Text = last_name.Text = address.Text = phone.Text = email.Text = password.Text = null;
        cn.Close();

    }
    //log in 
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cm = new SqlCommand("select * from[register] where email = '" + Logemail.Text + "' and  password = '" + LogPass.Text + "'", cn);
        SqlDataReader sdr = cm.ExecuteReader();
        sdr.Read();
        if (sdr.HasRows == true)
        {
            Response.Write("<script>alert('success')</script>");
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            Response.Write("<script>alert('Email or password wrong')</script>");
        }
        cn.Close();
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btsearh_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx?Text=" + TextBox1.Text);
    }


}
