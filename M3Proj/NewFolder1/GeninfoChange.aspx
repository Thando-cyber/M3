<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeninfoChange.aspx.cs" Inherits="M3Proj.NewFolder1.GeninfoChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
     
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
     
    <link rel="stylesheet" href="CSS/masterstyle.css" />
    <link rel="stylesheet" href ="../CSS/info.css" /> 
     <link rel="stylesheet" href ="../CSS/masterstyle.css" /> 
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
                        
       
    <div class="container-xxl position-relative p-0">
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Profile</h1>
            </div>
        </div>
    </div>
    <div class="auto-style3">
        <div class="container">
            <div class="main-body">
                <!-- Breadcrumb -->
                <nav aria-label="breadcrumb" class="main-breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page"><%= title%> Profile</li>
                    </ol>
                </nav>
                <!-- /Breadcrumb -->
                <center>
                <div runat="server" id="Search">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="searchID" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" AutoPostBack="true" Text="Search" Cssclass="btn btn-outline-primary" OnClick="Button2_Click"></asp:Button>
                </div>
                </center>
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <div>
                                        <img src="../logos/<%=Session["ID"].ToString()%>.png" title="<%=FullName%>"" alt="<%= FullName %>" class="rounded-circle" width="150" height="150">
                                    </div>
                                    <div class="mt-3">
                                        <h4><%= name %></h4>
                                        
                                        <p class="text-secondary mb-1"><%= title %></p>
                                        <p class="text-muted font-size-sm"><%=age%> Years Old</p>
                                        <p class="text-muted font-size-sm"><%= Address %></p>


                                        <button type="button" runat="server" href="~/NewFolder1/Reports.aspx" class="btn btn-primary">Report</button>
                                        <button type="button" runat="server" class="btn btn-outline-primary">Subject</button>
                                        <button type="button" runat="server" href="~/Account/ManagePassword" class="btn btn-outline-primary">Change Password</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">First Name</h6>
                                    </div>
                                    <div ng-app="" class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="FirstName" Style="width: 300px" value=""></asp:TextBox>
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Last Name</h6>
                                    </div>
                                    <div  ng-app="" class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="lastname" Style="width: 300px" value=""></asp:TextBox>
                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="email" Style="width: 300px"></asp:TextBox>
                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="contac" Style="width: 300px"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Age</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="stuAge" Style="width: 300px"></asp:TextBox>
                                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="TextBox1" Style="width: 300px"></asp:TextBox>
                                        <select runat="server" name="Gender" id="lang">
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="addre" Style="width: 300px"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <asp:Label ID='Label1' Style="color: chartreuse" runat='server'></asp:Label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:Button ID='btnAdd' runat='server' Text='Save Changes' OnClick="btnAdd_Click" class="btn btn-info"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
    <style type="text/css">
        .auto-style3 {
            left: -7px;
            top: -539px;
        }
    </style>
</asp:Content>

