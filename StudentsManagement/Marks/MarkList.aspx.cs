using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management.StudentsManagement.Marks
{
    public partial class MarkList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
            if (!IsPostBack)
            {
                DataTable MyTable = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(Con))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("select b.StuID , b.Name , Mark ,SubName , d.Name as Departments  FROM Marks a join Students b on a.StudentID=b.StuID join Subjects c on a.SubjectID = c.SubID  join Departments d on b.DepartmentID = d.DepID", Sqlconnection);
                    myada.Fill(MyTable);
                }

                StudentsGrid.DataSource = MyTable;
                StudentsGrid.DataBind();
            }


        }
    }
    }
