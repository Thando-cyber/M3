<%@ Page Title="Administrators Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="M3Proj.Admins" %>
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
    <div style="display:flex; justify-content:center;  text-align:center;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="admin_id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="865px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="admin_id" HeaderText="Admin ID" ReadOnly="True" SortExpression="admin_id" >
                </asp:BoundField>
                <asp:BoundField DataField="admin_name" HeaderText="Name(s)" SortExpression="admin_name" >
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [admins] ORDER BY [admin_id]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [admins] WHERE [admin_id] = @original_admin_id AND [admin_name] = @original_admin_name AND [admin_details] = @original_admin_details AND [admin_email] = @original_admin_email" InsertCommand="INSERT INTO [admins] ([admin_id], [admin_name], [admin_details], [admin_email]) VALUES (@admin_id, @admin_name, @admin_details, @admin_email)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [admins] SET [admin_name] = @admin_name, [admin_details] = @admin_details, [admin_email] = @admin_email WHERE [admin_id] = @original_admin_id AND [admin_name] = @original_admin_name AND [admin_details] = @original_admin_details AND [admin_email] = @original_admin_email">
            <DeleteParameters>
                <asp:Parameter Name="original_admin_id" Type="String" />
                <asp:Parameter Name="original_admin_name" Type="String" />
                <asp:Parameter Name="original_admin_details" Type="String" />
                <asp:Parameter Name="original_admin_email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="admin_id" Type="String" />
                <asp:Parameter Name="admin_name" Type="String" />
                <asp:Parameter Name="admin_details" Type="String" />
                <asp:Parameter Name="admin_email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="admin_name" Type="String" />
                <asp:Parameter Name="admin_details" Type="String" />
                <asp:Parameter Name="admin_email" Type="String" />
                <asp:Parameter Name="original_admin_id" Type="String" />
                <asp:Parameter Name="original_admin_name" Type="String" />
                <asp:Parameter Name="original_admin_details" Type="String" />
                <asp:Parameter Name="original_admin_email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
    <br />
    <br />

</asp:Content>
