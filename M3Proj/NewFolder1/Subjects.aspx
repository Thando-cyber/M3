<%@ Page Title="Results Capture" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Subjects.aspx.cs" Inherits="M3Proj.NewFolder1.Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
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
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </div>
                       
                        
                            <label for="lan">Term</label>
                            <select name="Term" id="lang">
                                <option value="1">Term 1</option>
                                <option value="2">Term 2</option>
                                <option value="3">Term 3</option>
                                <option value="4">Term 4</option>
                             </select>
                        </center>
                        <center>
                        <table border="1" cellspacing="5" class="auto-style4" bgcolor="white"  style="width:1000px">
                            <caption><b>Enter Marks</b></caption>
                            
                            <tr style="background: silver;">
                                <th rowspan="2" class="auto-style10">Subject</th>
                                <!--th colspan="6">Marks</!th-->
                            </tr>
                            <tr style="background: silver;">
                                <th class="auto-style9">Assessment 1</th>
                                <th class="auto-style9">Assessment 2</th>
                                <th class="auto-style9">Assessment 3</th>
                                <th class="auto-style10">Assessment 4</th>
                                <th class="auto-style9">Test 1</th>
                                <th class="auto-style11">Test 2</th>

                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" Text="English" ID="Textbox44"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="Button2" CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" />
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses1"></asp:TextBox>
                                    <br />
                                    </td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses2"></asp:TextBox>
                                    <br />
                                    </td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses3"></asp:TextBox>
                                    <br />
                                    </td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Asses4"></asp:TextBox>

                                    <br />
                                    </td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Test1"></asp:TextBox>
                                    <br />
                                    </td>
                                <td class="auto-style5">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="Test2"></asp:TextBox>
                                    <br />
                                    </td> 
                            </tr>
                           
                            <tr>
                                <td class="auto-style3">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox2"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="Button3" CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox3"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1">-</span></td>
                                <td class="auto-style8">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox4"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td class="auto-style8">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox5"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td class="auto-style3">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox6"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style8">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox7"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style6">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox8"></asp:TextBox>

                                    <br />
                                    -</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" Text="Life Orientation" ID="TextBox9"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1">&nbsp;<asp:Button ID="Button4"  CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" />
                                    </span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox10"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1">-</span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox11"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox12"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox13"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox14"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style5">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox15"></asp:TextBox>

                                    <br />
                                    -</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox16"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1"><asp:Button ID="Button5" CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" />
                                    </span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox17"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1">-</span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox18"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox19"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox20"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox21"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style5">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox22"></asp:TextBox>

                                    <br />
                                    -</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox23"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1"><asp:Button ID="Button6"  CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" />
                                    </span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox24"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1">-</span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox25"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox26"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox27"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox28"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style5">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox29"></asp:TextBox>

                                    <br />
                                    -</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox30"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1"><asp:Button ID="Button7" CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px" />
                                    </span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox31"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1">-</span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox32"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox33"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox34"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox35"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style5">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox36"></asp:TextBox>

                                    <br />
                                    -</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox37"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1"><asp:Button ID="Button8"  CssClass="btn btn-outline-primary"  runat="server" Text="Capture" Width="102px" style="Margin-Top:5px"/>
                                    </span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox38"></asp:TextBox>
                                    <br />
                                    <span class="auto-style1">-</span></td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox39"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox40"></asp:TextBox>
                                    <br />
                                    -</td>
                                <td>
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox41"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style7">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox42"></asp:TextBox>

                                    <br />
                                    -</td>
                                <td class="auto-style5">
                                    <asp:TextBox type="text" ClientIDMode="static" runat="server" ID="TextBox43"></asp:TextBox>

                                    <br />
                                    -</td>
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
    <style type="text/css">
        .auto-style1 {
            font-size: xx-small;
        }
        .auto-style3 {
            height: 53px;
        }
        .auto-style4 {
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            font-family: sans-serif;
            min-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            width: 1036px;
        }
        .auto-style5 {
            width: 89px;
        }
        .auto-style6 {
            height: 53px;
            width: 89px;
        }
        .auto-style7 {
            width: 90px;
        }
        .auto-style8 {
            height: 53px;
            width: 90px;
        }
        .auto-style9 {
            width: 90px;
            font-size: small;
        }
        .auto-style10 {
            font-size: small;
        }
        .auto-style11 {
            width: 89px;
            font-size: small;
        }
    </style>
</asp:Content>

