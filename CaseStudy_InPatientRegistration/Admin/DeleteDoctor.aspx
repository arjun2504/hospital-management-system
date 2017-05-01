<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DeleteDoctor.aspx.cs" Inherits="CaseStudy_InPatientRegistration.DeleteDoctor" %>

<asp:Content ID="ctnDeleteDoctor" ContentPlaceHolderID="cphAdmin" runat="server">
    <fieldset>
        <legend>Remove Doctor</legend>

        <div class="col-md-4">
            <label for="lbldoctor">
                <asp:Label Text="Doctor Id" ID="lbldoctor" runat="server" />
            </label>
            <asp:TextBox ID="txtdoctor" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter the Doctor Id" ControlToValidate="txtdoctor" runat="server" ForeColor="#CC0000" >Please enter the correct Id</asp:RequiredFieldValidator>

            <br />

            <asp:Button Text="Delete" ID="btndelete" runat="server"  OnClick="btndelete_Click" CssClass="btn btn-success" />
            <asp:Button Text="Cancel" ID="btnCancel" runat="server" CssClass="btn btn-default" />
        </div>

     </fieldset>

    </asp:Content>
