<%@ Page Title="Students Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="M3Proj.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link rel="stylesheet" href="\teacherstyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container-xxl position-relative p-0">        
    <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Students Overview</h1>
                    
                </div>
            </div>
        </div>


    <div id="div1" runat="server" class="main-body"></div>

    <div class="container">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
								<div class="mt-3">
									<h4><%= sName  %> &nbsp <%= sLast%></h4>
									<p class="text-secondary mb-1">Student ID:<%= sID%></p>
									<p class="text-muted font-size-sm"><%= sEmail %></p>
									<asp:Button ID="Button3" Cssclass="btn btn-primary" runat="server" Text="Add Mark" OnClick="Button3_Click"  />
                                    
                                    <asp:Button ID="Button2" CssClass="btn btn-outline-primary" runat="server" Text="View Report" OnClick="Button2_Click" />
									
								</div>
							</div>
							<hr class="my-4">
							<ul  class="list-group list-group-flush">
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0">Parent No:</h6>
									<span class="text-secondary"><%= pNum %></span>
								</li>
								
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0">Gender:</h6>
									<span class="text-secondary"><%= sGender %></span>
								</li>
								
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0">Age:</h6>
									<span class="text-secondary"><%= sAge %></span>
								</li>
								
								
								
							</ul>
						</div>
					</div>
				</div>



				<div class="col-lg-8">
					<div class="card">
                      
                      
						<div class="card-body">
                          <asp:GridView  style="border-radius:5px;" ID  ="datagrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnSelectedIndexChanged="datagrid_SelectedIndexChanged" DataSourceID="SqlDataSource1"   DataKeyNames="stu_ID" AutoGenerateColumns="False" OnRowDataBound="datagrid_RowDataBound"   >
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="stu_ID" HeaderText="stu_ID" ReadOnly="True" SortExpression="stu_ID" />
                                    <asp:BoundField DataField="stu_name" HeaderText="stu_name" SortExpression="stu_name" />
                                    <asp:BoundField DataField="stu_surname" HeaderText="stu_surname" SortExpression="stu_surname" />
                                    <asp:BoundField DataField="stu_email" HeaderText="stu_email" SortExpression="stu_email" />
                                    <asp:BoundField DataField="stu_age" HeaderText="stu_age" SortExpression="stu_age" />
                                    <asp:BoundField DataField="stu_gender" HeaderText="stu_gender" SortExpression="stu_gender" />
                                    <asp:BoundField DataField="parentContact" HeaderText="parentContact" SortExpression="parentContact" />
                                </Columns>
<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
                            </asp:GridView>


						        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb2ConnectionString2 %>" SelectCommand="SELECT [stu_ID], [stu_name], [stu_surname], [stu_email], [stu_age], [stu_gender], [parentContact] FROM [student] WHERE ([classID] = @classID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label1" Name="classID" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


						</div>
					</div>
					
				</div>




			</div>
		</div>
	</div>

<style type="text/css">
body{
    background: #f7f7ff;
    margin-top:20px;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
}
.me-2 {
    margin-right: .5rem!important;
}

.rounded {
    border-radius: 2px !important;
}

 .input-group {
        margin-bottom: 15px;
        width:65% !important;
}
</style>

<script type="text/javascript">

</script>

<style type="text/css">

/*** GridView***/


.mydatagrid
{
width: 100%;
border: solid 1px black;
min-width: 80%;
border-radius:5px;
}
.header
{
background-color:  #0E2E50;

font-family: Arial;
color: White;
border: none 0px transparent;
height: 25px;
text-align: center;
font-size: 16px;
}

.rows
{
background-color:#7293FA;
font-family: Arial;
font-size: 14px;
color: #fff;
min-height: 25px;
text-align: left;
border: none 0px transparent;
}
.rows:hover
{
background-color: #0b1a75;
font-family: Arial;
color: #fff;
text-align: left;
}
.selectedrow
{
background-color: #0E2E50;
font-family: Arial;
color: #fff;
font-weight: bold;
text-align: left;
}
.mydatagrid a /** FOR THE PAGING ICONS **/
{
background-color: Transparent;
padding: 5px 5px 5px 5px;
color: #fff;
text-decoration: none;
font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
{
background-color: #000;
color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
background-color: #c9c9c9;
color: #000;
padding: 5px 5px 5px 5px;
}
.pager
{
background-color: #646464;
font-family: Arial;
color: White;
height: 30px;
text-align: left;
}

.mydatagrid td
{
padding: 5px;
}
.mydatagrid th
{
padding: 5px;
}




</style>
    
</asp:Content>
