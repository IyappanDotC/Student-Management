using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class MarksDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                String myQ = "select StudentID as ID  , StudentName AS Name , Batch , b.Departments  As Department from Students a join Departments b on a.DepartmentID = b.DepartmentID";
                LoadGrid(myQ);
            }
        }
        private void LoadGrid(String a_MyQ)
        {
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
            DataTable MyTable = new DataTable();
            using (SqlConnection Sqlconnection = new SqlConnection(Con))
            {

                SqlDataAdapter myada = new SqlDataAdapter(a_MyQ, Sqlconnection);
                myada.Fill(MyTable);
            }

            GridView.DataSource = MyTable;
            GridView.DataBind();
        }
        private bool isStudentHasArrer(int StudentID)
        {
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
            DataTable MyTable = new DataTable();
            using (SqlConnection Sqlconnection = new SqlConnection(Con))
            {

                string MyQ = "select * from Marks Where SubjectID not in (select SubjectID from Marks where StudentID = @StudentID and Mark >= 50) and StudentID =@StudentID";

                SqlDataAdapter myada = new SqlDataAdapter(MyQ, Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@StudentID", StudentID);
                myada.Fill(MyTable);
            }
            if (MyTable != null && MyTable.Rows.Count > 0)
                return true;
            else
                return false;
        }
              protected void GridView_RowDataBound1(object sender, GridViewRowEventArgs e)
           {

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                   bool StudentHasArrer = isStudentHasArrer(Convert.ToInt32(e.Row.Cells[0].Text));
                    if (StudentHasArrer)
                   {
                        e.Row.Cells[0].BackColor = Color.Red;
                    e.Row.Cells[1].BackColor = Color.Red;
                    e.Row.Cells[2].BackColor = Color.Red;
                    e.Row.Cells[3].BackColor = Color.Red;
                    e.Row.Cells[3].BackColor = Color.Red;
                }
                }
        }


        protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView.PageIndex = e.NewPageIndex;
            string MyQ = "select a.StudentID ID , a.StudentName as Name ,ContactNo , Batch  , b.Departments as Department from Students a join Departments b on a.DepartmentID = b.DepartmentID";
            LoadGrid(MyQ);

        }

        protected void btnSea_Click(object sender, EventArgs e)
        {
            string MYQ = string.Empty;

            if (DDCate.SelectedValue == "1")
            {
                MYQ = "select a.StudentID ID , a.StudentName as Name ,ContactNo , Batch  , b.Departments as Department from Students a join Departments b on a.DepartmentID = b.DepartmentID where a.StudentName like '%" + txtSearch.Text + "%'";
            }
            else if (DDCate.SelectedValue == "2")
            {
                MYQ = "select a.StudentID ID , a.StudentName as Name ,ContactNo , Batch  , b.Departments as Department from Students a join Departments b on a.DepartmentID = b.DepartmentID where Batch like '%" + txtSearch.Text + "%'";
            }
            else if (DDCate.SelectedValue == "3")
            {
                MYQ = "select a.StudentID ID , a.StudentName as Name ,ContactNo , Batch  , b.Departments as Department from Students a join Departments b on a.DepartmentID = b.DepartmentID where b.Departments like '%" + txtSearch.Text + "%'";
            }
            LoadGrid(MYQ);
        }
    }
}