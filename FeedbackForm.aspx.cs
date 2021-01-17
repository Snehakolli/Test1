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
public partial class FeedbackForm : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Server.Transfer("Default.aspx");
        string s = TextBox1.Text;
           obj.executequery("insert into Feedback values('"+s+"')");
       RegisterStartupScript("s", "<script>alert('Added Succesfully..')</script>");
        clear();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
       // RegisterStartupScript("s", "<script>alert('Grid View displayed..')</script>");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        DataSet ds = obj.getDataset("Select * from Feedback");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    public void clear()
    {
        TextBox1.Text = "";
    }
}