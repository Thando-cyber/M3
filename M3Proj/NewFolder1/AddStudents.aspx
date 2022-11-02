<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="M3Proj.NewFolder1.AddStudents" %>
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
                        
    <link rel="stylesheet" href="~/CSS/info.css" />
    <div class="container-xxl position-relative p-0">
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Add Students</h1>
                

            </div>
            
        </div>
    </div>
    <div id="AdminContent" runat="server" class="row gutters-sm">
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex flex-column align-items-center text-center">
                        <div id="form1" runat="server" enctype="multipart/form-data">
                            <br />
                            New Student ID:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <br />
                            <input type="file" name="FileUpload" />
                            <asp:Button ID="Button1" Text="Upload" runat="server" OnClick="Upload" />
                            <br />
                            <asp:Label ID="lblMessage" Text="File uploaded successfully." runat="server" ForeColor="Green" Visible="false" />
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
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Last Name</h6>
                                    </div>
                                    <div  ng-app="" class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="lastname" Style="width: 300px" value=""></asp:TextBox>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Date of Birth</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:TextBox runat="server" ID="DOB" Style="width: 300px"></asp:TextBox>
                                        <asp:Localize ID="Localize1" runat="server"></asp:Localize>
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
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <select runat="server" name="Gender" id="lang">
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
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
                                <hr />
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <select runat="server" name="Grade" id="Select1">
                                            <option value=8>8</option>
                                            <option value=9>9</option>
                                            <option value=10>10</option>
                                            <option value=11>11</option>
                                            <option value=12>12</option>
                                        </select>
                                        <select runat="server" name="Division" id="Select2">
                                            <option value='A'>A</option>
                                            <option value='B'>B</option>
                                            <option value='C'>C</option>
                                            <option value='D'>D</option>
                                        </select>
                                    </div>
                                </div>
                                <hr />
                                <asp:Label ID='Label1' Style="color: chartreuse" runat='server'></asp:Label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:Button ID='btnAdd' runat='server' Text='Add Student'  class="btn btn-info" OnClick="btnAdd_Click"></asp:Button>
                                    </div>
                                </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
