<%@ Page Title="Teachers Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="M3Proj.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-xxl position-relative p-0">
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Educators Overview</h1>
            </div>
        </div>
    </div>

    <br />
    <br />
    <br />

    <div style="margin:auto; width:80%;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="teach_ID" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center" Width="1055px">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:BoundField DataField="teach_firstname" HeaderText="Name(s)" SortExpression="teach_firstname" />
                <asp:BoundField DataField="teach_lastname" HeaderText="Surname" SortExpression="teach_lastname" />
                <asp:BoundField DataField="teach_ID" HeaderText="Educator ID" ReadOnly="True" SortExpression="teach_ID" />
                <asp:BoundField DataField="teach_title" HeaderText="Title" SortExpression="teach_title" />
                <asp:BoundField DataField="teach_email" HeaderText="Email Address" SortExpression="teach_email" />
                <asp:BoundField DataField="Address" HeaderText="Physical Address" SortExpression="Address" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="contactNum" HeaderText="Contact" SortExpression="contactNum" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [Teachers] ORDER BY [teach_firstname], [teach_lastname]"></asp:SqlDataSource>

</asp:Content>
