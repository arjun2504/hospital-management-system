<%@ Page Language="C#" MasterPageFile="~/Doctor/DoctorMasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorHomePage.aspx.cs" Inherits="CaseStudy_InPatientRegistration.Doctor.DoctorHomePage" %>

<asp:Content Id="ctnDoctorHomePage" ContentPlaceHolderID="cph_DoctorMasterPage" runat="server">
   <fieldset>
       <legend>Welcome</legend>

       <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="../images/Pimage.jpg" alt="Doctor1">
            </div>

            <div class="item">
              <img src="../images/operator.jpg" alt="Doctor2" />
            </div>

            <div class="item">
              <img src="../images/doctor3.jpg" alt="Doctor3">
            </div>
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

    </fieldset>
</asp:Content>
    
