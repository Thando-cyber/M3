<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="M3Proj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>
            <span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="logo " class="auto-style1" src="logos/logo.jpeg" />Change3</span></h1>
        <p class="lead">&nbsp;</p>
        <p><a runat="server" href="~/About" class="btn btn-primary btn-lg">Learn more About us»</a></p>
    </div>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder">
    <link rel ="stylesheet" href="teacherstyle.css" />
<style type="text/css">
    .auto-style1 {
        width: 200px;
        height: 250px;
    }
    .newStyle1 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: xx-large;
        font-weight: bold;
        font-style: italic;
        font-variant: normal;
        text-transform: capitalize;
        color: #000000;
    }
</style>
</asp:Content>

