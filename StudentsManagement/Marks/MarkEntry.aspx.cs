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
    public partial class MarkEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable MyTable = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("select * from Students ", Sqlconnection);
                    myada.Fill(MyTable);
                }
                ddname.DataTextField = "Name";
                ddname.DataValueField = "StuID";
                ddname.DataSource = MyTable;
                ddname.DataBind();
                ddname.Items.Insert(0, new ListItem("Choose Student"));

                DataTable MyTablee = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("select * from Subjects ", Sqlconnection);
                    myada.Fill(MyTablee);
                }
                ddsub.DataTextField = "Name";
                ddsub.DataValueField = "DepartmentID";
                ddsub.DataSource = MyTablee;
                ddsub.DataBind();
            }
        }

        private void SubjectBasedOnStudents(string a_StudentID)
        {
            DataTable MyTablee = new DataTable();
            string myQ = "SELECT * from subjects a join Students b on b.DepartmentID=a.DepartmentID where b.StudentID=@StudentID";
            using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
            {
                SqlDataAdapter myada = new SqlDataAdapter(myQ, Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@StudentID", a_StudentID);
                myada.Fill(MyTablee);
            }

            ddsub.DataTextField = "SubjectName";
            ddsub.DataValueField = "DepartmentID";
            ddsub.DataSource = MyTablee;
            ddsub.DataBind();
        }
        protected void BtnCreate_Click(object sender, EventArgs e)
        {

            using (SqlConnection sqlconnection = new SqlConnection(MyConnection()))
            {
                sqlconnection.Open();

                string InstQ = " insert into Marks (StudentID, SubjectID, Mark) Values (@SubID ,@Sub ,@Marks )";
                SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                MyCmd.Parameters.AddWithValue("@SubID", ddname.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Sub", ddsub.SelectedValue);
                MyCmd.Parameters.AddWithValue("@Marks", txtMarks.Text);
                MyCmd.ExecuteNonQuery();

                sqlconnection.Close();

                ddname.SelectedIndex = 0;
                ddsub.SelectedIndex = 0;
                txtMarks.Text = "";

            }
        }
        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog = STMT; Integrated Security =SSPI ";
        }
        protected void ddname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SubjectBasedOnStudents(ddname.SelectedValue);
        }
    }
}