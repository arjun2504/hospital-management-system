<%@ Page Language="C#"  MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="CaseStudy_InPatientRegistration.AddDoctor" %>

<asp:Content ID="ctnAddDoctor" ContentPlaceHolderID="cphAdmin" runat="server">
    <fieldset>
        <legend>Add Doctor</legend>

        <div class="col-md-6">


            <label for="lblDoctorName">
                <asp:Label ID="lblDoctorName" runat="server" Text="Doctor Name"></asp:Label>
            </label>
            <asp:TextBox ID="txtDoctorName" runat="server" CssClass="form-control" placeholder="Enter Doctor Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDoctorName" runat="server" 
                        ErrorMessage="Please provide doctor name" ControlToValidate="txtDoctorName" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>

            <br />
            
            <label for="lblQualification">
                <asp:Label ID="lblQualification" runat="server" Text="Qualification"></asp:Label>
            </label>
            <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" placeholder="Enter Qualification"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvQualification" runat="server" 
                        ErrorMessage="Please provide Qualification" 
                        ControlToValidate="txtQualification" style="color: #FF0000"></asp:RequiredFieldValidator>


            <br />


            <label for="lblSpecialization">
                <asp:Label ID="lblSpecialization" runat="server" Text="Specialization"></asp:Label>
            </label>
            <asp:DropDownList ID="dlSpecialization" runat="server" CssClass="form-control">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Cardiologist</asp:ListItem>
                        <asp:ListItem>Dermatologist</asp:ListItem>
                        <asp:ListItem>Dentist</asp:ListItem>
                        <asp:ListItem>Hematologist</asp:ListItem>
                        <asp:ListItem>Immunologist</asp:ListItem>
                        <asp:ListItem>Neurologist</asp:ListItem>
                        <asp:ListItem>Oncologist</asp:ListItem>
                        <asp:ListItem>Psychiatrists‎</asp:ListItem>
                        <asp:ListItem>Surgeon</asp:ListItem>
                        <asp:ListItem>Urologist</asp:ListItem>
                    </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvSpecialization" runat="server" 
                        ErrorMessage="Please provide Specialization" 
                        ControlToValidate="dlSpecialization" style="color: #FF0000"></asp:RequiredFieldValidator>



            <br />



            <label for="lblMobileNumber">
                <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number" ></asp:Label>
            </label>
            <asp:TextBox ID="txtMobileNumber" runat="server" 
                      MaxLength="10" placeholder="Enter Mobile Number" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="rgxMobileNumber" runat="server" 
                        ErrorMessage=" Invalid Mobile Number" ControlToValidate="txtMobileNumber" 
                        ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>


            <br />


            <label for="lblGender">
                <asp:Label Text="Gender" ID="lblGender" runat="server" />
            </label>
            <asp:RadioButtonList Id="rblGender" runat="server">
                        <asp:ListItem Text="Female" Value="Female" />
                        <asp:ListItem Text="Male" Value="Male" />
                    </asp:RadioButtonList>
            <asp:RequiredFieldValidator ErrorMessage="Please select the gender" ControlToValidate="rblGender" runat="server" ForeColor="Red" ></asp:RequiredFieldValidator>


            <br />


            <label for="lblUser">
                <asp:Label Text="UserName" ID="lblUser" runat="server" />
            </label>
            <asp:TextBox ID="txtusername" runat="server" placeholder="Enter username" CssClass="form-control"/>
            <asp:RequiredFieldValidator ErrorMessage="Please enter the  user name" ControlToValidate="txtusername" runat="server" ForeColor="Red" ></asp:RequiredFieldValidator>


            <br />



            <label>
                <asp:Label Text="Password" ID="lblpassword" runat="server" />
            </label>
            <asp:TextBox  ID="txtpassword" TextMode="Password" runat="server" placeholder="Enter Password" CssClass="form-control"/>
            <asp:RequiredFieldValidator ErrorMessage="Please provide  password"  ControlToValidate="txtpassword" runat="server" ForeColor="Red" ></asp:RequiredFieldValidator>


            <br />

            <asp:Button Text="ADD DOCTOR" ID="btnSubmit" runat="server" CssClass="btn btn-success" OnClick="btnSubmit_Click" />

        </div>

        <div class="col-md-6">
            <img src="../images/add-doctor.jpg" width="300px" align="right"/>
        </div>
        

    </fieldset>

   </asp:Content>
