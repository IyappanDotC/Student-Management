<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubjectsEntry.aspx.cs" Inherits="Student_Management.SubjectsEntry" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <script src="../../Assets/BS5/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/BS5/bootstrap.min5.css" rel="stylesheet" />
    <link href="../../Assets/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

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
                        <a class="nav-link active " href="../Admin">Subjects Entry</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="../Admin.aspx">Subject List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="../Admin.aspx">Modify Subjects</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p>Subject Entry - Add Subject For the Departments </p>
    </div>
    <br />

    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">

                        <table>
                            <tr>
                                <td></td>
                                <td>Subject</td>
                                <td></td>
                                <td>
                                    <asp:TextBox ID="txtSubj" CssClass="form-control" runat="server" Height="35px" Width="189px"></asp:TextBox></td>
                                <td></td>
                            </tr>
                               <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Department</td>
                                <td></td>
                                <td>
                                    <asp:DropDownList ID="ddDepat" CssClass="form-select" runat="server" Height="35px" Width="189px" AutoPostBack="True"></asp:DropDownList></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                  
                                    <asp:Button ID="BtnCreate" OnClick="BtnCreate_Click" CssClass="btn btn-dark" runat="server" Text="Add Subject " />
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-2 text-sm-center">
                        <h4>Subjects</h4>
                          <hr />
                        <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server"></asp:GridView>
                    </div>
                    <div class="col-sm-3 text-sm-center">
                        <h4>All Departments</h4>
                        <hr />
                        <asp:GridView ID="GridView2" CssClass="table" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
      <div class="mt-6 mb-2  bg-dark text-white text-center">
            <p>© 2022 Copyright Reserved | Horizon Education Institute. </p>
            <p style="font-size:smaller">Developed and Maintained By IYAPPAN C</p>
        </div>
</body>
</html>
