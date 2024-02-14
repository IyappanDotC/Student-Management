<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="Student_Management.StudentsManagement.Fees.Fees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>Students Marks</title> 
    <link rel="styleshe et" href="StyleSheet1.css" />
       
      <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>

<%--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>--%>


<script src="../../Assets/Bootstrap%205.1.3/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/Bootstrap%205.1.3/bootstrap.min5.css" rel="stylesheet" />
</head>
<body>
     
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="../Admin.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">                  
                        <li class="nav-item">
                        <a class="nav-link  " href="../Students/Student_Regstration.aspx">Collect Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="../Fees/CollectedFees.aspx">Collected Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../Fees/DeleteFees.aspx">Delete Fees</a>
                   
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
             <table>
      <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server">
      <Columns>
          <asp:TemplateField HeaderText="Select" HeaderStyle-BackColor="White">
          <ItemTemplate>
          <asp:CheckBox ID="ChkRow" runat="server"/>
          </ItemTemplate>
          </asp:TemplateField>   
              <asp:BoundField DataField="FeesID" HeaderText="FeesID" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Semester" HeaderText="Semester" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Amount" HeaderText="Amount" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Department" HeaderText="Department" HeaderStyle-BackColor="WhiteSmoke" />           
      </Columns>
      </asp:GridView> 

      <tr>
      <td><asp:Button ID="BtnDel" CssClass="btn btn-danger"   runat="server" Text="Delete" OnClick=  "BtnDel_Click" Width="79px"></asp:Button></td>
      <td>&nbsp;</td>
      <td></td>
      <td></td>
      </tr>

      </table>
      </center>
    </div>
    </form>
    </body>
    </html>