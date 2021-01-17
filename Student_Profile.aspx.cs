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
public partial class Student_Profile : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   

    protected void Button12_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        // string s = Session[];
      //  DataSet ds = obj.getDataset("Select * from students where rollno ="+s+"");
        DataSet ds = obj.getDataset("Select * from students where username ='dinesh@1'");
        lblnamef.Text = ds.Tables[0].Rows[0][0].ToString();
        lblNameL.Text = ds.Tables[0].Rows[0][1].ToString();
        lblUname.Text = ds.Tables[0].Rows[0][2].ToString();
        lblroll.Text = ds.Tables[0].Rows[0][4].ToString();
        lblmail.Text = ds.Tables[0].Rows[0][5].ToString();
        lblContact.Text = ds.Tables[0].Rows[0][6].ToString();
        //int s = 2;
        //string str = "Select Fname from students where rollno ="+s+"";
        //DataSet ds = obj.getDataset(str);
        //DataRow dr = ds.Tables[0].Rows[0];
        //lblnamef.Text = dr["Fname"].ToString();
        //string str1 = "Select Lname from students where rollno =2";
        //DataSet ds1 = obj.getDataset(str1);
        //DataRow dr1 = ds1.Tables[0].Rows[0];
        //lblNameL.Text= dr1["Lname"].ToString();
        //string str2 = "Select username from students where rollno =2";
        //DataSet ds2 = obj.getDataset(str2);
        //DataRow dr2 = ds2.Tables[0].Rows[0];
        //lblUname.Text = dr2["username"].ToString();
        //string str3 = "Select rollno from students where rollno =2";
        //DataSet ds3 = obj.getDataset(str3);
        //DataRow dr3 = ds3.Tables[0].Rows[0];
        //lblroll.Text = dr3["rollno"].ToString();
        //string str4 = "Select email from students where rollno =2";
        //DataSet ds4 = obj.getDataset(str4);
        //DataRow dr4 = ds4.Tables[0].Rows[0];
        //lblmail.Text = dr4["email"].ToString();
        //string str5 = "Select contact from students where rollno =2";
        //DataSet ds5 = obj.getDataset(str5);
        //DataRow dr5 = ds5.Tables[0].Rows[0];
        //lblContact.Text = dr5["contact"].ToString();
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        // string s = Session[];
        //  DataSet ds = obj.getDataset("Select * from students where rollno ="+s+"");
        DataSet ds = obj.getDataset("Select * from students where username = 'dinesh@1'");
        txteditnameF.Text = ds.Tables[0].Rows[0][0].ToString();
        txteditnameL.Text = ds.Tables[0].Rows[0][1].ToString();
     //   txteditUsername.Text = ds.Tables[0].Rows[0][2].ToString();
      txteditRoll.Text = ds.Tables[0].Rows[0][4].ToString();
        txteditEmail.Text = ds.Tables[0].Rows[0][5].ToString();
        txteditContact.Text = ds.Tables[0].Rows[0][6].ToString();
      
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
       
    }

   

    protected void Button14_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        string s = txteditnameF.Text.ToString();
        string s1 = txteditnameL.Text.ToString();
       int s2 = Convert.ToInt16(txteditRoll.Text);
        string s3 = txteditEmail.Text;
        string s4 = txteditContact.Text;
        obj.executequery("update students set Fname='"+s+"',Lname='"+s1+"' ,rollno='"+s2+"',email='"+s3+"',contact='"+s4+"' where username ='dinesh@1' ");
        RegisterStartupScript("s", "<script>alert('Updated Succesfully..')</script>");
    }


    protected void btnsubmitnewpass_Click(object sender, EventArgs e)
    {
        if(txtnewpass.Text==txtconfirmnewpass.Text)
        {
            string s = txtnewpass.Text;
            obj.executequery("update students set password='"+s+"' where username='dinesh@1'");
            RegisterStartupScript("s", "<script>alert('Password changed Succesfully!!')</script>");
            
        }
        else
        {
            txtconfirmnewpass.Focus();
        }
    }
}