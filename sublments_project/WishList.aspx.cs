using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WishList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grd_wishlist.DataSource = (DataTable)Session["wish"];
        grd_wishlist.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable tbl;
        if (Session["wish"] != null)
        {
            tbl = (DataTable)Session["wish"];
            string[] PK = { grd_wishlist.Rows[e.RowIndex].Cells[0].Text, grd_wishlist.Rows[e.RowIndex].Cells[1].Text };
            DataRow row = tbl.Rows.Find(PK);

            if (row != null)
            {
                row.Delete();
                Session["wish"] = tbl;
                Page_Load(null,null);
            }

        }
    }
}