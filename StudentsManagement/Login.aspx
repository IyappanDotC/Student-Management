<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Student_Management.StudentsManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login </title>

    <link rel="styleshe et" href="StyleSheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link href="../Bootstrap%203.4.1/font-awesome.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="Home.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active " href="Home.aspx"> </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Fees/FeesCollect.aspx"> </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Marks/MarkEntry.aspx"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Subjects/SubjectsEntry.aspx"></a>
                    </li>
                    
                </ul>
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                        <a class="nav-link " href="SignUp.aspx">SignUp</a>
                    </li>
                    </ul>
            </div>
        </div>
    </nav>

    <center>
    <br />
    <br />
    <div class="container-sm">
        <div class="row">
            <div class="col-sm-8">

                <div class="align-content-center">

    <div style="margin-top:20px">
                    <form id="form1" runat="server">
                        <div>
                            <table class="table table-borderless">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">User ID</td>
                                    <td>
                                    <asp:TextBox ID="txtUserID" runat="server" class="form-control" Height="28px" Width="187px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Password</td>
                                    <td>
                                    <asp:TextBox ID="txtPass" runat="server" Height="28px" class="form-control" TextMode="Password" Width="188px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1"></td>
                                    <td>
                                    <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Login" CssClass="btn btn-primary" Width="97px" Height="39px" />
                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>

                        <div class="container-sm">
        <div class="row">
            <div class="col-sm-8">

                <div class="align-content-center">

                    </div>
                </div>
            </div>
                            </div>
                    </form>
    </div>
                    </div>
                </div>
            </div>
        </div>
        </center>
     <div class="mt-6 p-8 bg-dark text-white text-center  fixed-bottom" ">
            <p>© 2022 Copyright Reserved | Horizon Education Institute. </p>
            <p style="font-size:smaller">Developed and Maintained By IYAPPAN C</p>
        </div>
</body>

</html>
