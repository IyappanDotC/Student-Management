<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Student_Management.StudentsManagement.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <!-- Navbar start-->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="Home.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Students/Student_Regstration.aspx">Student Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Fees/FeesCollect.aspx">Fees Collection</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Marks/MarkEntry.aspx">Mark Entry</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Subjects/SubjectsEntry.aspx">Subjects Entry</a>
                    </li>
                </ul>
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar End-->
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4">Sign Up</h2>
                <form id="form1" runat="server">
                    <div class="mb-3">
                        <label for="txtName" class="form-label">Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="100%" />
                    </div>
                    <div class="mb-3">
                        <label for="txtUserID" class="form-label">UserID</label>
                        <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control" Width="100%" />
                    </div>
                    <div class="mb-3">
                        <label for="txtAge" class="form-label">Age</label>
                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" Width="100%" />
                    </div>
                    <div class="mb-3">
                        <label for="txtPhone" class="form-label">Phone</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Width="100%" />
                    </div>
                    <div class="mb-3">
                        <label for="Ddgen" class="form-label">Gender</label>
                        <asp:DropDownList ID="Ddgen" runat="server" CssClass="form-select" Width="100%">
                            <asp:ListItem Text="Male" Value="Male" />
                            <asp:ListItem Text="Female" Value="Female" />
                            <asp:ListItem Text="Others" Value="Others" />
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="txtPass" class="form-label">Password</label>
                        <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" TextMode="Password" Width="100%" />
                    </div>
                    <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Sign Up" CssClass="btn btn-primary mb-3" Width="100%" />
                </form>
            </div>
        </div>
    </div>
   <%-- <footer class="bg-dark text-white text-center py-4 fixed-bottom">
        <p>&copy; 2022 Copyright Reserved | Horizon Education Institute</p>
        <p style="font-size: smaller">Developed and Maintained By IYAPPAN C</p>
    </footer>--%>
</body>
</html>
