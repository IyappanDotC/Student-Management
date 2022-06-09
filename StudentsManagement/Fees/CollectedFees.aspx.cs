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
    public partial class CollectedFees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
            if (!IsPostBack)
            {
                DataTable MyTable = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(Con))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("select StudentName as Name , Semester , Amount , Departments as Department  from SemFees a join Students b on a.StudentID =b.StudentID join Departments c on b.DepartmentID=c.DepartmentID", Sqlconnection);
                    myada.Fill(MyTable);
                }

                StudentsGrid.DataSource = MyTable;
                StudentsGrid.DataBind();
            }

            if (StudentsGrid.Rows.Count > 0 )
            {
                StudentsGrid.DataBind();
            }
            else
            {
                LblAlert.Text = "No Records Found ";
                
            }


        }
    }
}