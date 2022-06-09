<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollectedFees.aspx.cs" Inherits="Student_Management.CollectedFees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students List - These are the Students Registered in the DataBase...</title>
    <link rel="styleshe et" href="StyleSheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="../Admin">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">                  
                    <li class="nav-item">
                        <a class="nav-link  " href="../Fees/FeesCollect.aspx">Collect Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="../Fees/CollectedFees.aspx">Collected Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href ="../Fees/DeleteFees.aspx">Delete Fees</a>
                    </li>
                </ul>
            </div>
            </div>
    </nav>
    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p><b>Students List</b> - These are the Students Registered in the DataBase... </p>
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
        <asp:GridView ID="StudentsGrid"  CssClass=" table table-hover" runat="server"></asp:GridView>

                </table>
            </div>
               <asp:Label ID="LblAlert" runat="server"  CssClass="alert alert-danger" Text=""></asp:Label>  
           </div>
            </div>
                <br />
           </div>
             <div id="sdf"> 
            <a href="../Students/Student_Regstration.aspx" class="btn btn-success">Insert</a> 
            <a href="FeesCollect.aspx" class="btn btn-primary">Update</a>
            <a href="" class="btn btn-danger">Remove</a>
                    </div>
          </center>
         <center>
        <div>
       </div>
      </center>
    </form>
</body>
</html>
