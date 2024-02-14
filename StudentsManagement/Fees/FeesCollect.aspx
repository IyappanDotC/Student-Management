<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeesCollect.aspx.cs" Inherits="Student_Management.FeesCollect" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fees Collection - Collect Semester Fees From Students</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../../Assets/BS5/bootstrap.min5.css" rel="stylesheet" />

    <script src="../../Assets/Bootstrap%205.1.3/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/Bootstrap%205.1.3/bootstrap.min5.css" rel="stylesheet" />


    <link href="../StyleSheet1.css" rel="stylesheet" />
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
                        <a class="nav-link active" href="../Fees/FeesCollect">Collect Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Fees/CollectedFees.aspx">Collected Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Fees/DeleteFees.aspx">Delete Fees</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-3">
        <h3>Students Management</h3>
        <p>Fees Collection - Collect Semester Fees From Students</p>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form id="form1" runat="server">
                    <div class="mb-3">
                        <label for="ddname" class="form-label">Name</label>
                        <asp:DropDownList ID="ddname" CssClass="form-select" runat="server"></asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="DdSem" class="form-label">Semester</label>
                        <asp:DropDownList ID="DdSem" runat="server" CssClass="form-select">
                            <asp:ListItem Text="1" Value="1" />
                            <asp:ListItem Text="2" Value="2" />
                            <asp:ListItem Text="3" Value="3" />
                            <asp:ListItem Text="4" Value="4" />
                            <asp:ListItem Text="5" Value="5" />
                            <asp:ListItem Text="6" Value="6" />
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="txtAmount" class="form-label">Amount</label>
                        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" Width="100%" />
                    </div>
                    <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Collect Fees" CssClass="btn btn-dark mb-3" Width="100%" />
                </form>
            </div>
        </div>
    </div>
    <script src="../../Assets/BS5/bootstrap.bundle.min5.js"></script>
</body>
</html>
