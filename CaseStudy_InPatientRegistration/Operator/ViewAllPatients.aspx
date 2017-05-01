<%@ Page Language="C#" MasterPageFile="~/Operator/OperatorMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAllPatients.aspx.cs" Inherits="CaseStudy_InPatientRegistration.ViewAllPatients" %>
<asp:Content ID="cntViewAllPatients" ContentPlaceHolderID="cph_OperatorMasterPage" runat="server">
    <%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">--%>
    <div>
    
    </div>
        <table>
            <tr>
                <td>
                    <asp:Button Text="View All patients" ID="btnViewAll" runat="server" OnClick="btnViewAll_Click"   />
                    <br />
                    <asp:GridView ID="gvViewAll" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
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
                </td>
            </tr>
        </table>
</asp:Content>
    <%--</form>
</body>
</html>--%>
