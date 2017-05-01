<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Operator/OperatorMasterPage.Master" CodeBehind="GenerateBill.aspx.cs" Inherits="CaseStudy_InPatientRegistration.GenerateBill" %>
<asp:Content   Id="cntGenerateBill" ContentPlaceHolderID="cph_OperatorMasterPage" runat="server">
    <div class="contentarea notoppadding">
        <fieldset>
            <legend>Generate Bill</legend>
        </fieldset>

        <label><asp:Label Text="PatientId" id="lblPatientId" runat="server" /></label>
        <asp:TextBox id="txtPatientId" runat="server" CssClass="form-control" />  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please provide Patient Id" ControlToValidate="txtPatientId" runat="server" ForeColor="Red" />

        <br />

        <label><asp:Label ID="Label1" Text="Select Room Type" runat="server" /></label>
        <asp:DropDownList id="ddlRoomType" runat="server" CssClass="form-control">
            <asp:ListItem Text="----select the Room Type----" />
            <asp:ListItem Text="ICU" value="3000"/>
            <asp:ListItem Text="AC" value="1000"/>
            <asp:ListItem Text="Normal" value="500"/>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please select room type" ControlToValidate="ddlRoomType" runat="server" ForeColor="Red" />

        <br />

        <label><asp:Label ID="Label2" Text="select an Equipment" runat="server" /></label>
        <asp:DropDownList ID="ddlEquipment" runat="server" CssClass="form-control">
                        <asp:ListItem Text="---Select the Equipment----" />
                        <asp:ListItem Text="Drip" value="500"/>
                        <asp:ListItem Text="ECG" value="2000"/>
                        <asp:ListItem Text="Oxygen" value="1000"/>
                        <asp:ListItem Text="Pulse" value="200"/>
                    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Please select the equipment" ControlToValidate="ddlEquipment" runat="server" ForeColor="Red" />

        <br />

        <asp:Button id="btnNurseStation" Text="Send to Nurse Station" runat="server" OnClick="btnNurseStation_Click" CssClass="btn btn-success" />

    </div>


    </asp:Content>
