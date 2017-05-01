
<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewAllDoctors.aspx.cs" Inherits="CaseStudy_InPatientRegistration.ViewAllDoctors" %>

<asp:Content ID="ctnViewAllDoctor" ContentPlaceHolderID="cphAdmin" runat="server">

    <fieldset>
        <legend>Remove Doctor</legend>
        <div class="col-md-12">
            <asp:LinkButton Text="Click here to view all doctors" id="lnkbtnViewAll" runat="server" OnClick="lnkbtnViewAll_Click" CssClass="btn btn-primary" />
            <br /> <br /> <br />
            <asp:GridView ID="gvViewAllDoc" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>

        </div>

     </fieldset>
    </asp:Content>