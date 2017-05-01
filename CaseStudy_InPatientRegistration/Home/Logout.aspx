<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home/MasterPage.Master" CodeBehind="Logout.aspx.cs" Inherits="CaseStudy_InPatientRegistration.Logout" %>
<asp:Content ID="cntLogout" ContentPlaceHolderID="cph_MasterPage" runat="server">

    <div class="contentarea">
        <fieldset>
            <legend>Logged out</legend>
        </fieldset>

        <p style="font-size: 30px">
            To login again, <asp:LinkButton Text="click here" id="lnkbtnLogout" runat="server" OnClick="lnkbtnLogout_Click" ForeColor="Black" style="text-decoration: underline" />
        </p>
    </div>
      
    </asp:Content>

