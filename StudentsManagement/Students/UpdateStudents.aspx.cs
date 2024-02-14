using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Student_Management.StudentsManagement.Students
{
    public partial class UpdateStudents : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=.; Initial Catalog=STMT; Integrated Security=SSPI";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDepartments();
                LoadStudentDetails();
            }
        }

        private void BindDepartments()
        {
            DataTable departmentTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT DepartmentID, DepartmentName FROM Departments";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                adapter.Fill(departmentTable);
            }

            ddDepart.DataTextField = "DepartmentName";
            ddDepart.DataValueField = "DepartmentID";
            ddDepart.DataSource = departmentTable;
            ddDepart.DataBind();
        }

        private void LoadStudentDetails()
        {
            string studentId = Request.QueryString["ID"];
            if (!string.IsNullOrEmpty(studentId))
            {
                DataTable studentTable = new DataTable();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = @"SELECT s.StudentID, s.StudentName AS Name, s.Mobile, s.GuardianName, 
                                    s.Email, s.Gender, s.Batch, s.Address, d.DepartmentName AS DepartmentName, 
                                    s.DOB FROM Students s JOIN Departments d ON s.DepartmentID = d.DepartmentID 
                                    WHERE s.StudentID = @StudentID";

                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    adapter.SelectCommand.Parameters.AddWithValue("@StudentID", studentId);
                    adapter.Fill(studentTable);
                }

                if (studentTable.Rows.Count > 0)
                {
                    DataRow row = studentTable.Rows[0];
                    txtName.Text = row["Name"].ToString();
                    txtBatch.Text = row["Batch"].ToString();
                    txtContact.Text = row["Mobile"].ToString();
                    txtDOB.Text = row["DOB"].ToString();
                    txtGardName.Text = row["GuardianName"].ToString();
                    txtEmail.Text = row["Email"].ToString();
                    txtAddress.Text = row["Address"].ToString();
                    ddDepart.SelectedValue = row["DepartmentID"].ToString();
                    DdGen.SelectedValue = row["Gender"].ToString();
                }
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = @"UPDATE Students SET StudentName = @Name, Mobile = @Mobile, Batch = @Batch, 
                                    Email = @Email, GuardianName = @GuardianName, Address = @Address, 
                                    Gender = @Gender, DepartmentID = @DepartmentID, DOB = @DOB, 
                                    IsActive = @IsActive WHERE StudentID = @StudentID";

                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@StudentID", Request.QueryString["ID"]);
                    command.Parameters.AddWithValue("@Name", txtName.Text);
                    command.Parameters.AddWithValue("@Mobile", txtContact.Text);
                    command.Parameters.AddWithValue("@Batch", txtBatch.Text);
                    command.Parameters.AddWithValue("@Email", txtEmail.Text);
                    command.Parameters.AddWithValue("@GuardianName", txtGardName.Text);
                    command.Parameters.AddWithValue("@Address", txtAddress.Text);
                    command.Parameters.AddWithValue("@Gender", DdGen.SelectedValue);
                    command.Parameters.AddWithValue("@DepartmentID", ddDepart.SelectedValue);
                    command.Parameters.AddWithValue("@DOB", txtDOB.Text);
                    command.Parameters.AddWithValue("@IsActive", true);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                ClearControls();
                // Optionally, you can redirect the user to a different page after successful update.
                // Response.Redirect("SuccessPage.aspx");
            }
            catch (Exception ex)
            {
                // Handle the error appropriately, e.g., show a message to the user or log the error.
                // You can display an error message on the page or log the exception details for debugging.
                // For simplicity, I'm just logging the exception to the console.
                Console.WriteLine("An error occurred: " + ex.Message);
            }
        }

        private void ClearControls()
        {
            txtName.Text = "";
            txtContact.Text = "";
            txtBatch.Text = "";
            txtDOB.Text = "";
            txtEmail.Text = "";
            txtGardName.Text = "";
            txtAddress.Text = "";
            ddDepart.SelectedIndex = -1;
            DdGen.SelectedIndex = -1;
        }
    }
}
