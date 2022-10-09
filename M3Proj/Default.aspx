<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="M3Proj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        
    <section class ="s1">

          <div class ="lines">
               <h1> Welcome to <br /> Kharina Secondary School <br /> Management System </h1>
              <p>
                  Kharina Secondary School is a traditional high school<br />
                  based in Pietermariztburg, South Africa.<br /> 
                  Founded in 1930, we are committed to the best practice<br />
                  for students in all aspect of our school.<br />
                  The values we instil in our students guide them on their journey<br />
                  to adulthood and finding their purpose.
              </p>

              <div class="headerbtn">

                  <asp:Button CssClass="logbtn" ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" />
              <a runat="server" href="~/Account/Register.aspx" class="regbtn">Register</a>
              </div>
             
          </div>

         <div  class ="headerimg">
             <img src="Photos/1.jpg" />
         </div>
       


 
      
          
  </section>

    <h1 class="heading"> Main Pillars of the school</h1>
     <section class =" categorybox">
         
      <div class ="boxes">
          <img src ="Photos/academics.jpg" />
          <div class="title"><h2> ACADEMICS</h2> </div>
          <div class="words"><p> Academic achievement is important for the successful development
               of young people in society. <br />
              Students who do well in school are better<br />
              able to make the transition into adulthood </p> </div>
          
      </div>

       <div class ="boxes">
          <img src ="Photos/sport.jpg" />
          <div class="title"><h2> SPORT</h2> </div>
          <div class="words"> <p>Sport allows learners an opportunity to express themselves <br />
              and connect with other people. The social benefits play a vital role
              in the development of the learner <br />
              in society by teaching them <br />
              how to contribute to a team.</p> </div>
      </div>

       <div class ="boxes">
          <img src ="Photos/culture.jpg" />
          <div class="title"><h2> CULTURE</h2> </div>
           <div class="words"><p> culture can improve students' ability to learn<br />
                by creating a positive environment that builds<br />
                relationships among students and teachers.</p> </div>
      </div>

       <div class ="boxes">
          <img src="Photos/manage.jpg" />
          <div class="title"><h2> MANAGEMENT</h2> </div>
           <div class="words"><p> School managers shape the teachers development,<br />
                determine the educational goals of the school,<br />
                direct educational applications to achieve educational .</p> </div>
      </div>


    </section>

    <section class ="s2">
         <div class ="lines2">
               <h1> Kharina Secondary School stories. </h1>
                <div class="dash1"></div>
              <p>
                  Here, we endeavour to celebrate and inspire every one of our more than 500<br /> 
                  diversely talented young students. Boys and Girls from across South Africa<br />
                  come here to immerse themselves in a rare,<br />
                  intentional blend of experiences that inspire self-knowledge, expansion and generosity.
              </p>
                        
             
          </div>

         <div  class ="s2img">
             <img src="Photos/3.jpg"/>
         </div>

    </section>

      <section class ="s3">

           <div  class ="s3img">
             <img src="Photos/2.jpg"/>
         </div>

         <div class ="lines3">
               <h1> About Kharina Secondary School. </h1>
                <div class="dash2"></div>
              <p>
                  Kharina Secondary is a public school, a quintile level 5 and a Fee-Paying school.<br />
		          The main source of income for the school is through government funding, by charging<br />
		         school fees and doing other reasonable forms of fund-raising. The school fund is a<br>
		          combination of school fees, the fundraising money and donations. 
              </p>
                <a runat="server" href="~/About"><button>Read more about Kharina</button></a>      
             
          </div>

        

    </section>
   

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder">
    <link rel="stylesheet" href ="CSS/defaultstyle.css" />
    
</asp:Content>

