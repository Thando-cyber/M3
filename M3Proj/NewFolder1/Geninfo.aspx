<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Geninfo.aspx.cs" Inherits="M3Proj.NewFolder1.stuGeninfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href ="../CSS/info.css" /> 
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
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="../logos/<%=Session["ID"].ToString()%>.png" alt="<%= FullName %>" class="rounded-circle" width="150">
                                    <div class="mt-3">
                                        <h4><%= Name %></h4>
                                        <p class="text-secondary mb-1"><%= Title %></p>
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
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div id="Name" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= FullName %>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div id="Email" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= Session["Email"].ToString()%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div id="Contact" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= cont %>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Mobile</h6>
                                    </div>
                                    <div id="cont" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= cont %>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div id="Address" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= Address %>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <a class="btn btn-info"  href="GeninfoChange.aspx">Edit Information</a>
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



