<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Subjects.aspx.cs" Inherits="M3Proj.NewFolder1.Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="~/CSS/info.css" />
    <div class="container-xxl position-relative p-0">
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Results Capture</h1>
                <asp:HiddenField ClientIDMode="Static" ID="hdnfldVariable" runat="server" />

            </div>
            
        </div>
    </div>
    
                   
                    <center>
                        <div>
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
                            <br />
                            <br />
                        </div>
                        <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Term" DataValueField="TermNo">
                        </asp:DropDownList>
&nbsp;<div>
                            <strong>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            </strong>
                        </div>
                        <div>
                            <strong><asp:Label ID="Label1" runat="server"></asp:Label></strong></div>
                        
                        <div>

                        </div>
                        </center>
<br />
                        <center>
                        <table border="1" cellspacing="5" class="card-body" bgcolor="white"  style="width:900px">
                            <caption><b>Enter Marks</b></caption>
                            
                            <tr style="background: silver;">
                                <th rowspan="2" class="auto-style22">Subject</th>
                                <!--th colspan="6">Marks</!th-->
                            </tr>
                            <tr style="background: silver;">
                                <th class="auto-style20">Assessment 1</th>
                                <th class="auto-style20">Assessment 2</th>
                                <th class="auto-style20">Assessment 3</th>
                                <th class="auto-style20">Assessment 4</th>
                                <th class="auto-style20">Test 1</th>
                                <th class="auto-style20">Test 2</th>

                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource2" DataTextField="subject_name" DataValueField="subject_ID">
                                    </asp:DropDownList>
                                    <br />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button2" CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" OnClick="Button2_Click" />
                                </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" Text="" ID="Asses1" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static"  runat="server" ID="Asses2" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses3" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style19">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses4" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Test1" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Test2" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td> 
                                
                            </tr>
                           
                            <tr>
                                <td class="auto-style23">
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="subject_name" DataValueField="subject_ID">
                                    </asp:DropDownList>
                                    <br />
                                    &nbsp;
                                    <asp:Button ID="Button3" CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" OnClick="Button3_Click" />
                                </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox3" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox4" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox5" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style19">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox6" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox7" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox8" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource2" DataTextField="subject_name" DataValueField="subject_ID">
                                    </asp:DropDownList>
                                    <br />
                                    <span class="auto-style1">&nbsp; <asp:Button ID="Button4"  CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" OnClick="Button4_Click" />
                                    </span></td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox10" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox11" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox12" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style19">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox13" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox14" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox15" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject_name" DataValueField="subject_ID">
                                    </asp:DropDownList>
                                    <br />
                                    <span class="auto-style1">&nbsp; <asp:Button ID="Button5"   runat="server" Text="Capture" Width="102px" style="Margin-Top:5px; height: 25px;" OnClick="Button5_Click" />
                                    </span></td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox17" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox18" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox19" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style19">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox20" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox21" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox22" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject_name" DataValueField="subject_ID">
                                    </asp:DropDownList>
                                    <br />
                                    <span class="auto-style1">&nbsp; <asp:Button ID="Button6"  CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" OnClick="Button6_Click" />
                                    </span></td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox24" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox25" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox26" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style19">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox27" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox28" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox29" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject_name" DataValueField="subject_ID">
                                    </asp:DropDownList>
                                    <br />
                                    <span class="auto-style1">&nbsp; <asp:Button ID="Button7" CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" OnClick="Button7_Click" />
                                    </span></td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox31" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox32" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox33" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style19">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox34" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox35" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox36" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject_name" DataValueField="subject_ID">
                                    </asp:DropDownList>
                                    <br />
                                    <span class="auto-style1">&nbsp; <asp:Button ID="Button8"  CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" OnClick="Button8_Click"/>
                                    </span></td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox38" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox39" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox40" Width="80px"></asp:TextBox>
                                    <strong>
                                    <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label>
                                    </strong>
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style19">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox41" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox42" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                                <td class="auto-style21">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox43" Width="80px"></asp:TextBox>

                                    <strong>
                                    <asp:Label ID="Label44" runat="server" Text="Label"></asp:Label>
                                    </strong>

                                    <br />

                                    <br />
                                    </td>
                            </tr>
                            <!--tr>
                                <th colspan="7" height="30">
                                    <input type="submit" value="Calculate" onclick="Sub()" class="btn btn-primary">
                                    <asp:Button ID="btnCapt" Text="Capture" CssClass="btn-outline-primary" runat="server"></asp:Button>
                                </th>
                            </!--tr-->
                        </table>
                        </center>
                        <br>
                        <center>
                        <table border="1" cellspacing="5" bgcolor="white"
                            height="100" width="500" cellpadding="5" id="TableScore">
                            <caption>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [subjects] WHERE ([Divis] = @Divis)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Divis" SessionField="Division" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Term]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT subject_ID, subject_name, subjDetails, Divis FROM subjects WHERE (Divis = 'E')"></asp:SqlDataSource>
                                <br />
                                <asp:Label ID="subjectAll" runat="server" Text="E"></asp:Label>
                            </caption>
                            <tr>
                                <!--th>Average</th-->
                                <th>&nbsp;</th>
                            </tr>
                        </table>
                    </center>
                

    <script type="text/javascript">
        function Sub() {
            var n, k, A1, A2, A3, A4, T1, T2, sum, avg;
            var hdnfldVariable = document.getElementById('hdnfldVariable');
            n = (document.getElementById('name').value);
            Asses1 = parseFloat(document.getElementById('Asses1').value);
            Asses2 = parseFloat(document.getElementById('Asses2').value);
            Asses3 = parseFloat(document.getElementById('Asses3').value);
            Asses4 = parseFloat(document.getElementById('Asses4').value);
            Test1 = parseFloat(document.getElementById('Test1').value);
            Test2 = parseFloat(document.getElementById('Test2').value);
            // Calculating the Total Marks
            A1 = Asses1 * 0.1;
            A2 = Asses2 * 0.1;
            A3 = Asses3 * 0.1;
            A4 = Asses4 * 0.1;
            T1 = Test1 * 0.3;
            T2 = Test2 * 0.3;
            k = Test1 + Test2;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            avg = sum / 4;
            hdnfldVariable.value = sum;
            // Displaying the Student Data
            var newTable = document.getElementById('TableScore');
            var row = newTable.insertRow(-1);
            var cell1 = row.insertCell(0);
            //var cell2 = row.insertCell(0);
            var cell3 = row.insertCell(0);
            var cell4 = row.insertCell(0);
            cell4.innerHTML = n;
            cell3.innerHTML = sum;
            //cell2.innerHTML = avg;
            if (sum >= 50) {
                cell1.innerHTML = "<font color=green>Pass</font>";
            } else {
                cell1.innerHTML = "<font color=red>Fail</font>";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <link rel ="stylesheet" href="../teacherstyle.css" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-small;
        }
        .auto-style19 {
            height: 80px;
            text-align: center;
            width: 100px;
        }
        .auto-style20 {
            width: 100px;
            font-size: small;
        }
        .auto-style21 {
            width: 100px;
            height: 80px;
        }
        .auto-style22 {
            width: 115px;
            font-size: small;
        }
        .auto-style23 {
            width: 115px;
            height: 80px;
        }
    </style>
</asp:Content>

