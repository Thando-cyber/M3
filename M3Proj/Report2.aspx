<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report2.aspx.cs" Inherits="M3Proj.Report2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kharina Report Viewer</title>
     <link href="CSS/bootstrap.min.css" rel="stylesheet"/>
</head>

    <body>
    <form id="form1" runat="server">

        <div class="container-xxl position-relative p-0 top">        
    <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">Report Viewer</h1>
                    
                </div>
            </div>
        </div>

        <div class="btndiv">
             <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" onclick="history.back()">Click to go back</a>

        </div>

 <div class="centre">

        
 <div class="gradient-custom-2 h-100">

 <section class="intro t2 t1">
 
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="table-responsive">
                <div class="report-header">
                    <div class="logo">
                        <img src="Photos/download-removebg-preview-modified.png"/>
                    </div>
                    <h1>Kharina Secondary school</h1>

                </div>


              <table class="table table-dark table-bordered mb-0">
                <thead>
                 
                </thead>
                <tbody>
                  <tr>
                    <th scope="row" style="width:350.28px;" >Name:<%= name %></th>
                      <th scope="row" style="width:350.28px;" >School year: <% Response.Write(DateTime.Now.ToShortDateString()); %> </th>
                    

                    
                   
                  </tr>

                    <tr>
                    <th scope="row" style="width:350.28px;" >Grade: <%= grade %></th>
                    <th scope="row" style="width:350.28px;" >Term:<%= term %></th>
                    

                    
                   
                  </tr>

                    
                    <tr>
                   
                     <th scope="row" style="width:350.28px;" >Division:<%= division %></th>
                    <th scope="row" style="width:350.28px;" >Fees:<%= fees %></th>

                    
                   
                  </tr>

                    <tr>
                   
                     <th scope="row" style="width:350.28px;" >Teacher: <%= teachername %> </th>
                    <th scope="row" style="width:350.28px;" >Student ID:<%= stuID%> </th>

                    
                   
                  </tr>


                  
                </tbody>
              </table>
                

               
            </div>
          </div>
        </div>
      </div>
    </div>

</section>

      <section class="intro">
  
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="table-responsive">
                 
              <table class="table table-dark table-bordered mb-0">
               
                <tbody>
                    <tr>
                   
                        
                   <td>
                     <table class="table table-dark table-bordered mb-0">   
                     <thead>
                  <tr>
                    <th scope="col" style="background-color:#000000; color:white;" >Subjects</th>
                    <th scope="col" style="background-color:#424242; color:white;">Term 1</th>
                    
                   
                  </tr>
                </thead>
                    <% 
                        foreach(System.Data.DataRow dr in dt.Rows) {
                            Response.Write("<tr>");
                           
                            Response.Write("<th scope='row'>"+dr["subjectID"]+"</th>");
                            if (dr["termResult"] != DBNull.Value && dr["termNo"].Equals("1")) {
                                 Response.Write("<td>"+dr["termResult"]+"</td>");
                            }
                             
                            Response.Write(" </tr>");
                        }
                 %>
                    </table>
                    </td>

                         <td>
                     <table class="table table-dark table-bordered mb-0">   
                     <thead>
                  <tr>
                    <th scope="col" style="background-color:#000000; color:white;" >Subjects</th>
                    <th scope="col" style="background-color:#424242; color:white;">Term 2</th>
                    
                   
                  </tr>
                </thead>
                    <% 
                        foreach(System.Data.DataRow dr in dt2.Rows) {
                            Response.Write("<tr>");
                           
                            Response.Write("<th scope='row'>"+dr["subjectID"]+"</th>");
                            if (dr["termResult"] != DBNull.Value && dr["termNo"].Equals("2")) {
                                 Response.Write("<td>"+dr["termResult"]+"</td>");
                            }
                             
                            Response.Write(" </tr>");
                        }
                 %>
                    </table>
                    </td>

                        <td>
                     <table class="table table-dark table-bordered mb-0">   
                     <thead>
                  <tr>
                    <th scope="col" style="background-color:#000000; color:white;" >Subjects</th>
                    <th scope="col" style="background-color:#424242; color:white;">Term 3</th>
                    
                   
                  </tr>
                </thead>
                    <% 
                        foreach(System.Data.DataRow dr in dt3.Rows) {
                            Response.Write("<tr>");
                           
                            Response.Write("<th scope='row'>"+dr["subjectID"]+"</th>");
                            if (dr["termResult"] != DBNull.Value && dr["termNo"].Equals("3")) {
                                 Response.Write("<td>"+dr["termResult"]+"</td>");
                            }
                             
                            Response.Write(" </tr>");
                        }
                 %>
                    </table>
                    </td>
                        


                         <td>
                     <table class="table table-dark table-bordered mb-0">   
                     <thead>
                  <tr>
                  <th scope="col" style="background-color:#000000; color:white;" >Subjects</th>
                    <th scope="col" style="background-color:#424242; color:white;">Term 4</th>
                    
                   
                  </tr>
                </thead>
                    <% 
                        foreach(System.Data.DataRow dr in dt4.Rows) {
                            Response.Write("<tr>");
                           
                            Response.Write("<th scope='row'>"+dr["subjectID"]+"</th>");
                            if (dr["termResult"] != DBNull.Value && dr["termNo"].Equals("4")) {
                                 Response.Write("<td>"+dr["termResult"]+"</td>");
                            }
                             
                            Response.Write(" </tr>");
                        }
                 %>
                    </table>
                    </td>
                    
               
                    </tr>
                 
                </tbody>
              </table>

               
            </div>
          </div>
        </div>
      </div>
    </div>
 
</section>


         <section class="intro t2">
  
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="table-responsive">
              <table class="table table-dark table-bordered mb-0">
                <thead>
                 
                </thead>
                <tbody>
                  <tr>
                   
                    <td scope="col" style="background-color: #424242; color: white;">Term 1 average: <%= avg1 %>/<%= rate1  %></td>
                    <td scope="col" style="background-color:#424242; color:white;">Term 2 average: <%= avg2 %>/<%= rate2  %></td>
                    <td scope="col" style="background-color:#424242; color:white;">Term 3 average: <%= avg3 %>/<%= rate3  %></td>
                    <td scope="col" style="background-color:#424242; color:white;">Term 4 average: <%= avg4 %>/<%= rate4  %></td>
                  
                    
                   
                  </tr>

                <tr>
                  <th scope="col" >Total Average: <%=total %></th>  
                    


                </tr>
                  
                </tbody>
              </table>
                

               
            </div>
          </div>
        </div>
      </div>
    </div>
 
</section>



 <div class="last">

    <h5>

        Grading Status:
    </h5>
    <h6>
        P: Pass Achieved &nbsp F: Fail

    </h6>

</div>









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
    margin-bottom:30px;

}

.top{
    margin-bottom: 5vh;
}

.btndiv{
    margin-bottom: 10vh;
    margin-left:25vh;
}


 .btn-primary {
    color: white;
    background-color: #000000;
    border-color: #000000;
}

 .btn-primary:hover{
     background-color:#a7a4a4;
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




 </style>



    </form>
</body>
</html>
