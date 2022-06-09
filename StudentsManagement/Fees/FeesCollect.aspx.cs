using Student_Management.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class FeesCollect : System.Web.UI.Page , fEESSD
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
                DataTable MyTable = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(Con))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("select * from Students", Sqlconnection);
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

                string InstQ = " insert into SemFees (StuID , Semester ,Amount) Values (@StuID , @Semester ,@Amount)";
                SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                MyCmd.Parameters.AddWithValue("@StuID", ddname.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Semester", DdSem.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Amount", txtAmount.Text);

                MyCmd.ExecuteNonQuery();

                sqlconnection.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(' Fees Collected')", true);
                txtAmount.Text = "";
            }
            

        }

        public void FeeCollect()
        {
            throw new NotImplementedException();
        }
    }
    }
