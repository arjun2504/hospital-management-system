<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Operator/OperatorMasterPage.Master"  CodeBehind="ViewProfile.aspx.cs" Inherits="CaseStudy_InPatientRegistration.ViewProfile" %>
<asp:Content ID="cntViewOnePatient" ContentPlaceHolderID="cph_OperatorMasterPage" runat="server">
    <%--<asp:Content ID="cntViewProfile" ContentPlaceHolderID="cph_PatientMasterPage" runat="server">--%>
<%--<!DOCTYPE html>--%>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">--%>
    <div>
    <h1 align="center">View Patient Profile</h1>
    </div>
        <table>
            <tr>
                <td>
            <asp:Label Text="Enter the PatientID" id="lblPatientId" runat="server" />
                    </td>
                <td>
                    <asp:TextBox id="txtPatientId" runat="server" />  
                </td>
                </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button Text="View Patient Profile" ID="btnViewPatientProfile" runat="server" OnClick="btnViewPatientProfile_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="gvview" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="occupation" HeaderText="occupation" SortExpression="occupation" />
                <asp:BoundField DataField="organisationworking" HeaderText="organisationworking" SortExpression="organisationworking" />
                <asp:BoundField DataField="JoiningDate" HeaderText="JoiningDate" SortExpression="JoiningDate" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="patientid" HeaderText="patientid" SortExpression="patientid" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PACON %>" SelectCommand="SELECT * FROM [tblPatientRegistration] WHERE ([patientid] = @patientid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtPatientId" Name="patientid" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <tr>
            <td>
                <asp:Button Text="Click here to see the amount" id="btnAmount" runat="server" OnClick="btnAmount_Click" Visible="False"  />
            </td>
        </tr>
        <br />
        <asp:GridView ID="gvAmount" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="roomType" HeaderText="roomType" SortExpression="roomType" />
                <asp:BoundField DataField="Equipment" HeaderText="Equipment" SortExpression="Equipment" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PACON %>" SelectCommand="SELECT [Total], [roomType], [Equipment] FROM [tblnursingStation] WHERE ([patientId] = @patientId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtPatientId" Name="patientId" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </asp:Content>
   <%-- </asp:Content>--%>
    <%--</form>
</body>
</html>--%>
