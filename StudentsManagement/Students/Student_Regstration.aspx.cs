using System;
using System.Data;
using System.Data.SqlClient;

namespace Student_Management
{
    public partial class WebForm1 : System.Web.UI.Page 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
                if (!IsPostBack)
                {
                    DataTable MyTable = new DataTable();

                    using (SqlConnection Sqlconnection = new SqlConnection(Con))
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
            string MyCon = @"Data Source =.; Initial Catalog = STMT; Integrated Security =SSPI ";

            using (SqlConnection sqlconnection = new SqlConnection(MyCon))
            {
                sqlconnection.Open();

                string InstQ = " insert into Students (Name,Mobile,Batch,DepartmentID,JoinDate,Active) "+
                    "Values (@name ,@ContactNo, @Batch, @DepartmentID,@JoinDate,@Active)";
                SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                MyCmd.Parameters.AddWithValue("@name", txtName.Text);
                MyCmd.Parameters.AddWithValue("@ContactNo", txtContact.Text);
                MyCmd.Parameters.AddWithValue("@Batch", txtBatch.Text);
                MyCmd.Parameters.AddWithValue("@DepartmentID", ddDepart.SelectedValue);
                MyCmd.Parameters.AddWithValue("@JoinDate", txtDateofJo.Text);
                MyCmd.Parameters.AddWithValue("@Active", true);

                MyCmd.ExecuteNonQuery();

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

    }
}