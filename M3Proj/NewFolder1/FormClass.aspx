<%@ Page Title="Form Class" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormClass.aspx.cs" Inherits="M3Proj.FormClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-xxl position-relative p-0">        
    <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Form Classes</h1>
                    
                </div>
            </div>
        </div>

    <br />
    <br />

    <div style="display:flex; justify-content:center; text-align:center;"> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="teach_ID" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="952px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="teacher_id" HeaderText="Teacher ID" SortExpression="teacher_id" />
                <asp:BoundField DataField="teach_firstname" HeaderText="Name(s)" SortExpression="teach_firstname" />
                <asp:BoundField DataField="teach_lastname" HeaderText="Lastname" SortExpression="teach_lastname" />
                <asp:BoundField DataField="teach_email" HeaderText="Email" SortExpression="teach_email" />
                <asp:BoundField DataField="grade" HeaderText="Grade" SortExpression="grade" />
                <asp:BoundField DataField="Division" HeaderText="Division" SortExpression="Division" />
                <asp:BoundField DataField="numStudents" HeaderText="Class Roll" SortExpression="numStudents" />
                <asp:BoundField DataField="buildingNo" HeaderText="Room No" SortExpression="buildingNo" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT classes.grade, classes.Division, classes.teacher_id, Teachers.teach_ID, Teachers.teach_firstname, Teachers.teach_lastname, Teachers.teach_email, classes.numStudents, classes.buildingNo FROM classes INNER JOIN Teachers ON classes.teacher_id = Teachers.teach_ID ORDER BY classes.grade, classes.Division"></asp:SqlDataSource>
    </div>
</asp:Content>