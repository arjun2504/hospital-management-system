<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home/MasterPage.Master" CodeBehind="ChangePassword.aspx.cs" Inherits="CaseStudy_InPatientRegistration.ChangePasswordOperator" %>
<asp:Content ID="cntChangePassword" ContentPlaceHolderID="cph_MasterPage" runat="server">

    <div class="contentarea">
        <fieldset>
            <legend>Change Password</legend>
        </fieldset>

        <div class="col-md-6">
            <label for="lblOperator"><asp:Label Text="User Id" ID="lblOperator" runat="server" ForeColor="Black" /></label>
            <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please provide user name" ControlToValidate="txtUserId" runat="server" ForeColor="#CC0000" ></asp:RequiredFieldValidator>

            <br />

            <label for="Label1"><asp:Label Text="New Password" ID="Label1" runat="server" ForeColor="Black" /></label>
            <asp:TextBox  ID="txtNewPwd" runat="server" TextMode="Password" CssClass="form-control"/> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please provide new password" ControlToValidate="txtNewPwd" runat="server" ForeColor="#CC0000" ></asp:RequiredFieldValidator>

            <br />

            <label for="lblConformPassword"><asp:Label Text="Confirm Password" ID="lblConformPassword" runat="server" ForeColor="Black" /></label>
            <asp:TextBox  ID="txtConformPassword" runat="server" TextMode="Password" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Please Renter the password" ControlToValidate="txtConformPassword" runat="server" ForeColor="#CC0000" ></asp:RequiredFieldValidator>

            <br />

            <asp:Button Text="Submit" ID="btnsubmit" runat="server"  OnClick="btnsubmit_Click" CssClass="btn btn-success"/>

        </div>



    </div>
  
    </asp:Content>
   <%-- </form>
</body>
</html>--%>
