using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using sample1;
public partial class Adminbooks : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        DataSet ds = obj.getDataset("Select * from books");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    public void clear()
    {
        txtid.Text = "  ";
        txtbook.Text = " ";
        txtauthor.Text = "";
        txtedition.Text = "";
        txtstatus.Text = "";
        txtdepartment.Text = "";
    }
    protected void btnadddd_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtbook.Text) || (string.IsNullOrEmpty(txtid.Text)) || (string.IsNullOrEmpty(txtauthor.Text)) || (string.IsNullOrEmpty(txtedition.Text)) || (string.IsNullOrEmpty(txtstatus.Text)) || (string.IsNullOrEmpty(txtdepartment.Text)))
        {
            ErrorLabel.Text = "Please Enter all the Fields";
        }
        else
        {
            int s = Convert.ToInt32(txtid.Text);
            string s1 = txtbook.Text.ToString();
            string s2 = txtauthor.Text.ToString();
            string s3 = txtedition.Text.ToString();
            string s4 = txtstatus.Text.ToString();
            string s5 = txtdepartment.Text.ToString();
            obj.executequery("insert into books(BId,Bname,Authors,Edition,status,department) values('" + s + "','" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "')");
            RegisterStartupScript("s", "<script>alert('Book Added Succesfully..')</script>");
            clear();
        }
    }
   
    protected void btndeleteee_Click(object sender, EventArgs e)
    {
        int z = Convert.ToInt32(txtiddelete.Text);
        obj.executequery("delete from books where BId='"+z+"'");
        RegisterStartupScript("s", "<script>alert('Deleted Succesfully..')</script>");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void imgebtnsearch_Click(object sender, ImageClickEventArgs e)
    {
        DataSet ds1 = obj.getDataset("select * from books where BId like '%"+txtsearch.Text+ "%' Or Bname like '%" + txtsearch.Text + "%' Or Authors like '%" + txtsearch.Text + "%' Or status like '%" + txtsearch.Text + "%' Or department like '%" + txtsearch.Text + "%' Or edition like '%" + txtsearch.Text + "%'");
        GridView2.DataSource = ds1;
        GridView2.DataBind();
    }

    protected void txtviewsearch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButtonviewsearch_Click(object sender, ImageClickEventArgs e)
    {
        DataSet ds1 = obj.getDataset("select * from books where BId like '%" + txtviewsearch.Text + "%' Or Bname like '%" + txtviewsearch.Text + "%' Or Authors like '%" + txtviewsearch.Text + "%' Or status like '%" + txtviewsearch.Text + "%' Or department like '%" + txtviewsearch.Text + "%' Or edition like '%" + txtviewsearch.Text + "%'");
        GridView1.DataSource = ds1;
        GridView1.DataBind();
    }
}