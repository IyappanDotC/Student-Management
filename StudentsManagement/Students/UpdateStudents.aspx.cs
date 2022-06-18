using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management.StudentsManagement.Students
{
    public partial class UpdateStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
            if (!IsPostBack)
            {
                LoadGrid();
            }

        }
        private void LoadGrid()

        {

            DataTable MyTable = new DataTable();


            string MYQ = "Select StuID , a.Name as Name , Mobile, Batch , b.Name as Departments ,Joindate from Students a join Departments b on a.DepartmentID = b.DepID where a.StuID = @ID";

            using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
            {
                SqlDataAdapter myada = new SqlDataAdapter(MYQ, Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@ID", Request.QueryString["ID"]);
                myada.Fill(MyTable);
            }
            GridView1.DataSource = MyTable;
            GridView1.DataBind();

            if (MyTable.Rows.Count > 0)
            {

                lblName.Text = MyTable.Rows[0]["Name"].ToString();
                lblBatch.Text = MyTable.Rows[0]["Batch"].ToString();
            }


        }
        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog =STMT; Integrated Security =SSPI ";
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
            {
                string UpdQ = "Update students set Name = @name , Mobile=@Mobile ,Batch=@Batch ,DepartmentID=@DepartmentID , Joindate=@Joindate, Active=@Active where StuID=@ID";
                SqlCommand MyCmd = new SqlCommand(UpdQ, Sqlconnection);
                Sqlconnection.Open();


                MyCmd.Parameters.AddWithValue("@ID", Request.QueryString["ID"]);

                MyCmd.Parameters.AddWithValue("@name", txtName.Text);
                MyCmd.Parameters.AddWithValue("@Mobile", txtContact.Text);
                MyCmd.Parameters.AddWithValue("@Batch", txtBatch.Text);
                MyCmd.Parameters.AddWithValue("@DepartmentID", ddDepart.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Joindate", txtDateofJo.Text);
                MyCmd.Parameters.AddWithValue("@Active", true);
                MyCmd.ExecuteNonQuery();
                Sqlconnection.Close();
                Clear();
                LoadGrid();


            }
        }
        private void Clear()
        {
            txtName.Text = "";
            txtContact.Text = "";
            txtBatch.Text = "";
            txtDateofJo.Text = "";
        }
    }
}