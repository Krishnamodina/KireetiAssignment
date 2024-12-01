using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myproject
{
    public partial class Own : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userID"]!=null)
            {
                lblWelcome.Visible = true;
                lblWelcome.Text = "Hi " + Session["userID"].ToString();
            }
        }

        private int Add(int num1,int num2)
        {
            return  num1 + num2;
        }
        private int Add(int num1,int num2,int num3)
        {
            return num1 + num2 + num3;
        }
        protected void btnSumofN1plusN2_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtNumber1.Text) &&!string.IsNullOrWhiteSpace( txtNumber2.Text)&&!string.IsNullOrWhiteSpace(txtNumber3.Text))
            {
                int num1 =int.Parse(txtNumber1.Text);
                int num2 = int.Parse(txtNumber2.Text);
                int result = Add(num1, num2);
                txtSumofN1plusN2.Text =result.ToString();
            }
        }

        protected void btnSumofN1plusN2plusN3_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace( txtNumber1.Text) && !string.IsNullOrWhiteSpace(txtNumber2.Text)&& !string.IsNullOrWhiteSpace(txtNumber3.Text))
            {
                int num1 = int.Parse(txtNumber1.Text);
                int num2 = int.Parse(txtNumber2.Text);
                int num3 = int.Parse(txtNumber3.Text);
                int result = Add(num1, num2, num3);
                txtSumofN1plusN2plusN3.Text = result.ToString();
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogOut.aspx");
        }
    }
    
}