<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Student_Management.StudentsManagement.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Management</title>
    <link rel="stylesheet" href="Style Sheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>

        .carousel-inner img {
            width: 100%;
            min-height: 200px;
        }
            nav-link {
                         color:azure;
                     }
        
    </style>

</head>
<body>
    <center> 
<div class="container-fluid mt-3">
  <h2>Wisdom Elementary School</h2>
    <p>Student Management -  StudentsRegstration , Fees Collection , Marks Entry etc.... </p>
</div>
        </center>

    <nav class="navbar navbar-expand-sm  navbar-dark bg-dark "  style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">
        <div class="container-fluid">

            <a class="navbar-brand" href="Student_Regstration.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link  " href="Students/Student_Regstration.aspx">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Fees/FeesCollect.aspx">Classes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  href="Marks/MarkEntry.aspx">Teachers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Subjects/SubjectsEntry.aspx">Events</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link " href="Subjects/SubjectsEntry.aspx">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Subjects/SubjectsEntry.aspx"> Contacts</a>
                    </li>
                        </ul>
                          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                        <a class="nav-link " href="SignUp.aspx">SignUp</a>

                    </li>
                               <li class="nav-item">
                        <a class="nav-link " href="Login.aspx">Login</a>
                    </li>
                   
                    
                </ul>
            </div>
        </div>
    </nav>

    <div style="margin-top:20px">
        <form id="form1" runat="server">
            <div>
                <div class="container  border">
                    <!-- Carousel -->
                    <div id="demo" class="carousel slide" data-bs-ride="carousel">

                        <!-- Indicators/dots -->
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                            <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                        </div>
                        <!-- The slideshow/carousel -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src=https://www.aucetk.edu.in/#" alt="Los Angeles" class="d-block" style="width: 100%"/>
                            </div>
                            <div class="carousel-item">
                                <img src="https://www.w3schools.com/bootstrap5/chicago.jpg" alt="Chicago" class="d-block" style="width: 100%"/>
                            </div>
                            <div class="carousel-item">
                                <img src="https://www.w3schools.com/bootstrap5/chicago.jpg" alt="New York" class="d-block" style="width: 100%"/>
                            </div>
                        </div>

                        <!-- Left and right controls/icons -->
                        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                    </div>
                </div>
            </div>
        </form>
        <div>
        <hr style="width: 1083px ; align-content:center; color:aqua;"  />

        </div>
        <div class="mt-5 p-4 bg-white text-dark " style="margin-bottom:0;">
            <p>© Copyrights 2022  All rights reserved </p>
        </div>
    </div>
</body>
</html>
