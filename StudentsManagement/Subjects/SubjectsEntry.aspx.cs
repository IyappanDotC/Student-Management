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
    public partial class SubjectsEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                    DataTable MyTable = new DataTable();

                    using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
                    {
                        SqlDataAdapter myada = new SqlDataAdapter("select * from Departments ", Sqlconnection);
                        myada.Fill(MyTable);
                    }

                    ddDepat.DataTextField = "Departments";
                    ddDepat.DataValueField = "DepartmentID";
                    ddDepat.DataSource = MyTable;
                    ddDepat.DataBind();
                }
        }
        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            bool CheakExist1 = CheckExist();
            if (CheakExist1 == false)
            {
                using (SqlConnection sqlconnection = new SqlConnection(MyConnection()))
                {
                    sqlconnection.Open();
                    string InstQ = " insert into Subjects (SubjectName, DepartmentID) Values (@name, @DepID)";
                    SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                    MyCmd.Parameters.AddWithValue("@name", txtSubj.Text);
                    MyCmd.Parameters.AddWithValue("@DepID", ddDepat.SelectedValue);
                    MyCmd.ExecuteNonQuery();
                    sqlconnection.Close();

                    txtSubj.Text = "";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(' Subject Added')", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(' Subject Already Excists')", true);
            }
        }

        private bool CheckExist()
        {
            DataTable MyTable = new DataTable();

            using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
            {
                Sqlconnection.Open();
                SqlDataAdapter myada = new SqlDataAdapter("select * from Subjects where SubjectName=@name ", Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@name", txtSubj.Text);
                myada.Fill(MyTable);
                Sqlconnection.Close();                
            }
            if(MyTable !=null && MyTable.Rows.Count > 0)
                return true;
           else
                return false;
        }
        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog = STMT; Integrated Security =SSPI ";
        }
        }
    }

    