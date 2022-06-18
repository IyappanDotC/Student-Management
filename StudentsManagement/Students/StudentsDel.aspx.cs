using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class StudentsDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadGrid();
            }
        }

        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog =STMT; Integrated Security =SSPI ";
        }


        private void LoadGrid()

        {

            DataTable MyTable = new DataTable();
           

          string MYQ = "Select StuID , a.Name as Name , Mobile, Batch , b.Name as Departments from Students a join Departments b on a.DepartmentID = b.DepID where a.StuID = @ID";

            using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
            {
                SqlDataAdapter myada = new SqlDataAdapter(MYQ, Sqlconnection);
                myada.SelectCommand.Parameters.AddWithValue("@ID", Request.QueryString["ID"]);
                myada.Fill(MyTable);
            }
            GridView1.DataSource = MyTable;
            GridView1.DataBind();

            if (MyTable.Rows.Count > 0)
            {

                LblName.Text = MyTable.Rows[0]["Name"].ToString();
                LblBatch.Text = MyTable.Rows[0]["Batch"].ToString();
            }
          

        }

        protected void BtnDel_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows) 
            {
              if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox ChkRow = ( row.Cells[0].FindControl("ChkRow") as CheckBox);
                    if (ChkRow.Checked)
                          {
                        using (SqlConnection Sqlconnection = new SqlConnection(MyConnection()))
                        {
                            Sqlconnection.Open();

                            string MyQ = "Delete from Students where StuID=@ID";
                            SqlCommand MyCmd = new SqlCommand(MyQ, Sqlconnection);
                            MyCmd.Parameters.AddWithValue("@ID" , row.Cells[1].Text);
                            MyCmd.ExecuteNonQuery();

                            Sqlconnection.Close();
                            LblName.Text = "";
                            LblBatch.Text = "";

                       }
                     }
                   }
                 }
                LoadGrid();
              }
            }
          }