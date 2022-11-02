<%@ Page Title="Class Lists" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="M3Proj.ClassList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container-xxl position-relative p-0">        
    <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Class Lists</h1>    
                </div>
            </div>
        </div>

    <br />
    <br />

    
        <asp:Label Text="Grade" runat="server" />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="gradeDDL" DataTextField="grade" DataValueField="grade">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:Label Text="Division" runat="server" />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="DivDDL" DataTextField="Division" DataValueField="Division">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        

    <div style="display:flex; justify-content:center;"">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="class_id,teach_ID,stu_ID" DataSourceID="ClassListDDL" ForeColor="Black" HorizontalAlign="Center" BackColor="#F9F9F9" GridLines="Horizontal">
            <Columns>
                 <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="40px"></ItemStyle>
                     <ItemTemplate>
                         <%# Container.DataItemIndex + 1 %>
                     </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField  DataField="stu_surname" HeaderText="Surname " SortExpression="stu_surname" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px" >
                    <ItemStyle BorderColor="Black" BorderWidth="1px" BorderStyle="Solid"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="stu_name" HeaderText="Name " SortExpression="stu_name" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle BorderColor="Black" BorderWidth="1px" BorderStyle="Solid"></ItemStyle>
                </asp:BoundField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                 <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-BorderStyle="Solid" ItemStyle-BorderColor="Black" ItemStyle-BorderWidth="1px">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                
            </Columns>
            <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
            <FooterStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" BackColor="White" Font-Bold="True" HorizontalAlign="Center" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="gradeDDL" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT DISTINCT [grade] FROM [classes] ORDER BY [grade]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DivDDL" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT DISTINCT [Division] FROM [classes] WHERE ([grade] = @grade) ORDER BY [Division]">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="grade" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="ClassListDDL" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString %>" SelectCommand="SELECT classes.class_id, classes.teacher_id, classes.grade, classes.Division, student.stu_name, student.stu_surname, student.classID, Teachers.teach_ID, Teachers.teach_firstname, Teachers.teach_lastname, student.stu_ID, classes.numStudents FROM classes INNER JOIN student ON classes.class_id = student.classID INNER JOIN Teachers ON classes.teacher_id = Teachers.teach_ID WHERE (classes.grade = @grade) AND (classes.Division = @Division) ORDER BY  student.stu_surname, student.stu_name">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="grade" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="Division" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
    
        
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    
</asp:Content>

