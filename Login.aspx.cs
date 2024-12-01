using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myproject
{
    public partial class Login : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["constr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string password = txtPassword.Text;
            SqlConnection conn = new SqlConnection(k);
            string query = "select * from Users where UserName=@UserName and Password=@Password";
            SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.HasRows)
            {
                Session["userID"] = username;
                Response.Redirect("TestMenu.aspx");
            }
            else
            {
                lblWelcome.Visible = true;
                lblWelcome.Text = "Sorry, User Credentials are Wrong.";
            }
        }
    }
}