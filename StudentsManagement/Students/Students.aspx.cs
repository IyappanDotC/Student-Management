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
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
                    if (!IsPostBack)
                    {
                        DataTable MyTable = new DataTable();

                        using (SqlConnection Sqlconnection = new SqlConnection(Con))
                        {
                            SqlDataAdapter myada = new SqlDataAdapter("select StuID as ID , a.Name as Name , Mobile ,Batch , JoinDate as JoinDate, b.Name as Department from Students a join Departments b on a.DepartmentID = b.DepID", Sqlconnection);
                            myada.Fill(MyTable);
                        }

                        GridView.DataSource = MyTable;
                        GridView.DataBind();
                    }
                }
            
    }
}









