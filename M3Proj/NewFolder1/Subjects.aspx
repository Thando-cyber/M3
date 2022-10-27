<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Subjects.aspx.cs" Inherits="M3Proj.NewFolder1.Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../CSS/masterstyle.css" />
    <div class="container-xxl position-relative p-0">
        <div class="container-xxl bg-primary page-header">
            <div class="container text-center">
                <h1 class="text-white animated zoomIn mb-3">Results Capture</h1>
                <asp:HiddenField ClientIDMode="Static" ID="hdnfldVariable" runat="server" />

            </div>
        </div>
    </div>

                        <div class="dropdown-menu m-0">
                            <a id="term1" class="dropdown-item" value="1">Term 1</a>
                            <a id="term2" class="dropdown-item" value="2">Term 2</a>
                            <a id="term3" class="dropdown-item" value="3">Term 3</a>
                            <a id="term4" class="dropdown-item" value="4">Term 4</a>
                        </div>
                   
                    <center>
                        <div>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </div>

                        <table border="1" cellspacing="5" class="styled-table" bgcolor="white">
                            <caption><b>Enter Marks</b></caption>
                            
                            <tr style="background: silver;">
                                <th rowspan="2">Name</th>
                                <th colspan="6">Marks</th>
                            </tr>
                            <tr style="background: silver;">
                                <th>Assessment 1</th>
                                <th>Assessment 2</th>
                                <th>Assessment 3</th>
                                <th>Assessment 4</th>
                                <th>Test 1</th>
                                <th>Test 2</th>

                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="name"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses1"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses2"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses3"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses4"></asp:TextBox>

                                </td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Test1"></asp:TextBox>

                                </td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Test2"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <th colspan="7" height="30">
                                    <input type="submit" value="Calculate" onclick="Sub()" class="btn btn-primary">
                                    <asp:Button ID="btnCapt" Text="Capture" CssClass="btn-outline-primary" runat="server"></asp:Button>
                                </th>
                            </tr>
                        </table>
                        <br>
                        <table border="1" cellspacing="5" bgcolor="white"
                            height="100" width="500" cellpadding="5" id="TableScore">
                            <caption><b>Student Data</b></caption>
                            <tr>
                                <th width="180">Name</th>
                                <th>Final</th>
                                <!--th>Average</th-->
                                <th>Pass Or Fail</th>
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
</asp:Content>

