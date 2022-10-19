<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="M3Proj.NewFolder1.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
</p>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="receiptNum" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="receiptNum" HeaderText="receiptNum" ReadOnly="True" SortExpression="receiptNum" />
            <asp:BoundField DataField="AdminID" HeaderText="AdminID" SortExpression="AdminID" />
            <asp:BoundField DataField="stu_ID" HeaderText="stu_ID" SortExpression="stu_ID" />
            <asp:BoundField DataField="pay_Date" DataFormatString="{0:d}" HeaderText="Date" SortExpression="pay_Date" />
            <asp:BoundField DataField="pay_Amount" HeaderText="pay_Amount" SortExpression="pay_Amount" />
            <asp:BoundField DataField="pay_Type" HeaderText="pay_Type" SortExpression="pay_Type" />
            <asp:BoundField DataField="pay_Details" HeaderText="pay_Details" SortExpression="pay_Details" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [PaymentService] WHERE ([stu_ID] = @stu_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="stu_ID" SessionField="stuID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [PaymentService] WHERE ([stu_ID] = @stu_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="stu_ID" SessionField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
