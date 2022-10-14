<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="M3Proj.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link rel="stylesheet" href="\teacherstyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class ="teacherbar">

        <ul>
            
            <li><a href="#"> View details</a></li>
             <li><a href="#"> Update details</a></li> 
            <li><a href="#"> Delete details</a></li>
             <li><a href="#"> View reports</a></li>


        </ul>
    </div>
    <section class ="s1">

        <div class ="gridbox">
            <asp:GridView ID="GridView1" CssClass="mydatagrid" PagerStyle-CssClass="pager"  HeaderStyle-CssClass="header"  RowStyle-CssClass="rows" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="stu_ID" DataSourceID="SqlDataSource2">
                <Columns>

                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="stu_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="stu_ID" />
                    <asp:BoundField DataField="classID" HeaderText="Class ID" SortExpression="classID" />
                    <asp:BoundField DataField="stu_name" HeaderText="Name" SortExpression="stu_name" />
                    <asp:BoundField DataField="stu_surname" HeaderText="Surname" SortExpression="stu_surname" />
                    <asp:BoundField DataField="stu_address" HeaderText="Address" SortExpression="stu_address" />
                    <asp:BoundField DataField="stu_email" HeaderText="E-mail" SortExpression="stu_email" />
                    <asp:BoundField DataField="stu_age" HeaderText="Age" SortExpression="stu_age" />
                    <asp:BoundField DataField="stu_gender" HeaderText="Gender" SortExpression="stu_gender" />
                    <asp:BoundField DataField="stu_Fees" HeaderText="Fees Owed" SortExpression="stu_Fees" />
                    <asp:BoundField DataField="parentContact" HeaderText="Contact" SortExpression="parentContact" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
        <div class="controlbox">
              <asp:TextBox ID="TextBox1" runat="server" placeholder="Student ID"></asp:TextBox>
              <asp:TextBox CssClass="stuID" ID="TextBox2" runat="server"  placeholder="Student ID"></asp:Textbox>
              <asp:TextBox CssClass="stuID" ID="TextBox3" runat="server"  placeholder="Class ID"></asp:TextBox>
              <asp:TextBox CssClass="stuID" ID="TextBox4" runat="server"  placeholder="Name "></asp:TextBox>
              <asp:TextBox CssClass="stuID" ID="TextBox5" runat="server"  placeholder="Surname"></asp:TextBox>
              <asp:TextBox CssClass="stuID" ID="TextBox7" runat="server"  placeholder="Email"></asp:TextBox>
              <asp:TextBox CssClass="stuID" ID="TextBox8" runat="server"  placeholder="Age"></asp:TextBox>
             <asp:TextBox CssClass="stuID" ID="TextBox6" runat="server"  placeholder="Address"></asp:TextBox>
              <asp:TextBox CssClass="stuID" ID="TextBox9" runat="server"  placeholder="Gender"></asp:TextBox>
              <asp:TextBox CssClass="stuID" ID="TextBox10" runat="server"  placeholder="Parent Contact"></asp:TextBox>

        </div>


    </section>
</asp:Content>
