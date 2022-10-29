<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="M3Proj.NewFolder1.Fees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="769px" AutoGenerateColumns="False" DataKeyNames="stu_ID" DataSourceID="SqlDataSource4" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="stu_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="stu_ID" />
            <asp:BoundField DataField="stu_name" HeaderText="Student Name" SortExpression="stu_name" />
            <asp:BoundField DataField="stu_surname" HeaderText="Student Surname" SortExpression="stu_surname" />
            <asp:BoundField DataField="stu_email" HeaderText="Student Email" SortExpression="stu_email" />
            <asp:BoundField DataField="stu_Fees" HeaderText="Fee Balance" SortExpression="stu_Fees" DataFormatString="{0:n2}" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT [stu_ID], [stu_name], [stu_surname], [stu_email], [stu_Fees] FROM [student] WHERE ([stu_email] = @stu_email)">
        <SelectParameters>
            <asp:SessionParameter Name="stu_email" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <div style="text-align:center;">
        <h2>Amount Owed by Student:  R <%= /*amount.ToString("0.00")*/amount.ToString("n2") %></h2>  
    </div>
    <br />
    <br />
    <h4 style="text-align:center;">Payment History</h4>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="receiptNum" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="896px">
        <Columns>
            <asp:BoundField DataField="receiptNum" HeaderText="Receipt No" ReadOnly="True" SortExpression="receiptNum">
            <FooterStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="stu_ID" HeaderText="Student ID" SortExpression="stu_ID">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pay_Date" DataFormatString="{0:d}" HeaderText="Date " SortExpression="pay_Date">
            <FooterStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pay_Amount" DataFormatString="{0:n2}" HeaderText="Amount" SortExpression="pay_Amount">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pay_Type" HeaderText="Type" SortExpression="pay_Type">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pay_Details" HeaderText="Details" SortExpression="pay_Details">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="AdminID" HeaderText="Payment recorded by:" SortExpression="AdminID">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT [receiptNum], [stu_ID], [pay_Date], [pay_Amount], [pay_Type], [pay_Details], [AdminID] FROM [PaymentService] WHERE ([stu_ID] = @stu_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="stu_ID" SessionField="stuID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
