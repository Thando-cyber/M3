<%@ Page Title="Subject Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="M3Proj.NewFolder1.Subjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2 style="text-align:center;">Available Subjects</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="subject_ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="850px">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="subject_name" HeaderText="Subject" SortExpression="subject_name"></asp:BoundField>
            <asp:BoundField DataField="subject_ID" HeaderText="Code" SortExpression="subject_ID" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="subjDetails" HeaderText="Details" SortExpression="subjDetails"></asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT * FROM [subjects] ORDER BY [subject_name]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [subjects] WHERE [subject_ID] = @original_subject_ID AND [subject_name] = @original_subject_name AND [subjDetails] = @original_subjDetails" InsertCommand="INSERT INTO [subjects] ([subject_ID], [subject_name], [subjDetails]) VALUES (@subject_ID, @subject_name, @subjDetails)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [subjects] SET [subject_name] = @subject_name, [subjDetails] = @subjDetails WHERE [subject_ID] = @original_subject_ID AND [subject_name] = @original_subject_name AND [subjDetails] = @original_subjDetails">
        <DeleteParameters>
            <asp:Parameter Name="original_subject_ID" Type="String" />
            <asp:Parameter Name="original_subject_name" Type="String" />
            <asp:Parameter Name="original_subjDetails" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="subject_ID" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" Name="subject_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="subjDetails" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="subject_name" Type="String" />
            <asp:Parameter Name="subjDetails" Type="String" />
            <asp:Parameter Name="original_subject_ID" Type="String" />
            <asp:Parameter Name="original_subject_name" Type="String" />
            <asp:Parameter Name="original_subjDetails" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <div style="text-align:center; margin: 50px auto 0;">
        <h3 style="margin: 20px auto 15px auto">Add a new Subject:</h3>
        <asp:Label ID="sub_name" runat="server" Text="Subject name: " style="margin: 10px auto"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin: 10px " Width="226px"></asp:TextBox>
        <br />
        <asp:Label ID="sub_id" runat="server" Text="Subject Code:" style="margin: 10px auto"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin: 10px " Width="226px"></asp:TextBox>
        <br />
        <asp:Label ID="sub_detail" runat="server" Text="Subject Details:  " style="margin: 10px auto"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin: 10px " Width="226px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Subject" OnClick="Button1_Click" style="margin: 10px auto" />
    </div>

    <br />
    <br />

</asp:Content>
