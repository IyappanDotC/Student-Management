using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Student_Management.Repository
{

    public interface fEESSD
    {
        void FeeCollect();
    }
    

    
    public class FessCollection : FeesCollect
    {
        public void FeeColl()
        {


            string MyCon = @"Data Source =.; Initial Catalog = STMT; Integrated Security =SSPI ";

            using (SqlConnection sqlconnection = new SqlConnection(MyCon))
            {
                sqlconnection.Open();

                string InstQ = " insert into SemFees (StudentID , Semester ,Amount) Values (@StudentName , @Semester ,@Amount)";

                SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);


                MyCmd.Parameters.AddWithValue("@StudentName", ddname.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Semester", DdSem.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Amount", txtAmount.Text);

                MyCmd.ExecuteNonQuery();

                sqlconnection.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(' Fees Collected')", true);
                txtAmount.Text = "";
            }

        }
    }
}