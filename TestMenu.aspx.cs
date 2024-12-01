using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myproject
{
    public partial class TestMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userID"] !=null)
            {
                lblWelcome.Visible = true;
                lblWelcome.Text = "Hi " + Session["userID"].ToString();
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogOut.aspx");
        }
    }
}