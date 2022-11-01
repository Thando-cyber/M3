<%@ Page Title="Record Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="recordPayment.aspx.cs" Inherits="M3Proj.recordPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-xxl position-relative p-0">        
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Record a New Payment</h1>
            </div>
        </div>
    </div>



    <div style="display:flex; justify-content:center;">

        <h1>Enter data</h1>
        <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 

        <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> 

        <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Cash</asp:ListItem>
            <asp:ListItem>EFT</asp:ListItem>
        </asp:DropDownList>

        <asp:Label ID="Label5" runat="server" Text="Details"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> 

        <asp:Label ID="Label2" runat="server" Text="Admin ID"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="">date</asp:Label>

    </div>  

</asp:Content>
