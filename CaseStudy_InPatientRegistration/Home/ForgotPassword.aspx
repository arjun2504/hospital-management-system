<%@ Page Language="C#" MasterPageFile="~/Home/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CaseStudy_InPatientRegistration.ForgotPassword" %>

<asp:Content ID="ctnForgotPassword" ContentPlaceHolderID="cph_MasterPage" runat="server">

    <div class="contentarea">
        <fieldset>
            <legend>Forgot Password</legend>

            <div class="col-md-6">

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />


            <label for="lblOperator">User Id</label>
            <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserId" runat="server" 
                        ErrorMessage="* Please provide User Id" ControlToValidate="txtUserId" 
                        style="color: #FF0000">*</asp:RequiredFieldValidator>

            <br />

            <label for="lblOperator"><asp:Label Text="New Password" id="lblNewPwd" runat="server" /></label>
            <asp:TextBox id="txtNewPwd" runat="server" CssClass="form-control"/>  
            <asp:RequiredFieldValidator ErrorMessage="Please enter your New password" ID="rfvNewPwd" ControlToValidate="txtNewPwd" runat="server" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <br />

            <label for="lblOperator"><asp:Label ID="Label1" Text="Confirm Password" runat="server" /></label>
            <asp:TextBox id="txtConfirmPwd" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ErrorMessage="Please enter to confirm your password" id="rfvConfirmPwd" ControlToValidate="txtConfirmPwd" runat="server" ForeColor="Red" >*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Mismatch of the Password" ControlToValidate="txtConfirmPwd" runat="server" ControlToCompare="txtNewPwd" ForeColor="Red" >*</asp:CompareValidator>


            <br />

           <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" onclick="btnSubmit_Click" />

        </div>

        </fieldset>
    </div>

    </asp:Content>
   
