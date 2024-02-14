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

            
            string MyCon = @"Data Source =.; Initial Catalog = STMT; Integrated Security =SSPI ";

            using (SqlConnection sqlconnection = new SqlConnection(MyCon))
            {
                try
                {
                    sqlconnection.Open();

                    string InstQ = "INSERT INTO UserLogin (Name, UserID, Age, Phone, Gender, Password) VALUES (@Name, @UserID, @Age, @Phone, @Gender, @Password)";
                    SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                    MyCmd.Parameters.AddWithValue("@Name", txtName.Text);
                    MyCmd.Parameters.AddWithValue("@UserID", txtUserID.Text);
                    MyCmd.Parameters.AddWithValue("@Age", txtAge.Text);
                    MyCmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                    MyCmd.Parameters.AddWithValue("@Gender", Ddgen.SelectedValue);
                    MyCmd.Parameters.AddWithValue("@Password", txtPass.Text);

                    MyCmd.ExecuteNonQuery();

                    // Clear input fields
                    txtName.Text = "";
                    txtUserID.Text = "";
                    txtAge.Text = "";
                    txtPhone.Text = "";
                    Ddgen.ClearSelection(); // Clear the selected value for a DropDownList
                    txtPass.Text = "";
                }
                catch (Exception ex)
                {
                     
                    Console.WriteLine("An error occurred: " + ex.Message);
                    
                }
            }



        }
 
    }
}