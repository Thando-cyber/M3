<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeninfoChange.aspx.cs" Inherits="M3Proj.NewFolder1.GeninfoChange" %>

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
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="FirstName" Style="width: 300px" value=""></asp:TextBox>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Last Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="lastname" Style="width: 300px" value=""></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="email" Style="width: 300px"></asp:TextBox>
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
                                        <h6 class="mb-0">Mobile</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="Mobile" Style="width: 300px"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="address" Style="width: 300px"></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:Button ID='btnAdd' Style='position: absolute;' runat='server' Text='Save Changes' OnClick="btnAdd_Click"></asp:Button>
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
