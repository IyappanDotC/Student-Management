<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Student_Management.StudentsManagement.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <style type="text/css">

        .carousel-inner img {
            width: 100%;
            min-height: 200px;
        }
            nav-link {
                         color:azure;
                     }
        }
    </style>

</head>
<body>
    <center> 
<div class="container-fluid mt-3">
  <h2>Student Management</h2>
    <p>Student Management -  StudentsRegstration , Fees Collection , Marks Entry etc.... </p>
</div>
        </center>

    <nav class="navbar navbar-expand-sm  navbar-dark bg-dark ">
        <div class="container-fluid">

            <a class="navbar-brand" href="Student_Regstration.aspx">Student Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link  " href="Students/Student_Regstration.aspx">Student Regstration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Fees/FeesCollect.aspx">Fees Collection</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  href="Marks/MarkEntry.aspx">Marks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Subjects/SubjectsEntry.aspx">Subjects</a>
                    </li>
                  
                        </ul>
                          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  
                               <li class="nav-item">
                        <a class="nav-link " href="Login.aspx">Logout</a>
                    </li>
                   
                    
                </ul>
            </div>
        </div>
    </nav>
    </div>
    </form>
</body>
</html>
