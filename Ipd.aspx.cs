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
    public partial class Ipd : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["constr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userID"]!=null)
            {
                lblWelcome.Visible = true;
                lblWelcome.Text = "Hi " + Session["userID"].ToString();
            }
            if(!IsPostBack && Request.QueryString["id"]!=null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                Update(id);
                btnInsert.Text = "Update";
            }
        }
        private void Update(int id)
        {
            SqlConnection con = new SqlConnection(k);
            string query = "select * from Mt_Persons where Id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.Read())
            {
                txtPName.Text = reader["PersonName"].ToString();
                txtAge.Text = reader["Age"].ToString();
                rblSex.SelectedValue = reader["Sex"].ToString();
                ddlCity.SelectedValue = reader["CityId"].ToString();
                chkCooking.Checked = reader["Hobbies1"] != DBNull.Value;
                 chkPlayingCricket.Checked= reader["Hobbies2"] != DBNull.Value;
                chkReadingBooks.Checked = reader["Hobbies3"] != DBNull.Value;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string cook = "", cricket = "", books = "";
            if (chkCooking.Checked)
            {
                cook = chkCooking.Text;
            }
            if (chkPlayingCricket.Checked)
            {
                cricket = chkPlayingCricket.Text;
            }
            if (chkReadingBooks.Checked)
            {
                books = chkReadingBooks.Text;
            }
            if (btnInsert.Text=="Insert")
            {
               
                SqlConnection con = new SqlConnection(k);
                con.Open();
                string query = "insert into Mt_Persons values ('" + txtPName.Text + "','" + int.Parse(txtAge.Text) + "','" + rblSex.SelectedValue + "','" + int.Parse(ddlCity.SelectedItem.Value) + "','" + cook + "','" + cricket + "','" + books + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)

                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Record Inserted Successfully";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    ClearFields();
                }
                else
                {
                    lblMsg.Text = "Failed to Insert Record";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            if(btnInsert.Text=="Update")
            {
                SqlConnection con = new SqlConnection(k);
                string query = "UPDATE Mt_Persons SET PersonName=@PersonName,Age=@Age,Sex=@Sex,CityId=@City,Hobbies1=@Hobbies1,Hobbies2=@Hobbies2,Hobbies3=@Hobbies3 WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(query,con);
                
                cmd.Parameters.AddWithValue("@PersonName",txtPName.Text);
                cmd.Parameters.AddWithValue("@Age",Convert.ToInt32(txtAge.Text));
                cmd.Parameters.AddWithValue("@Sex",rblSex.SelectedValue);
                cmd.Parameters.AddWithValue("@City",ddlCity.SelectedValue);
                cmd.Parameters.AddWithValue("@Hobbies1",cook);
                cmd.Parameters.AddWithValue("@Hobbies2",cricket);
                cmd.Parameters.AddWithValue("@Hobbies3",books);
                cmd.Parameters.AddWithValue("@Id",id);

                con.Open();
                int i=cmd.ExecuteNonQuery();
                if(i>0)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Person Details Updated Successfully";
                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Failed to Update";
                }
                ClearFields();
            }
           
            
        }
        private void ClearFields()

        {
            txtPName.Text = string.Empty;
            txtAge.Text = string.Empty;
            rblSex.ClearSelection();
            ddlCity.SelectedIndex = 0;
            chkCooking.Checked = false;
            chkPlayingCricket.Checked = false;
            chkReadingBooks.Checked = false;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogOut");
        }
    }
}