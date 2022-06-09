using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management.StudentsManagement
{

    public partial class Login : System.Web.UI.Page
    {
        String MyCon = @"Data Source =.; Initial Catalog =IYDataBase; Integrated Security =SSPI ";

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Remove("UserID");
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            using (SqlConnection Sqlconnection = new SqlConnection(MyCon))

                if (isformVaild())
                {
                    //Response.Write("<script>alert('Hello');</script>");
                    if (Sqlconnection.State == ConnectionState.Closed)
                    {
                        Sqlconnection.Open();
                    }

                    try
                    {

                        SqlCommand cmd = new SqlCommand("SELECT UserID , Password from UserLogin  where UserID=@UserName and Password=@Password", Sqlconnection);

                        cmd.Parameters.AddWithValue("@UserName", txtUserID.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtPass.Text.Trim());
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                Session["UserID"] = dr.GetValue(0).ToString();

                                Response.Write("<Script>alert('Login Success');</script>");
                                Response.Redirect("~/StudentsManagement/Admin.aspx");
                            }
                        }
                        else
                        {
                            Response.Write("<Script>alert('Login Failed');</script>");
                            Response.Redirect("~/StudentsManagement/Home.aspx");

                            txtUserID.Text = string.Empty;
                            txtPass.Text = string.Empty;
                            txtUserID.Focus();

                        }
                    }

                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invaild Login Error....');</script>");

                }
        }
        private bool isformVaild()
        {
            if (txtUserID.Text == string.Empty)
            {
                Response.Write("<script>alert('UserID Requried');</script>");
                txtUserID.Text = string.Empty;
                txtUserID.Focus();
                return false;
            }
            if (txtPass.Text == string.Empty)
            {
                Response.Write("<script>alert('Password Requried');</script>");
                txtPass.Text = string.Empty;
                txtPass.Focus();
                return false;
            }
            return true;
        }
    }
}