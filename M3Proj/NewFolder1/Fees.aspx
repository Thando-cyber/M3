<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="M3Proj.NewFolder1.Fees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <div class="container-xxl position-relative p-0">        
    <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Payments Overview</h1>
                    
                </div>
            </div>
        </div>

    <br />
    <br />
    <br />
    <br />
    <div style="text-align:center;">
        <h2>Amount Owed by Student:  R <%= amount.ToString("0.00") %></h2>  
    </div >
         
            
    <br />
    <br />
    <h4 style="text-align:center;">Payment History</h4>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="receiptNum" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="896px" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="receiptNum" HeaderText="receiptNum" ReadOnly="True" SortExpression="receiptNum">
            </asp:BoundField>
            <asp:BoundField DataField="AdminID" HeaderText="AdminID" SortExpression="AdminID">
            </asp:BoundField>
            <asp:BoundField DataField="stu_ID" HeaderText="stu_ID" SortExpression="stu_ID">
            </asp:BoundField>
            <asp:BoundField DataField="pay_Date" HeaderText="pay_Date" SortExpression="pay_Date">
            </asp:BoundField>
            <asp:BoundField DataField="pay_Amount" HeaderText="pay_Amount" SortExpression="pay_Amount">
            </asp:BoundField>
            <asp:BoundField DataField="pay_Type" HeaderText="pay_Type" SortExpression="pay_Type">
            </asp:BoundField>
            <asp:BoundField DataField="pay_Details" HeaderText="pay_Details" SortExpression="pay_Details">
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <div style="text-align:center" draggable="false"> 

        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="receiptNum" DataValueField="receiptNum"></asp:DropDownList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [PaymentService] WHERE ([stu_ID] = @stu_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="stu_ID" SessionField="stuID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <div style="text-align: center;">
        <asp:TextBox ID="TextBox1" runat="server" CssClass=""></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="btn-dark" Text="Pay" Width="67px" />
        
        &nbsp;&nbsp;&nbsp;
        
        <select name="Type" id="lang">
            <option value="EFT">EFT</option>
            <option value="Cash">Cash</option>
            <option value="Other">Other</option>
            
        </select>
        <br />
    </div>
    <br />
    <br />
    <br />
</asp:Content>
