using Newtonsoft.Json.Linq;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class DeleteFees : System.Web.UI.Page
    {
        private string MyCon()
        {
            return @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String myQ = "Select StudentID as ID,StudentName as Name  , Batch , CONVERT(varchar(20), JoinDate,110 ) as JoinDate , Departments as Department from Students a join Departments b on a.DepartmentID = b.DepartmentID";
                LoadGrid(myQ);
            }
        }
        private void LoadGrid(String a_MyQ)
        {

            DataTable MyTable = new DataTable();
            using (SqlConnection Sqlconnection = new SqlConnection(MyCon()))
            {

                SqlDataAdapter myada = new SqlDataAdapter(a_MyQ, Sqlconnection);
                myada.Fill(MyTable);
            }

            GridView.DataSource = MyTable;
            GridView.DataBind();
        }

        protected void GridView_RowDataBound1(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                bool L_PendingFee = hasPendingFees(e.Row.Cells[3].Text,Convert.ToInt32( e.Row.Cells[0].Text));
                if (L_PendingFee)
                {
                    e.Row.Cells[0].BackColor = Color.Red;
                    e.Row.Cells[1].BackColor = Color.Red;
                    e.Row.Cells[2].BackColor = Color.Red;
                    e.Row.Cells[3].BackColor = Color.Red;
                    e.Row.Cells[3].BackColor = Color.Red;
                }
            }
        }

        private bool hasPendingFees(string a_JoinDate, int a_StudentID)
        {
            string[] Value1 = a_JoinDate.Split('-');
            DateTime JoinDate1 = new DateTime(Convert.ToInt32(Value1[2]), Convert.ToInt32(Value1[0]), Convert.ToInt32(Value1[1]));
            DateTime CurrentDate = DateTime.Now;

            int Months = (CurrentDate.Year - JoinDate1.Year) * 12 + CurrentDate.Month - JoinDate1.Month;

            int NumberOfRows1 = GetNumberOfFees(a_StudentID);

            bool L_PendingFee = false;

            if (Months <= 6)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }
            if (Months <= 12)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }
            if (Months <= 18)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }
            if (Months <= 24)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }
            if (Months <= 30)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }
            if (Months <= 36)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }
            if (Months <= 42)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }
            if (Months <= 48)
            {
                if (NumberOfRows1 < 1)
                {
                    L_PendingFee = true;
                }
            }

            return L_PendingFee;

        }
        private int GetNumberOfFees(int StudentID)
        {
            DataTable MyTable = new DataTable();
            int RowCount1 = 0;
            using (SqlConnection Sqlconnection = new SqlConnection(MyCon()))
            {
                String MyQ = "Select * From SemFees where StudentID=@StudentID";
                SqlDataAdapter myada = new SqlDataAdapter(MyQ, Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@StudentID", StudentID);
                myada.Fill(MyTable);
            }
            if (MyTable != null)
                RowCount1 = MyTable.Rows.Count;
            else
                RowCount1 = 0;


            return RowCount1;

        }

        protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView.PageIndex = e.NewPageIndex;
            string MyQ = "select a.StudentID ID , a.StudentName as Name ,ContactNo , Batch ,CONVERT(varchar(20), JoinDate,110 ) as JoinDate  , b.Departments as Department from Students a join Departments b on a.DepartmentID = b.DepartmentID";
            LoadGrid(MyQ);
        }
    }
     
}


           
       
     

  