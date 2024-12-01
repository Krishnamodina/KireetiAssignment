using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myproject
{
    public partial class lpd : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["constr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userID"]!=null)
            {
                lblWelcom.Visible = true;
                lblWelcom.Text = "Hi " + Session["userID"].ToString();
            }
            if(!IsPostBack)
            {
                BindGridView();
            }
        }
        private void BindGridView()
        {
            string query = "select Id,PersonName,Age,Sex,Hobbies1,Hobbies2,Hobbies3 from Mt_Persons";
            SqlConnection con = new SqlConnection(k);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            personsGridview.DataSource = dt;
            personsGridview.DataBind();

        }

        protected void personsGridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmdedit")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Ipd.aspx?id=" + id);
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogOut.aspx");
        }
    }
}