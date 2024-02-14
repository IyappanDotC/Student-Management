<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollectedFees.aspx.cs" Inherits="Student_Management.CollectedFees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students List - These are the Students Registered in the DataBase...</title>
    <link rel="stylesheet" href="StyleSheet1.css" /> <!-- Corrected typo in 'stylesheet' -->

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
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
                        <a class="nav-link" href="../Fees/FeesCollect.aspx">Collect Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../Fees/CollectedFees.aspx">Collected Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Fees/DeleteFees.aspx">Delete Fees</a>
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
        <div class="container-md">
            <div class="row">
                <div class="col-md-8">
                    <div class="align-content-center">
                        <asp:GridView ID="StudentsGrid" CssClass="table table-hover" runat="server"></asp:GridView>
                    </div>
                    <asp:Label ID="LblAlert" runat="server" CssClass="alert alert-danger" Text=""></asp:Label>
                </div>
            </div>
            <br />
            <div class="text-center">
                <a href="../Students/Student_Registration.aspx" class="btn btn-success">Insert</a>
                <a href="../Fees/FeesCollect.aspx" class="btn btn-primary">Update</a> <!-- Fixed broken link -->
                <a href="#" class="btn btn-danger">Remove</a> <!-- Adjusted link to avoid empty href -->
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
