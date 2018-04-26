using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        AddNewData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
        public void AddNewData()
        {
            DataTable dt = new DataTable();

            if (Session["myDatatable"] != null)
            {
                dt = (DataTable)Session["myDatatable"];
            }
            else
            {
                
                dt.Columns.Add("MobileNumber");
                dt.Columns.Add("Address");
                dt.Columns.Add("Age");
                dt.Columns.Add("Birthday");
                dt.Columns.Add("FirstName");
                dt.Columns.Add("LastName");
                dt.Columns.Add("ID");
            }

            DataRow drow = dt.NewRow();

           
            drow["ID"] = this.TextBox1.Text.ToString();
            drow["LastName"] = this.TextBox2.Text.ToString();
            drow["FirstName"] = this.TextBox4.Text.ToString();
            drow["Birthday"] = this.TextBox6.Text.ToString();
            drow["Age"] = this.TextBox8.Text.ToString();
            drow["Address"] = this.TextBox10.Text.ToString();
            drow["MobileNumber"] = this.TextBox12.Text.ToString();

            dt.Rows.Add(drow);

            Session["myDatatable"] = dt;
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox4.Text = "";
            this.TextBox6.Text = "";
            this.TextBox8.Text = "";
            this.TextBox10.Text = "";
            this.TextBox12.Text = "";
           
        }

    }
}
