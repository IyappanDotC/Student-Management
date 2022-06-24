using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Student_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (!IsPostBack)
                {
                    DataTable MyTable = new DataTable();

                    using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
                    {
                        SqlDataAdapter myada = new SqlDataAdapter("select * from Departments ", Sqlconnection);
                        myada.Fill(MyTable);
                    }
                    ddDepart.DataTextField = "Name";
                    ddDepart.DataValueField = "DepID";
                    ddDepart.DataSource = MyTable;
                    ddDepart.DataBind();
                }
            }
        }
        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            bool CheakExist1 = CheckExist();
            
            if (CheakExist1 == false  )
            {
                using (SqlConnection sqlconnection = new SqlConnection(MyConnection()))
                {
                    sqlconnection.Open();

                    string InstQ = "InsertStudents";
                    SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                    MyCmd.Parameters.AddWithValue("@name", txtName.Text);
                    MyCmd.Parameters.AddWithValue("@GardName ", txtGardName.Text);
                    MyCmd.Parameters.AddWithValue("@Mobile", txtContact.Text);
                    MyCmd.Parameters.AddWithValue("@Batch", txtBatch.Text);
                    MyCmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    MyCmd.Parameters.AddWithValue("@Gender", DdGen.SelectedValue);
                    MyCmd.Parameters.AddWithValue("@DepartmentID", ddDepart.SelectedValue);
                    MyCmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                    MyCmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    MyCmd.Parameters.AddWithValue("@Active", true);
                    MyCmd.CommandType = CommandType.StoredProcedure;
                    MyCmd.ExecuteNonQuery();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "swal('Student Registered' , 'Student Added Successfully ' , 'success')", true);
                    sqlconnection.Close();
                    Clear();

                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "swal('Error' , 'Student Already Exsits ' , 'info')", true);
            }
        }
        private void Clear()
        {
            txtName.Text = "";
            txtContact.Text = "";
            txtBatch.Text = "";
            txtGardName.Text = "";
            txtDOB.Text = "";
            txtAddress.Text = "";
        }
        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog =STMT; Integrated Security =SSPI ";
        }


        private bool CheckExist()
        {
            DataTable MyTable = new DataTable();

            using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
            {
                Sqlconnection.Open();
                SqlDataAdapter myada = new SqlDataAdapter("select * from Students where Name=@name and GardName=@GardName", Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@name", txtName.Text);
                myada.SelectCommand.Parameters.AddWithValue("@GardName", txtGardName.Text);
                
                myada.Fill(MyTable);
                Sqlconnection.Close();
            }
            if (MyTable != null && MyTable.Rows.Count > 0)
                return true;
            else
                return false;
        }

    }
}