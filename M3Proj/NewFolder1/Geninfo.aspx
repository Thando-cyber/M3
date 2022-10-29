 <%@ Page Title="" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind ="~/NewFolder1/Geninfo.aspx.cs" Inherits="M3Proj.NewFolder1.stuGeninfo"%>



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
    
       
<div class="container-xxl position-relative p-0">        
    <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Profile</h1>
                    
                </div>
            </div>
        </div>

    <div class="auto-style3">
        <div class="container">
            <div-- class="main-body">
                <!-- Breadcrumb -->
                <nav aria-label="breadcrumb" class="main-breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page"><%= title%> Profile</li>
                    </ol>
                </nav>
                <!-- /Breadcrumb -->
                <center>
                <div runat="server" id="sear">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox type="text" ID="Box2" runat="server" AutoPostBack="true" value="" CssClass="offset-sm-0" Width="122px"></asp:TextBox>
                    <asp:Button ID="But2" runat="server" Text="Search" Cssclass="btn btn-outline-primary" OnClick="Button2_Click" />
                    <asp:Label runat="server" ID="warn1" Style="color:red"></asp:Label>
                </div>
                </center>
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <div>
                                        <img src="../logos/<%=Session["ID"].ToString()%>.png" alt="<%= FullName %>" class="rounded-circle" width="150" height="150" />
                                    </div>
                                    <div class="mt-3">
                                        <h4><%= Name %></h4>
                                        <p class="text-secondary mb-1"><%= title %></p>
                                        <p class="text-muted font-size-sm"><%=age%> Years Old</p>
                                        <p class="text-muted font-size-sm"><%= Address %></p>


                                        <button type="button" runat="server" href="#" class="btn btn-primary">Report</button>
                                        <button type="button" runat="server" class="btn btn-outline-primary">Subject</button>
                                        <button type="button" runat="server" href="~/Account/ManagePassword" class="btn btn-outline-primary">Change Password</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <!--/--div-->
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div id="Name" class="col-sm-9 text-secondary" style="width: 300px">
                                        <%= FullName %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text6" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div id="emai" class="col-sm-9 text-secondary" style="width: 300px">
                                        <%= elecmail%>
                                    </div>
                                </div>
                                <hr>
                                <div id="text5" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div id="Contact" class="col-sm-9 text-secondary" style="width: 300px">
                                        <%= cont %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text4" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div id="gend" class="col-sm-9 text-secondary" style="width: 300px">
                                        <%= gender %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text3" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div id="Address" class="col-sm-9 text-secondary" style="width: 500px">
                                        <%= Address %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text2" runat="server" class="row">
                                    <asp:Label runat="server" ID="fee2" class="col-sm-3">
                                        <h6 class="mb-0">Fees</h6>
                                    </asp:Label>
                                    <div class="col-sm-9 text-secondary" style="width: 300px">
                                        R<%= fees.ToString("n2") %>
                                    </div>
                                </div>
                                <hr runat="server" id="line6" /> 
                                <div runat="server" id="text1" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Grade</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary" style="width: 300px">
                                        <%= gradeDiv %>
                                    </div>
                                </div>
                                <hr runat="server" id="line7"/>
                                <div runat="server" id="tex7" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0"> Class Teacher</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary" style="width: 300px"><%=clateac%>(@<%=teachId %>)</div>
                                </div>
                                <hr runat="server" id="hr1"/>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <a class="btn btn-info" href="GeninfoChange.aspx">Edit Information</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            


 </asp:Content>



