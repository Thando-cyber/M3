<%@ Page Title="Fees" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="M3Proj.NewFolder1.Fees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-xxl position-relative p-0">        
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Fees</h1>         
            </div>
        </div>
    </div>

    <br />
    <br />
   

    <div style="text-align:center;">
         <h4>Fee Summary</h4>
         <br />
         <h4>Total Owed to Institute:  R <%= /*amount.ToString("0.00")*/amount.ToString("n2") %></h4>  
    </div>
    <br />
    

    <div style="display:flex; justify-content:center;">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="769px" AutoGenerateColumns="False" DataKeyNames="stu_ID" DataSourceID="SqlDataSource4" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="stu_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="stu_ID" />
                <asp:BoundField DataField="stu_name" HeaderText="Student Name" SortExpression="stu_name" />
                <asp:BoundField DataField="stu_surname" HeaderText="Student Surname" SortExpression="stu_surname" />
                <asp:BoundField DataField="stu_email" HeaderText="Student Email" SortExpression="stu_email" />
                <asp:BoundField DataField="stu_Fees" HeaderText="Fee Balance" SortExpression="stu_Fees" DataFormatString="{0:n2}" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle ForeColor="Black" BackColor="#EEEEEE" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT [stu_ID], [stu_name], [stu_surname], [stu_email], [stu_Fees] FROM [student] WHERE ([stu_email] = @stu_email)">
            <SelectParameters>
                <asp:SessionParameter Name="stu_email" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>

         <br />
        <br />
        
        <h3 style="text-align:center;">Payment History</h3>
    <br />
    <div style="display:flex; justify-content:center;">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="receiptNum" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Width="896px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="receiptNum" HeaderText="Receipt No" ReadOnly="True" SortExpression="receiptNum" />
                <asp:BoundField DataField="stu_ID" HeaderText="Student ID" SortExpression="stu_ID" />
                <asp:BoundField DataField="pay_Date" DataFormatString="{0:d}" HeaderText="Date " SortExpression="pay_Date" />
                <asp:BoundField DataField="pay_Amount" DataFormatString="{0:n2}" HeaderText="Amount" SortExpression="pay_Amount" />
                <asp:BoundField DataField="pay_Type" HeaderText="Type" SortExpression="pay_Type" />
                <asp:BoundField DataField="balance" DataFormatString="{0:n2}" HeaderText="Balance" SortExpression="balance" />
            </Columns>
        
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle ForeColor="Black" BackColor="#EEEEEE" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT [receiptNum], [stu_ID], [pay_Date], [pay_Amount], [pay_Type], [balance] FROM [PaymentService] WHERE ([stu_ID] = @stu_ID)">
            <SelectParameters>
                <asp:SessionParameter Name="stu_ID" SessionField="stuID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        
     </div>
</asp:Content>