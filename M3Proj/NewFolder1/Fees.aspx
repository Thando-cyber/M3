<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="M3Proj.NewFolder1.Fees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    &nbsp;
    <br />
    &nbsp;&nbsp;
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="769px" AutoGenerateColumns="False" DataKeyNames="stu_ID" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="stu_ID" HeaderText="ID" ReadOnly="True" SortExpression="stu_ID" />
            <asp:BoundField DataField="classID" HeaderText="Class" SortExpression="classID" />
            <asp:BoundField DataField="stu_name" HeaderText="Name" SortExpression="stu_name" />
            <asp:BoundField DataField="stu_surname" HeaderText="Surname" SortExpression="stu_surname" />
            <asp:BoundField DataField="stu_address" HeaderText="Address" SortExpression="stu_address" />
            <asp:BoundField DataField="stu_email" HeaderText="Email" SortExpression="stu_email" />
            <asp:BoundField DataField="stu_age" HeaderText="Age" SortExpression="stu_age" />
            <asp:BoundField DataField="stu_gender" HeaderText="Gender" SortExpression="stu_gender" />
            <asp:BoundField DataField="stu_Fees" HeaderText="Fees" SortExpression="stu_Fees" DataFormatString="{0:c}" />
            <asp:BoundField DataField="parentContact" HeaderText="Contact" SortExpression="parentContact" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [student] WHERE ([stu_ID] = @stu_ID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="&quot;&quot;" Name="stu_ID" SessionField="stuID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount Owned by Student: R<%= amount %> <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
