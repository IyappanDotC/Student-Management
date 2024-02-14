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
                    ddlDepartment.DataTextField = "DepartmentName";
                    ddlDepartment.DataValueField = "DepartmentID";
                    ddlDepartment.DataSource = MyTable;
                    ddlDepartment.DataBind();
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

                    var AddStudents = MyCmd.Parameters;
                    AddStudents.AddWithValue("@name", txtName.Text);
                    AddStudents.AddWithValue("@GardName ", txtGuardianName.Text);
                    AddStudents.AddWithValue("@Mobile", txtContact.Text);
                    AddStudents.AddWithValue("@Batch", txtBatch.Text);
                    AddStudents.AddWithValue("@Email", txtEmail.Text);
                    AddStudents.AddWithValue("@Gender", ddlDepartment.SelectedValue);
                    AddStudents.AddWithValue("@DepartmentID", ddlDepartment.SelectedValue);
                    AddStudents.AddWithValue("@DOB", txtDOB.Text);
                    AddStudents.AddWithValue("@Address", txtAddress.Text);
                    AddStudents.AddWithValue("@Active", true);
                    MyCmd.CommandType = CommandType.StoredProcedure;
                    MyCmd.ExecuteNonQuery();
                    Clear();

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
            txtGuardianName.Text = "";
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
                SqlDataAdapter myada = new SqlDataAdapter("select * from Students where StudentName=@name and GuardianName=@GardName", Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@name", txtName.Text);
                myada.SelectCommand.Parameters.AddWithValue("@GardName", txtGuardianName.Text);
                
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