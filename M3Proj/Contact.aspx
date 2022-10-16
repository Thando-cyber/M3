<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="M3Proj.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="content">

        <h2>Contact us</h2>
        <br />

	    <pre style="font-size: 15px;">Address: 390 Regina Road
	         Northdale
	         Pietermaritzburg
	         KwaZulu-Natal
	         South Africa
	         3207</pre>
        <br />

	    <p>Telephone: 033 391 4551</p>
	    <p>Fax: 033 391 3155</p>
	    <p>Post Box Address: P. O. Box 649, Luxmi, 3207</p>
	    <p>School Hours: 07:30 – 15:30</p>

	    <p>Email: kharinasecondary@telkomsa.net</p>
	    <p><a href="mailto:kharinasecondary@telkomsa.net?
				    &subject=Enquiries, Support, and Recommendations
				    &body=Add a suggestion or request assistance" target="_blank">Send us an email</a></p>

        </div>

	    <!-- <form action="mailto:kharinasecondary@telkomsa.net" method="get" enctype="text/plain">
          <div>
            <label for="name">Name:
              <input type="text" name="name" id="name" />
            </label>
          </div>
          <div>
            <label for="email">Email:
              <input type="text" name="email" id="email" />
            </label>
          </div>
          <div>
            <label>Comments:</label>
            <br />
            <textarea name="comments" rows="12" cols="35">Send your comments to us.</textarea>
          </div>
          <div>
            <input type="submit" name="submit" value="Send" />
            <input type="reset" name="reset" value="Clear Form" />
          </div>
        </form> -->

</asp:Content>
