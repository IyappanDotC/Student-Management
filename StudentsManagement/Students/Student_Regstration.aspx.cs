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
            using (SqlConnection sqlconnection = new SqlConnection(MyConnection()))
            {
                sqlconnection.Open();

                string InstQ = "InsertStudents";
                SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                MyCmd.Parameters.AddWithValue("@name", txtName.Text);
                MyCmd.Parameters.AddWithValue("@Mobile", txtContact.Text);
                MyCmd.Parameters.AddWithValue("@Batch", txtBatch.Text);
                MyCmd.Parameters.AddWithValue("@DepartmentID", ddDepart.SelectedValue);
                MyCmd.Parameters.AddWithValue("@JoinDate", txtDateofJo.Text);
                MyCmd.Parameters.AddWithValue("@Active", true);
                MyCmd.CommandType = CommandType.StoredProcedure;
                MyCmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Registered ')", true);
                sqlconnection.Close();
                Clear();

            }
        }
        private void Clear()
        {
            txtName.Text = "";
            txtContact.Text = "";
            txtBatch.Text = "";
            txtDateofJo.Text = "";
        }
        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog =STMT; Integrated Security =SSPI ";
        }

    }
}