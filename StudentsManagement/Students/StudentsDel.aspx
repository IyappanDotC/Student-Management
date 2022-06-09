<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsDel.aspx.cs" Inherits="Student_Management.StudentsDel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>Students Marks</title> 
    <link rel="styleshe et" href="StyleSheet1.css" />
       
      <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/> 

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
     
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="../StudentsManagement/Home.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">                  
                    <li class="nav-item">
                        <a class="nav-link  " href="Student_Regstration.aspx">Student Regstration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="StudentList.aspx">Student List</a>
                    </li>
                  
                    <li class="nav-item">
                        <a class="nav-link active " href="Students.aspx">Students</a>
                    </li>
                </ul>
            </div>
            </div>
    </nav>
       <center> 
<div class="container-fluid mt-3">
  <h1>Students Management</h1>
  <p> Students Marks </p>
</div>
        </center>

    <hr />
     <form id="form2" runat="server">
    <div>
        <center>
          <label>Name : </label> <asp:Label ID="LblName" runat="server" Text=""></asp:Label>
            <br />
           <label>Batch : </label> <asp:Label ID="LblBatch" runat="server" Text=""></asp:Label>
        </center>
        <br />
        <br />
        <center>
           
             <table class="table-hover">
      <asp:GridView ID="GridView1" CssClass="table table-hover"  AutoGenerateColumns="false" runat="server">
      <Columns>
          <asp:TemplateField HeaderText="Select" HeaderStyle-BackColor="White">
          <ItemTemplate>
          <asp:CheckBox ID="ChkRow" runat="server"/>
          </ItemTemplate>
          </asp:TemplateField>   
              <asp:BoundField DataField="StuID" HeaderText="ID" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Mobile" HeaderText="ContactNo" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Batch" HeaderText="Batch" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Departments" HeaderText="Department" HeaderStyle-BackColor="WhiteSmoke" />           
      </Columns>
      </asp:GridView> 
                     </table>
                 <center>
      <tr>
      <td><asp:Button ID="BtnDel" CssClass="btn btn-danger"  runat="server" Text="Delete" OnClick=  "BtnDel_Click" Width="79px"></asp:Button></td>
      <td>&nbsp;</td>
      <td></td>
      <td></td>
      </tr>
</center>
      <tr>
      <td></td>
      
      <td></td>
      <td></td> 
     
      </tr>

  
      </center>
    </div>
    </form>
    </body>
    </html>

   