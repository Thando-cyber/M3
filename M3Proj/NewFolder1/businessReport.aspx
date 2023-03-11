<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="businessReport.aspx.cs" Inherits="M3Proj.businessReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kharina Business Report</title>
     <link href="CSS/bootstrap.min.css" rel="stylesheet"/>

      <script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>
</head>

    <body>
    <form id="form1" runat="server">

        <div class="container-xxl position-relative p-0 top">        
    <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Business Reports</h1>
                    
                </div>
            </div>
        </div>

        <div class="btndiv">
             <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" onclick="history.back()">Click to go back</a>

        </div>

        <div class="print">
             <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" onclick="window.print()">Print</a>

        </div>

        

 <div class="centre  print-container">

        
 <div class="gradient-custom-2 h-100">

 
   <section class="intro c1" style="margin-bottom:7vh;">
  
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="table-responsive">
                 
   <canvas id="myChart" style="width:100%;max-width:700px"></canvas>

    <script type="text/javascript">
        var xValues = ["Grade 8", "Grade 9", "Grade 10", "Grade 11", "Grade 12"];
var yValues = [<%=gr8%>,<%=gr9%>,<%=gr10%>, <%=gr11%>, <%=gr12%>];
var barColors = ["red", "green","blue","orange","brown"];

new Chart("myChart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Number of students per grade"
    }
  }
});
</script>
   
              

               
            </div>
          </div>
        </div>
      </div>
    </div>
 
</section>


      <section class="intro c2 " style="margin-bottom:7vh;">
  
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="table-responsive">
                 
   <canvas id="myChart2" style="width:100%;max-width:700px"></canvas>

    <script type="text/javascript">
        var xValues = ["Gr8 Amount", "Gr9 Amount", "Gr10 Amount", "Gr11 Amount", "Gr12 Amount"];
var yValues = [<%=am8%>, <%=am8%>, <%=am8%>, <%=am8%>,<%=am8%>];
var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
];

new Chart("myChart2", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: "Total amount paid per grade"
    }
  }
});
</script>

   
              

               
            </div>
          </div>
        </div>
      </div>
    </div>
 
</section>

      <section class="intro c3">
  
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="table-responsive">
                 
   <canvas id="myChart3" style="width:100%;max-width:700px"></canvas>

    <script type="text/javascript">
var xValues = ["Boys", "Girls"];
var yValues = [<%=boy%>, <%=girl%>];
var barColors = ["red", "green"];

new Chart("myChart3", {
  type: "doughnut",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Total Boys vs Girls in Kharina Secondary"
    }
  }
});
    </script>
   
              

               
            </div>
          </div>
        </div>
      </div>
    </div>
 
</section>











</div>
 </div>


 <style type="text/css">



.intro {
  height: 100%;
}

.last{
    margin-bottom:10vh;
}

.last h5{
    color:#424242;
}
.last h6{
    color:#424242;
}
.t2{
    margin-top:16px;
    margin-bottom:20vh;

}

.t1{
    margin-bottom:10vh;

}

.top{
    margin-bottom: 5vh;
}

.btndiv{
    margin-bottom: 10vh;
    margin-left:25vh;
}


.btndiv{
    margin-bottom: 3vh;
    margin-left:25vh;
}

.print{
    margin-bottom: 10vh;
    margin-left:25vh;
}

 .btn-primary {
    color: white;
    background-color: #000000;
    border-color: #000000;
}

 .btn-primary:hover{
     background-color: #058ff7;
 }


.bg-primary {
    background-color: #000000 !important;
}

.table>:not(caption)>*>* {
    background-color:white;
}

.centre{
    display:flex;
    justify-content:center;
    align-items: center;
    margin-top:3vh;

}

.report-header{
    display:flex;
    margin-bottom:8vh;
    margin-top:7vh;
    align-items:center;
    justify-content:center;

}

.logo{

    width:20vh;
    height:20vh;
    margin-right:5vh;

}

.logo img{
    width:100%;
    height:100%;
}

.table-dark
 {

    border-color:#a7a4a4;

 }

.gradient-custom-2 {
    padding: 0px 4vh;
    width:75%;
  background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);

}

table td,
table th {
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
}

thead th,
tbody th {
  color: #000000;
}

tbody td {
  font-weight: 500;
  color: #000000;
}

body{
    background: #fafafa;
}

@media print{
    body *{
        visibility:hidden;
    }

    .print-container, .print-container *{
        visibility:visible;
    }


}




 </style>



    </form>
</body>
</html>
