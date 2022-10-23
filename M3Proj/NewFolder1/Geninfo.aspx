<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Geninfo.aspx.cs" Inherits="M3Proj.NewFolder1.stuGeninfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                                    <div >
                                        <img src="../logos/<%=Session["ID"].ToString()%>.png" alt="<%= FullName %>" class="rounded-circle" width="150" />
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="subResultID" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="subjectID" HeaderText="Subject" SortExpression="subjectID" />
                                                <asp:BoundField DataField="termResult" HeaderText="Result" SortExpression="termResult" />
                                                <asp:BoundField DataField="TermNo" HeaderText="Term" SortExpression="TermNo" />
                                            </Columns>
                                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                            <RowStyle BackColor="White" ForeColor="#003399" />
                                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                            <SortedDescendingHeaderStyle BackColor="#002876" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [subjectResults] WHERE ([studentID] = @studentID)">
                                            <SelectParameters>
                                                <asp:SessionParameter DefaultValue="&quot;&quot;" Name="studentID" SessionField="ID" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
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
                                <div id="text6" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div id="emai" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= Session["Email"].ToString()%>
                                    </div>
                                </div>
                                <hr>
                                <div id="text5" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div id="Contact" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= cont %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text4" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div id="gend" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= gender %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text3" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div id="Address" class="col-sm-9 text-secondary" style="width:500px">
                                        <%= Address %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text2" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Fees</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary" style="width:300px">
                                        <%= fees %>
                                    </div>
                                </div>
                                <hr>
                                <div id="text1" class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Grade</h6>
                                    </div>
                                    <div id="" class="col-sm-9 text-secondary" style="width:300px">
                                        <%= gradeDiv %>
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



