using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class product_details : System.Web.UI.Page

{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {  

            if (Request.QueryString["id"] != null)
            {
            cn = new SqlConnection(@"Data Source=DESKTOP-PU165U4;Initial Catalog=project2;Integrated Security=True");
            string iid = Request.QueryString["id"];

            cn.Open();
            SqlCommand name1 = new SqlCommand("select product_name from products where product_id = '"+ iid +"'", cn);
            SqlCommand idd = new SqlCommand("select product_id from products where product_id = '" + iid + "'", cn);
            SqlCommand price = new SqlCommand("select price from products where product_id = '" + iid + "'", cn);
            SqlCommand cat = new SqlCommand("select category from products where product_id = '" + iid + "'", cn);
            SqlCommand name2 = new SqlCommand("select d_name from products where product_id = '" + iid + "'", cn);
            SqlCommand image1 = new SqlCommand("select pimage from products where product_id = '" + iid + "'", cn);
            SqlCommand iamge2 = new SqlCommand("select detail_image from products where product_id = '" + iid + "'", cn);
            SqlCommand origin = new SqlCommand("select origin from products where product_id = '" + iid + "'", cn);
            SqlCommand brand = new SqlCommand("select brand from products where product_id = '" + iid + "'", cn);
            SqlCommand flavor = new SqlCommand("select flavor from products where product_id = '" + iid + "'", cn);
            SqlCommand format = new SqlCommand("select formation from products where product_id = '" + iid + "'", cn);
            SqlCommand serve = new SqlCommand("select servings from products where product_id = '" + iid + "'", cn);
            SqlCommand weight = new SqlCommand("select p_weight from products where product_id = '" + iid + "'", cn);
            SqlCommand expire = new SqlCommand("select expire from products where product_id = '" + iid + "'", cn);
            SqlCommand description = new SqlCommand("select p_description from products where product_id = '" + iid + "'", cn);

            Title.Text = name1.ExecuteScalar().ToString();    
            pImage.ImageUrl = image1.ExecuteScalar().ToString();
            D_Image.ImageUrl = iamge2.ExecuteScalar().ToString();
            name_d.Text = name2.ExecuteScalar().ToString();
            price_label.Text = price.ExecuteScalar().ToString();
            ID_label.Text = idd.ExecuteScalar().ToString();
            c_label.Text = cat.ExecuteScalar().ToString();
            description_label.Text = description.ExecuteScalar().ToString();
            origin_label.Text = origin.ExecuteScalar().ToString();
            brand_label.Text = brand.ExecuteScalar().ToString();
            falvor_label.Text = flavor.ExecuteScalar().ToString();
            format_label.Text = format.ExecuteScalar().ToString();
            serving_label.Text = serve.ExecuteScalar().ToString();
            weight_label.Text = weight.ExecuteScalar().ToString();
            expire_label.Text = expire.ExecuteScalar().ToString();
            review_name.Text = name2.ExecuteScalar().ToString();


            cn.Close();
            }

           else if (Request.QueryString["id"] == null)
            {
                Response.Redirect("HomePage.aspx");
            }             
    }

    // shopping cart
    protected void cart_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable tbl;
            if (Session["cart"] == null)
            {
                tbl = new DataTable();
                tbl.Columns.Add("proId");
                tbl.Columns.Add("proName");
                tbl.Columns.Add("proimage");
                tbl.Columns.Add("price");
                tbl.Columns.Add("Quantity");
                tbl.Columns.Add("total");

                DataColumn[] cols = { tbl.Columns[0], tbl.Columns[1] };
                tbl.Constraints.Add("cart_PK", cols, true);
            }
            else
                tbl = (DataTable)Session["cart"];

            DataRow row = tbl.NewRow();
            row[0] = ID_label.Text;
            row[1] = Title.Text;
            row[2] = pImage.ImageUrl;
            row[3] = price_label.Text;
            row[4] = DropDownList1.SelectedValue;
            row[5] = Convert.ToInt32(DropDownList1.SelectedValue) * Convert.ToDouble(price_label.Text);
            tbl.Rows.Add(row);

            Session["cart"] = tbl;

            Response.Redirect("cart.aspx");
        }
        catch (ConstraintException ex){
            if (ex.Message.Contains("UniqueConstraint")) ;
            Response.Write("<script>alert('this product has already been added in your cart')</script>");
        }
    }

    // customer's review
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=DESKTOP-PU165U4;Initial Catalog=project2;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into review (name,email,review,id) values('" + tname.Text + "', '" + temail.Text + "', '" + message.Text + "' , '" + ID_label.Text + "')", cn);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
       // Response.Write("<script>alert('success')</script>");
        tname.Text = temail.Text = message.Text = review_name.Text = null;
        cn.Close();
    }

    // wish list
    protected void wishlist_Click(object sender, EventArgs e)
    {
        try { 
            DataTable tbl2;
            if (Session["wish"] == null)
            {
                tbl2 = new DataTable();
                tbl2.Columns.Add("proId");
                tbl2.Columns.Add("proName");
                tbl2.Columns.Add("proimage");
                tbl2.Columns.Add("price");

                DataColumn[] cols = { tbl2.Columns[0], tbl2.Columns[1] };
                tbl2.Constraints.Add("wish_PK", cols, true);
            }
            else
                tbl2 = (DataTable)Session["wish"];

            DataRow row = tbl2.NewRow();
            row[0] = ID_label.Text;
            row[1] = Title.Text;
            row[2] = pImage.ImageUrl;
            row[3] = price_label.Text;
            tbl2.Rows.Add(row);

            Session["wish"] = tbl2;

            heart.ImageUrl = "http://localhost:58645/redheart.png";
            //Response.Redirect("WishList.aspx");

        }
         catch(ConstraintException ee)
        {
            if (ee.Message.Contains("UniqueConstraint")) ;
            Response.Write("<script>alert('this product has already been added in your wish list')</script>");

        }




    }
}