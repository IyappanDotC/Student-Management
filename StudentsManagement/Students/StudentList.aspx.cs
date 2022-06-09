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
    public partial class StudentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Con = @"Data Source=.;Initial Catalog=STMT ;Integrated Security=SSPI";
            if (!IsPostBack)
            {
                try
                {
                    DataTable MyTable = new DataTable();

                    using (SqlConnection Sqlconnection = new SqlConnection(Con))
                    {
                        SqlDataAdapter myada = new SqlDataAdapter("select * from Students ", Sqlconnection);
                        myada.Fill(MyTable);
                    }

                    StudentsGrid.DataSource = MyTable;
                    StudentsGrid.DataBind();
                }
                catch
                {
                    txtError.Text = "error in loading database please check later ";
                }


                }
               


        }
    }
}