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
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
                if (!IsPostBack)
                {
                    DataTable MyTable = new DataTable();

                    using (SqlConnection Sqlconnection = new SqlConnection(Con))
                    {
                        SqlDataAdapter myada = new SqlDataAdapter("select StudentID as ID , a.StudentName as Name , Mobile ,Batch , DOB , b.DepartmentName as Department from Students a join Departments b on a.DepartmentID = b.DepartmentID", Sqlconnection);
                        myada.Fill(MyTable);
                    }

                    GridView.DataSource = MyTable;
                    GridView.DataBind();
                }
            }
            catch
            {
                txtError.Text = "error in loading database please check later ";
            }
        }
    }
}









