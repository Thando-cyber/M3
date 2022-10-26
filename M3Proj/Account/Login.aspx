<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M3Proj.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
 
    <div class="container-xxl position-relative p-0">        
    <div class="container-xxl bg-primary page-header" style="height:10vh;">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Login Page</h1>
                    
                </div>
            </div>
        </div>

    
            <section class="loginForm">

                <div class="form">
                    <div class ="box1">
                   
                        <div class="head">
                            <h1>
                            Welcome Back 
                            </h1>

                            <asp:HyperLink ID="RegisterHyperLink"  ccsclass="reglink" ViewStateMode="Disabled" runat ="server"></asp:HyperLink>
                        </div>
                        
               
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                        
                        <div class="formgroup">
                        <div class="container1">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="lbl">Email</asp:Label><br />
                       
                            <asp:TextBox runat="server" ID="Email" CssClass="logincontrol" TextMode="Email" placeholder="Enter email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    
                        <div class="container2">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="lbl">Password</asp:Label><br />
                        
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="logincontrol" placeholder="Enter password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                 
               
                        <div class="container3">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                   
                    
                        <div class="container4">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="loginBtn" />
                        </div>
                    </div>
                 

                    </div>
                       

                    <div class="panel">
                        <img src="../Photos/Privacy policy-rafiki.svg" />
                    </div>

                </div>
                
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
              
            </section>
      

        
  
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder">
    <link rel="stylesheet" href ="../CSS/loginstyle.css" />
    
</asp:Content>
