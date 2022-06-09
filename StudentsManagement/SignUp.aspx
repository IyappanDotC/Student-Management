<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Student_Management.StudentsManagement.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>

    <link rel="styleshe et" href="StyleSheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }

        .auto-style2 {
            height: 36px;
        }

        .auto-style3 {
            width: 128px;
            height: 36px;
        }
    </style>
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
                        <a class="nav-link active " href="Students/Student_Regstration.aspx"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Fees/FeesCollect.aspx"></a>
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
                        <a class="nav-link " href="Login.aspx"> Login</a>
                   </li>
                    </ul>
            </div>
        </div>
    </nav>
      <!-- Navbar End-->
      
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
                                    <td class="auto-style1">Name</td>
                                    <td>
                                    <asp:TextBox ID="txtName" runat="server" Height="28px" class="form-control" Width="187px"></asp:TextBox></td>
                                    <td></td>
                                </tr>

                                    <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">UserID</td>
                                    <td>
                                    <asp:TextBox ID="txtUserID" runat="server" Height="28px" class="form-control" Width="187px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                    <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Age</td>
                                    <td>
                                    <asp:TextBox ID="txtAge" runat="server"  class="form-control" Height="28px" Width="187px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Phone</td>
                                    <td>
                                    <asp:TextBox ID="txtPhone" runat="server" class="form-control" Height="28px" TextMode="Password" Width="188px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                    <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">Gender</td>
                                    <td class="auto-style2">
                                   <asp:DropDownList ID="Ddgen" class="form-select" runat="server" Height="31px" Width="192px" >
                                           <asp:ListItem Text="Male" Value="Male" ></asp:ListItem>
                                           <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
                                           <asp:ListItem Text="Others" Value="Others" ></asp:ListItem>
                           </asp:DropDownList></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Password</td>
                                    <td>
                                    <asp:TextBox ID="txtPass" runat="server" class="form-control" Height="28px" TextMode="Password" Width="188px"></asp:TextBox></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1"></td>
                                    <td>
                                    <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="SignUp" CssClass="btn btn-primary" Width="97px" Height="39px" />
                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                        <asp:Panel ID="pnlAlertBox" runat="server"  style="position:absolute;top:0; visibility:hidden;"> //You can make is visible or hidden -- you need to customize the style of panel
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="myModalLabel">This is customize alertbox</h4>
                                    </div>
                                    <div class="modal-body">
                                        This is the messages...
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" />
                                        <asp:Button ID="btnOk" runat="server" CssClass="btn btn-primary" Text="Ok" />
                </div>
            </div>
        </div>
</asp:Panel>

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
