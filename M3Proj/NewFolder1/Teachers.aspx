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

    <div style="display:flex; justify-content:center;  text-align:center;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="teach_ID" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="939px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="teach_ID" HeaderText="Teacher ID" SortExpression="teach_ID" ReadOnly="True" />
                <asp:BoundField DataField="teach_firstname" HeaderText="Name(s)" SortExpression="teach_firstname" ControlStyle-Width="100px"/>
                <asp:BoundField DataField="teach_lastname" HeaderText="Last Name" SortExpression="teach_lastname" ControlStyle-Width="100px"/>
                <asp:BoundField DataField="teach_email" HeaderText="Email Address" SortExpression="teach_email" ControlStyle-Width="200px"/>
                <asp:BoundField DataField="teach_title" HeaderText="Title" SortExpression="teach_title" ControlStyle-Width="100px"/>
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" ControlStyle-Width="100px"/>
                <asp:BoundField DataField="contactNum" HeaderText="Contact Details" SortExpression="contactNum" ControlStyle-Width="100px"/>
                <asp:BoundField DataField="Address" HeaderText="Physical Address" SortExpression="Address" ControlStyle-Width="230px" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" ControlStyle-Width="40px" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [Teachers] ORDER BY [teach_firstname], [teach_lastname]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Teachers] WHERE [teach_ID] = @original_teach_ID AND [teach_firstname] = @original_teach_firstname AND [teach_lastname] = @original_teach_lastname AND [teach_email] = @original_teach_email AND [teach_title] = @original_teach_title AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([contactNum] = @original_contactNum) OR ([contactNum] IS NULL AND @original_contactNum IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))" InsertCommand="INSERT INTO [Teachers] ([teach_ID], [teach_firstname], [teach_lastname], [teach_email], [teach_title], [gender], [contactNum], [Address], [age]) VALUES (@teach_ID, @teach_firstname, @teach_lastname, @teach_email, @teach_title, @gender, @contactNum, @Address, @age)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Teachers] SET [teach_firstname] = @teach_firstname, [teach_lastname] = @teach_lastname, [teach_email] = @teach_email, [teach_title] = @teach_title, [gender] = @gender, [contactNum] = @contactNum, [Address] = @Address, [age] = @age WHERE [teach_ID] = @original_teach_ID AND [teach_firstname] = @original_teach_firstname AND [teach_lastname] = @original_teach_lastname AND [teach_email] = @original_teach_email AND [teach_title] = @original_teach_title AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([contactNum] = @original_contactNum) OR ([contactNum] IS NULL AND @original_contactNum IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_teach_ID" Type="String" />
            <asp:Parameter Name="original_teach_firstname" Type="String" />
            <asp:Parameter Name="original_teach_lastname" Type="String" />
            <asp:Parameter Name="original_teach_email" Type="String" />
            <asp:Parameter Name="original_teach_title" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_contactNum" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_age" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="teach_ID" Type="String" />
            <asp:Parameter Name="teach_firstname" Type="String" />
            <asp:Parameter Name="teach_lastname" Type="String" />
            <asp:Parameter Name="teach_email" Type="String" />
            <asp:Parameter Name="teach_title" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="contactNum" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="teach_firstname" Type="String" />
            <asp:Parameter Name="teach_lastname" Type="String" />
            <asp:Parameter Name="teach_email" Type="String" />
            <asp:Parameter Name="teach_title" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="contactNum" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="original_teach_ID" Type="String" />
            <asp:Parameter Name="original_teach_firstname" Type="String" />
            <asp:Parameter Name="original_teach_lastname" Type="String" />
            <asp:Parameter Name="original_teach_email" Type="String" />
            <asp:Parameter Name="original_teach_title" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_contactNum" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_age" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
