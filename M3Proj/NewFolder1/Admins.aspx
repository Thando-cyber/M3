<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="M3Proj.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-xxl position-relative p-0">
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Administrators Overview</h1>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div style="margin:auto; width:50%; text-align:center;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="admin_id" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center" Width="607px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="admin_id" HeaderText="ID" ReadOnly="True" SortExpression="admin_id" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="admin_name" HeaderText="Full Name" SortExpression="admin_name" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="admin_details" HeaderText="Details" SortExpression="admin_details" />
                <asp:BoundField DataField="admin_email" HeaderText="Email Address" SortExpression="admin_email" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [admins] ORDER BY [admin_name]"></asp:SqlDataSource>
    </div>
    <br />
    <br />
    <br />

</asp:Content>
