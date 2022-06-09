<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarkList.aspx.cs" Inherits="Student_Management.StudentsManagement.Marks.MarkList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mark List</title>
    <link rel="styleshe et" href="StyleSheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    <!--Header -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="../Admin.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="MarkEntry.aspx">Mark Entry</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="MarkList.aspx">Mark List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="MarksDel.aspx">Delete Mark </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Header -->


    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p><b>Mark List</b> -  Marks of the Student in the DataBase... </p>
    </div>
    <br />
    <form id="form1" runat="server">
        <center>
            <div class="container-md">
       <div class="row">
           <div class="col-md-8" >
        <div class="align-content-center"> 
            <table class=
                "table-hover     ">
                     <asp:GridView ID="StudentsGrid"  HeaderStyle-ForeColor="#ffffff" HeaderStyle-BackColor="#0066cc" CssClass="table table-hover" runat="server"></asp:GridView>
                </table>
            </div>
           </div>
            </div>
           </div>
          </center>
    </form>
</body>
</html>
