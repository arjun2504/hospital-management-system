<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home/MasterPage.Master" CodeBehind="HomePage.aspx.cs" Inherits="CaseStudy_InPatientRegistration.HomePage" %>

<asp:Content id="cntHomePage" ContentPlaceHolderID="cph_MasterPage" runat="server">
    
    <div class="mainhome">
        <div class="col-md-offset-7 col-md-4">

            <div class="logindiv">

                <center>
                    <br /><br />
                    <asp:Button ID="Button1" Text="User Login" runat="server" OnClick="Unnamed2_Click" CssClass="btn btn-success" />
                </center>

                <hr />

                <center>
                    <p><b><font size="4px">Don't have an account?</font></b></p>
                    <asp:Button ID="Button2" Text="Create an account" runat="server" OnClick="Unnamed4_Click" CssClass="btn btn-default" />
                </center>

            </div>
            
        </div>
    </div>
    
    </asp:Content>
    
