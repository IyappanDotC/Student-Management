﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="Student_Management.StudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students List</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="StyleSheet1.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
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
                        <a class="nav-link" href="../Students/Student_Regstration.aspx">Students Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="StudentList.aspx">Students List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Students.aspx">Students</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-3">
        <h3>Students Management</h3>
        <p><b>Students List</b> - These are the Students Registered in the Database...</p>
    </div>
    <br />
    <form id="form1" runat="server">
        <center>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="align-content-center">  
                            <table class="table table-hover">
                                <asp:GridView ID="StudentsGrid" CssClass="table table-hover" runat="server"></asp:GridView>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </center>
        <div>
            <asp:Label ID="f" runat="server" Text=""></asp:Label>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
