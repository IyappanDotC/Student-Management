<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeesCollect.aspx.cs" Inherits="Student_Management.FeesCollect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fees Collection - Collect Semmester Fees From Students</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="../../Assets/BS5/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/BS5/bootstrap.min5.css" rel="stylesheet" />
    <link href="../StyleShee t1.css" rel="stylesheet" />

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
                        <a class="nav-link active " href="../Fees/FeesCollect">Collect Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="../Fees/CollectedFees.aspx">Collected Fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="../Fees/DeleteFees.aspx">Delete Fees</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p>Fees Collection - Collect Semmester Fees From Students </p>
    </div>
    <br />
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="align-content-center">

                        <div>
                            <table>

                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">Name</td>
                                    <td class="auto-style2">
                                        <asp:DropDownList ID="ddname" CssClass="form-select" runat="server" Height="35px" Width="288px"></asp:DropDownList></td>
                                    <td class="auto-style2"></td>
                                </tr>

                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">Semester</td>
                                    <td class="auto-style2">
                                        <asp:DropDownList ID="DdSem" runat="server" CssClass="form-select" Height="35px" Width="288px">
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">Ammout</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Collect Fees" CssClass="btn btn-dark" Width="157px" Height="39px" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
