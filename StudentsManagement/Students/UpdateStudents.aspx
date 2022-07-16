<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStudents.aspx.cs" Inherits="Student_Management.StudentsManagement.Students.UpdateStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Student Details...</title>
    <link rel="stylesheet" href="Style Sheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <script src="../../Assets/Bootstrap%205.1.3/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/Bootstrap%205.1.3/bootstrap.min5.css" rel="stylesheet" />
    <link href="../../Assets/font-awesome.min.css" rel="stylesheet" />
    <style type="text/css">
  
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">

                <a class="navbar-brand" href="../Admin.aspx">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active " href="Student_Regstration.aspx">Student Regstration</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="StudentList.aspx">Students List</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="Students.aspx">Students </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header -->
        <div class="container mt-3">
            <h3>Update Student Details</h3>
            <p>Student Registration - Fill The Form And Register Students </p>
        </div>
        <br />


        <div class="container">

            <div class="container-sm">
                <div class="row">
                    <div class="col-md-4">
                        <label>Full Name</label>
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Height="35px" Width="288px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            ControlToValidate="txtName"
                            Text="  Epty ya irukka kudathu"
                            ForeColor="red"
                            Font-Size="Small"
                            runat="server"></asp:RequiredFieldValidator>
                        <br />
                    </div>
                    <div class="col-md-4">
                        <label>Guardian Name </label>
                        <asp:TextBox ID="txtGardName" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            ControlToValidate="txtGardName"
                            Text="This Field Cannot be Empty"
                            ForeColor="red"
                            Font-Size="Small"
                            runat="server"></asp:RequiredFieldValidator>
                        <br />
                    </div>
                    <div class="col-md-4">
                        <label>Contact </label>
                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            ControlToValidate="txtContact"
                            Text="This Field Cannot be Empty"
                            ForeColor="red"
                            Font-Size="Small"
                            runat="server"></asp:RequiredFieldValidator>
                        <br />
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <label>Email </label>

                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                    ControlToValidate="txtEmail"
                                    Text="This Field Cannot be Empty"
                                    ForeColor="red"
                                    Font-Size="Small"
                                    runat="server"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <label>Gender </label>
                                <asp:DropDownList ID="DdGen" runat="server" CssClass="form-select" Height="35px" Width="288px">
                                    <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                    <asp:ListItem Text="Others" Value="Female"></asp:ListItem>

                                </asp:DropDownList>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <label>DOB </label>
                                <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" Height="35px" Width="288px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                                    ControlToValidate="txtDOB"
                                    Text="This Field Cannot be Empty"
                                    ForeColor="red"
                                    Font-Size="Small"
                                    runat="server"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Department </label>

                                <asp:DropDownList ID="ddDepart" runat="server" CssClass="form-select" Height="35px" Width="288px" AutoPostBack="True"></asp:DropDownList>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <label>Batch </label>

                                <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                    ControlToValidate="txtBatch"
                                    Text="This Field Cannot be Empty"
                                    ForeColor="red"
                                    Font-Size="Small"
                                    runat="server"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <label>Address </label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Height="35px" Width="288px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                                    ControlToValidate="txtAddress"
                                    Text="This Field Cannot be Empty"
                                    ForeColor="red"
                                    Font-Size="Small"
                                    runat="server"></asp:RequiredFieldValidator>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text=" Update Student" CssClass="btn btn-dark" Width="157px" Height="39px" /></td>
                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <div class="align-content-center">
                                            <table class="table-hover">
                                                <asp:GridView ID="GridView1" Visible="true" CssClass="table table-hover" AutoGenerateColumns="false" runat="server">
                                                    <Columns>
                                                        <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="GardName" HeaderText="GaurdianName" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="Gender" HeaderText="Gender" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="Batch" HeaderText="Batch" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="Departments" HeaderText="Department" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="DOB" HeaderText="DOB" HeaderStyle-BackColor="WhiteSmoke" />
                                                        <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-BackColor="WhiteSmoke" />
                                                    </Columns>
                                                </asp:GridView>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </form>
</body>
</html>
