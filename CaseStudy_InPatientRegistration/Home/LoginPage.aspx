<%@ Page Language="C#" MasterPageFile="~/Home/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CaseStudy_InPatientRegistration.LoginPage" %>

<asp:Content ID="cntLoginPage" ContentPlaceHolderID="cph_MasterPage" runat="server">

     <div class="mainhome">
        <div class="col-md-offset-7 col-md-4">
            <div class="logindiv expanded"> 
                    <asp:RadioButtonList ID="rblMode" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblMode_SelectedIndexChanged">
                        <asp:ListItem Text="Admin"  Value="1" />
                        <asp:ListItem Text="Operator"  Value="2" />
                        <asp:ListItem Text="Patient"  Value="3"/>
                        <asp:ListItem Text="Doctor" Value="4"/>
                    </asp:RadioButtonList>
                <hr style="margin-top: 0" />
                <asp:Login ID="LoginPatient" runat="server" PasswordRequiredErrorMessage="Enter the Password" UserNameRequiredErrorMessage="Enter the UserName" OnAuthenticate="LoginPatient_Authenticate">
            <InstructionTextStyle ForeColor="Red" />
            <ValidatorTextStyle BackColor="White" /></asp:Login>
                <hr style="margin: 0"  />
                <center><asp:LinkButton id="lnkbtnForgot" Text="Forgot Password?" runat="server" OnClick="lnkbtnForgot_Click" ForeColor="#000" /></center>
                <asp:ValidationSummary ID="vsLogin" runat="server" ForeColor="Red" ValidateRequestMode="Enabled" ValidationGroup="LoginPatient" />
            </div>
        </div>
    </div>
        </asp:Content>
       
   