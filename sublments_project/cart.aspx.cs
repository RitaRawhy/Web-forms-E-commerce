using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            shoppingcart();
        }
    }
    private void shoppingcart()
    {
        GridView1.DataSource = (DataTable)Session["cart"];
        GridView1.DataBind();

        double total = 0;
        int i = 0;
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            total += Convert.ToDouble(GridView1.Rows[i].Cells[5].Text);
            lbltotal.Text = total.ToString();
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable tbl;
        if (Session["cart"] != null)
        {
            tbl = (DataTable)Session["cart"];
            string[] PK = { GridView1.Rows[e.RowIndex].Cells[0].Text, GridView1.Rows[e.RowIndex].Cells[1].Text };
            DataRow row = tbl.Rows.Find(PK);
            
            if(row != null)
            {
                row.Delete();
                Session["cart"] = tbl;
                shoppingcart();
            }

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        shoppingcart();
        DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        shoppingcart();
        DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox newquantity = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        if (Session["cart"] !=null)
        {
            DataTable tbl = (DataTable)Session["cart"];
            string[] PK = { GridView1.Rows[e.RowIndex].Cells[0].Text, GridView1.Rows[e.RowIndex].Cells[1].Text };
            DataRow row = tbl.Rows.Find(PK);
            row[4] = newquantity.Text;

            row[5] =Convert.ToInt32(newquantity.Text) * Convert.ToDouble(row[3]);

            Session["cart"] = tbl;
            shoppingcart();
            GridView1.EditIndex = -1;
            DataBind();
        }
    }
}