<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Regstration.aspx.cs" Inherits="Student_Management.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register a New Student</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css">
    <script src="../../Assets/Bootstrap%205.1.3/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/Bootstrap%205.1.3/bootstrap.min5.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="../Admin.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="Student_Regstration.aspx">Student Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="StudentList.aspx">Students List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Students.aspx">Students</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container mt-3">
        <h4>Register a New Student</h4>
        <p>Fill out the form below to register a new student</p>
    </div>

    <!-- Registration Form -->
    <div class="container">
        <form id="form1" runat="server">
            <div class="row">
                <!-- Form inputs -->
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName">Full Name</asp:Label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Full Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblGuardianName" runat="server" AssociatedControlID="txtGuardianName">Guardian Name</asp:Label>
                        <asp:TextBox ID="txtGuardianName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGuardianName" runat="server" ControlToValidate="txtGuardianName" ErrorMessage="Guardian Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblContact" runat="server" AssociatedControlID="txtContact">Contact</asp:Label>
                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtContact" ErrorMessage="Contact is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail">Email</asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblGender" runat="server" AssociatedControlID="ddlGender">Gender</asp:Label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select">
                            <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblDOB" runat="server" AssociatedControlID="txtDOB">DOB</asp:Label>
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="DOB is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblDepartment" runat="server" AssociatedControlID="ddlDepartment">Department</asp:Label>
                        <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-select">
                           
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" ControlToValidate="ddlDepartment" ErrorMessage="Department is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblBatch" runat="server" AssociatedControlID="txtBatch">Batch</asp:Label>
                        <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvBatch" runat="server" ControlToValidate="txtBatch" ErrorMessage="Batch is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblAddress" runat="server" AssociatedControlID="txtAddress">Address</asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <!-- Submit Button -->
            <div class="row">
                <div class="col-md-12">
                    

                    <asp:Button ID="btnRegister" runat="server" Text="Register Student" CssClass="btn btn-primary" OnClick="BtnCreate_Click"  />
                </div>
            </div>
        </form>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
