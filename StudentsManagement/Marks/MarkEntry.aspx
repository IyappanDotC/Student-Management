<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarkEntry.aspx.cs" Inherits="Student_Management.MarkEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
       
<head runat="server">
    <title></title>
  
   <link rel="stylesheet" href="StyleSheet1.css" />
       
      <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <script src="../../Assets/BS5/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/BS5/bootstrap.min5.css" rel="stylesheet" />
    <link href="../../Assets/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css"/>

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
                    <li class="nav-item"><a class="nav-link active " href="MarkEntry.aspx">Mark Entry</a></li>
                    <li class="nav-item"><a class="nav-link " href="MarkList.aspx">Mark List</a></li>
                    <li class="nav-item"> <a class="nav-link " href="MarksDel.aspx">Delete Marks</a></li>
                </ul>
            </div>
    </nav>
<div class="container-fluid mt-3">
  <h3>Students Management</h3>
  <p> Enter Marks</p>
</div>
    <form id="form1" runat="server">
          <div class="container-sm">
        <div class="row">
            <div class="col-sm-8">
                <div class="align-content-center">
                        <div>
                            <table class="table table-borderless">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Name</td>
                                    <td>
                                       <asp:DropDownList ID="ddname"   runat="server" Height="31px" Width="162px" AutoPostBack="true"  OnSelectedIndexChanged="ddname_SelectedIndexChanged"></asp:DropDownList></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Subject</td>
                                    <td>
                                        <asp:DropDownList ID="ddsub" runat="server" Height="31px" Width="162px"  ></asp:DropDownList></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Mark</td>
                                    <td>
                                        <asp:TextBox ID="txtMarks" ValidateRequestMode="Enabled"  runat="server" Height="26px" Width="161px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                 <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1"> </td>
                                    <td>
                                    <asp:Button ID="BtnCreate" OnClick="BtnCreate_Click"  runat="server" Text="Add Marks" CssClass="btn btn-dark" Width="172px" /></td> 
                                    <td></td>
                                </tr>
                                <tr>
                                    <td"></td>
                                    <td"></td>
                                    <td"><asp:Label ID="Label1" ForeColor="#ff3300" runat="server" Text=" "></asp:Label> 
                                    </td>
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