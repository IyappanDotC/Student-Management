using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Student_Management
{
    public partial class FeesCollect : System.Web.UI.Page 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
                DataTable MyTable = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(Con))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("AllStudents", Sqlconnection);
                    myada.Fill(MyTable);
                }

                ddname.DataTextField = "StudentName";
                ddname.DataValueField = "StudentID";
                ddname.DataSource = MyTable;
                ddname.DataBind();
            }
        }
        protected void BtnCreate_Click(object sender, EventArgs e)

        {

            string MyCon = @"Data Source =.; Initial Catalog = STMT; Integrated Security =SSPI ";

            using (SqlConnection sqlconnection = new SqlConnection(MyCon))
            {
                sqlconnection.Open();

                SqlCommand MyCmd = new SqlCommand("InsertFees", sqlconnection);
                MyCmd.Parameters.AddWithValue("@StuID", ddname.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Semester", DdSem.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
                MyCmd.CommandType = CommandType.StoredProcedure;
                MyCmd.ExecuteNonQuery();

                sqlconnection.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(' Fees has been Collected')", true);
                txtAmount.Text = "";
            }
        }
    }
    }
