<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarksDel.aspx.cs" Inherits="Student_Management.MarksDel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Marks List - These are the Students Registered in the DataBase...</title>
    <link rel="styleshe et" href="StyleSheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

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
                        <a class="nav-link  " href="MarkEntry.aspx">Mark Entry </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="MarkList.aspx">Marks List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="MarksDel.aspx">Delete Marks </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p><b>Attention !! </b>Students Marked In Color Has Arrears </p>
    </div>
    <br />
    <form id="form1" runat="server">
        <center>
            <div class="container-sm">
       <div class="row">
           <div class="col-md-8" >
        
        <div class="align-content-center">  
             <asp:DropDownList ID="DDCate"  runat="server">
                <asp:ListItem Value="1" Text="Name"></asp:ListItem>
                <asp:ListItem Value="2" Text="Batch"></asp:ListItem>
                <asp:ListItem Value="3" Text="Department"></asp:ListItem>
            </asp:DropDownList> 
            <asp:TextBox ID="txtSearch"  runat="server"></asp:TextBox> <asp:Button ID="btnSea" CssClass="btn btn-outline-primary btn-sm" runat="server" Text="Search" OnClick="btnSea_Click"></asp:Button>
            <br />
             <br />
            <table class=
                "table-hover     ">
        <asp:GridView ID="GridView" AllowPaging="true" PageSize="7" OnRowDataBound="GridView_RowDataBound1" OnPageIndexChanging="GridView_PageIndexChanging"  CssClass=" table table-hover" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID"  />
             <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" />
            <asp:BoundField DataField="Department" HeaderText="Department" />
             <asp:TemplateField HeaderText="Marks" ControlStyle-CssClass="btn btn-outline-danger" >
     <ItemTemplate>
                <asp:HyperLink runat="server" NavigateUrl='<%# string.Format("/StudentsManagement/Marks/Marks.aspx?ID={0}",
                    HttpUtility.HtmlEncode (Eval("ID").ToString()))%>'>Show Marks</asp:HyperLink>
     </ItemTemplate>
      </asp:TemplateField>   
     </Columns>
     </asp:GridView>
                </table>
            </div>
           </div>
            </div>
           </div>
          </center>
        <div>
        </div>
    </form>
</body>
</html>



