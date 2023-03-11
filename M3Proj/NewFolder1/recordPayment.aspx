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



    <div style="text-align:center; color:black;">

        <h1>Enter data</h1>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
        <asp:TextBox ID="studentID" runat="server"></asp:TextBox> 
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
        <asp:TextBox ID="amount" runat="server"></asp:TextBox> 
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Cash</asp:ListItem>
            <asp:ListItem>EFT</asp:ListItem>
        </asp:DropDownList>
        
        
        <asp:Label ID="balanceLbl" runat="server" Text=""></asp:Label><br />
    <br />

           <asp:Button ID="Button1" runat="server" Text="Record" OnClick="Button1_Click" />
        <asp:Label ID="receiptLbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="adminLbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="studentlbl" runat="server" Text=""></asp:Label>
        <asp:Label ID="datelbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="amountlbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="typeLbl" runat="server" Text=""></asp:Label>
        <br />
    </div>  

    <div style="display:none;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="receiptNum">
            <Columns>
                <asp:BoundField DataField="receiptNum" HeaderText="receiptNum" ReadOnly="True" SortExpression="receiptNum" />
                <asp:BoundField DataField="AdminID" HeaderText="AdminID" SortExpression="AdminID" />
                <asp:BoundField DataField="stu_ID" HeaderText="stu_ID" SortExpression="stu_ID" />
                <asp:BoundField DataField="pay_Date" HeaderText="pay_Date" SortExpression="pay_Date" />
                <asp:BoundField DataField="pay_Amount" HeaderText="pay_Amount" SortExpression="pay_Amount" />
                <asp:BoundField DataField="pay_Type" HeaderText="pay_Type" SortExpression="pay_Type" />
                <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" DeleteCommand="DELETE FROM [PaymentService] WHERE [receiptNum] = @original_receiptNum AND (([AdminID] = @original_AdminID) OR ([AdminID] IS NULL AND @original_AdminID IS NULL)) AND [stu_ID] = @original_stu_ID AND [pay_Date] = @original_pay_Date AND (([pay_Amount] = @original_pay_Amount) OR ([pay_Amount] IS NULL AND @original_pay_Amount IS NULL)) AND (([pay_Type] = @original_pay_Type) OR ([pay_Type] IS NULL AND @original_pay_Type IS NULL)) AND (([balance] = @original_balance) OR ([balance] IS NULL AND @original_balance IS NULL))" InsertCommand="INSERT INTO [PaymentService] ([receiptNum], [AdminID], [stu_ID], [pay_Date], [pay_Amount], [pay_Type], [balance]) VALUES (@receiptNum, @AdminID, @stu_ID, @pay_Date, @pay_Amount, @pay_Type, @balance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PaymentService]" UpdateCommand="UPDATE [PaymentService] SET [AdminID] = @AdminID, [stu_ID] = @stu_ID, [pay_Date] = @pay_Date, [pay_Amount] = @pay_Amount, [pay_Type] = @pay_Type, [balance] = @balance WHERE [receiptNum] = @original_receiptNum AND (([AdminID] = @original_AdminID) OR ([AdminID] IS NULL AND @original_AdminID IS NULL)) AND [stu_ID] = @original_stu_ID AND [pay_Date] = @original_pay_Date AND (([pay_Amount] = @original_pay_Amount) OR ([pay_Amount] IS NULL AND @original_pay_Amount IS NULL)) AND (([pay_Type] = @original_pay_Type) OR ([pay_Type] IS NULL AND @original_pay_Type IS NULL)) AND (([balance] = @original_balance) OR ([balance] IS NULL AND @original_balance IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_receiptNum" Type="Int32" />
                <asp:Parameter Name="original_AdminID" Type="String" />
                <asp:Parameter Name="original_stu_ID" Type="String" />
                <asp:Parameter DbType="Date" Name="original_pay_Date" />
                <asp:Parameter Name="original_pay_Amount" Type="Int32" />
                <asp:Parameter Name="original_pay_Type" Type="String" />
                <asp:Parameter Name="original_balance" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="receiptNum" Type="Int32" />
                <asp:Parameter Name="AdminID" Type="String" />
                <asp:Parameter Name="stu_ID" Type="String" />
                <asp:Parameter DbType="Date" Name="pay_Date" />
                <asp:Parameter Name="pay_Amount" Type="Int32" />
                <asp:Parameter Name="pay_Type" Type="String" />
                <asp:Parameter Name="balance" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AdminID" Type="String" />
                <asp:Parameter Name="stu_ID" Type="String" />
                <asp:Parameter DbType="Date" Name="pay_Date" />
                <asp:Parameter Name="pay_Amount" Type="Int32" />
                <asp:Parameter Name="pay_Type" Type="String" />
                <asp:Parameter Name="balance" Type="Decimal" />
                <asp:Parameter Name="original_receiptNum" Type="Int32" />
                <asp:Parameter Name="original_AdminID" Type="String" />
                <asp:Parameter Name="original_stu_ID" Type="String" />
                <asp:Parameter DbType="Date" Name="original_pay_Date" />
                <asp:Parameter Name="original_pay_Amount" Type="Int32" />
                <asp:Parameter Name="original_pay_Type" Type="String" />
                <asp:Parameter Name="original_balance" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>





        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="stu_ID">
            <Columns>
                <asp:BoundField DataField="stu_ID" HeaderText="stu_ID" ReadOnly="True" SortExpression="stu_ID" />
                <asp:BoundField DataField="stu_Fees" HeaderText="stu_Fees" SortExpression="stu_Fees" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [stu_ID] = @original_stu_ID AND [stu_Fees] = @original_stu_Fees" InsertCommand="INSERT INTO [student] ([stu_ID], [stu_Fees]) VALUES (@stu_ID, @stu_Fees)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [stu_ID], [stu_Fees] FROM [student] WHERE ([stu_ID] = @stu_ID)" UpdateCommand="UPDATE [student] SET [stu_Fees] = @stu_Fees WHERE [stu_ID] = @original_stu_ID AND [stu_Fees] = @original_stu_Fees">
            <DeleteParameters>
                <asp:Parameter Name="original_stu_ID" Type="String" />
                <asp:Parameter Name="original_stu_Fees" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stu_ID" Type="String" />
                <asp:Parameter Name="stu_Fees" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="studentID" Name="stu_ID" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="stu_Fees" Type="Decimal" />
                <asp:Parameter Name="original_stu_ID" Type="String" />
                <asp:Parameter Name="original_stu_Fees" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    


</asp:Content>