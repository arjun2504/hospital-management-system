<%@ Page Language="C#" MasterPageFile="~/Home/MasterPage.Master" AutoEventWireup="true" CodeBehind="PatientRegistrationForm.aspx.cs" Inherits="CaseStudy_InPatientRegistration.Patient.PatientRegistrationForm" %>
<asp:Content ID="ctnPatientRegistration" ContentPlaceHolderID="cph_MasterPage" runat="server">

    <div class="contentarea">
        <fieldset>
            <legend>New Patient Registration</legend>
        </fieldset>

        <div class="col-md-6">
            <label><asp:Label Text="FirstName" id="lblFirstName" runat="server" /></label>
            <asp:TextBox Id="txtFirstName" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter the first name" ControlToValidate="txtFirstName" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="LastName" id="lblLastName" runat="server" /></label>
            <asp:TextBox id="txtLastName" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please enter the Last name" ControlToValidate="txtLastName" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="Mobile Number" id="lblMobile" runat="server" /></label>
            <asp:TextBox id="txtMobile" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Please enter the Mobile number" ControlToValidate="txtMobile" runat="server" ForeColor="Red" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ErrorMessage="please enter valid mobile number" ControlToValidate="txtMobile" runat="server" ValidationExpression="[7-9]{1}\d{9}" ForeColor="Red" />
        </div>


        <div class="col-md-6">
            <label><asp:Label Text="Address" id="lblAddress" runat="server"/></label>
            <asp:TextBox id="txtAddress" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Please enter Address" ControlToValidate="txtAddress" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="Email" id="lblEmail" runat="server" /></label>
            <asp:TextBox id="txtEmail" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Please enter email Address" ControlToValidate="txtEmail" runat="server" ForeColor="Red" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ErrorMessage="please enter valid email Id " ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="Occupation" id="lblOccupation" runat="server" /></label>
            <asp:TextBox id="txtOccupation" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Please enter your Occupation" ControlToValidate="txtOccupation" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="Organisation Working For" id="lblOrganisationWorking" runat="server" /></label>
            <asp:TextBox id="txtOrganisationWorking" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="Please enter the organisation you are working for " ControlToValidate="txtOrganisationWorking" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="JoiningDate" id="lblJoiningDate" runat="server"/></label>
            <asp:TextBox id="txtJoiningDate" TextMode="Date" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ErrorMessage="Please enter the Joining Date " ControlToValidate="txtJoiningDate" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="gender" id="lblgender" runat="server" /></label>
            <asp:RadioButtonList runat="server" id="rblGender" RepeatDirection="Horizontal" CssClass="form-control">
                        <asp:ListItem Text="Female" Value="F" />
                        <asp:ListItem Text="Male" value="M"/>
                    </asp:RadioButtonList>
            <asp:RequiredFieldValidator ErrorMessage="Please enter the gender " ControlToValidate="rblGender" ID="rfvGender" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="Reason" id="lblReason" runat="server" BackColor="White" /></label>
            <asp:TextBox id="txtReason" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ErrorMessage="Please enter the Reason " ControlToValidate="txtReason" ID="rfvReason" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="CareTakerName" ID="lblCareTakerName" runat="server" BackColor="White" /></label>
            <asp:TextBox  ID="txtCareTakerName" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ErrorMessage="Please enter the care taker name" ControlToValidate="txtCareTakerName" ID="rfvCareTaker" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="userId" id="lbluserId" runat="server" BackColor="White" /></label>
            <asp:TextBox id="txtuserId" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ErrorMessage="Please enter the userId  " ControlToValidate="txtuserId" ID="rfvUserId" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="Password" id="lblPassword" runat="server" BackColor="White" /></label>
            <asp:TextBox id="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
            <asp:RequiredFieldValidator ErrorMessage="Please enter the Password   " ControlToValidate="txtPassword"  ID="rfvPassword" runat="server" ForeColor="Red" />
        </div>

        <div class="col-md-6">
            <label><asp:Label Text="confirm Password" id="Label1" runat="server" BackColor="White" /></label>
            <asp:TextBox id="txtconfirmPassword" runat="server" TextMode="Password" CssClass="form-control"/>
            <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Conform passowrd not match with password" ControlToValidate="txtconfirmPassword" runat="server" ForeColor="Red" ControlToCompare="txtPassword" />
        </div>

        <div class="clearfix"></div>

        <center><asp:Button Text="Register" id="btnRegister" runat="server" OnClick="btnRegister_Click"  CssClass="btn btn-success"/></center>

    </div>

    </asp:Content>
    