using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management.StudentsManagement
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {


            string MyCon = @"Data Source =.; Initial Catalog = IYDataBase; Integrated Security =SSPI ";

            using (SqlConnection sqlconnection = new SqlConnection(MyCon))
            {
                sqlconnection.Open();

                string InstQ = " insert into UserLogin (Name , UserID, Age, Phone, Gender,Password) Values (@Name , @UserID, @Age, @Phone, @Gender,@Password)";
                SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                MyCmd.Parameters.AddWithValue("@name", txtName.Text);
                MyCmd.Parameters.AddWithValue("@UserID", txtUserID.Text);
                MyCmd.Parameters.AddWithValue("@Age", txtAge.Text);
                MyCmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                MyCmd.Parameters.AddWithValue("@Gender", Ddgen.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Password", txtPass.Text);

                MyCmd.ExecuteNonQuery();

                sqlconnection.Close();

                txtName.Text = "";
                txtUserID.Text = "";
                txtAge.Text = "";
                txtPhone.Text = "";
                Ddgen.SelectedValue = "";
                txtPass.Text = "";


                


            }
        }
    }
}