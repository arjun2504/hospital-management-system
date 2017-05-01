<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewOneDoctor.aspx.cs" Inherits="CaseStudy_InPatientRegistration.ViewOneDoctor" %>

<asp:Content ID="ctnViewOneDoctor" ContentPlaceHolderID="cphAdmin" runat="server">
    <div>
    
    </div>
    <table>
        
            <tr>
                <td>
                <asp:Label Text="Doctor ID"  id="lblDocId" runat="server" ForeColor="Blue" />
                    </td>
                <td>
                    <asp:TextBox ID="txtDocID" runat="server" />  
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Please provide correct Doctor Id" ControlToValidate="txtDocID" runat="server" ForeColor="#CC0000" />
                </td>
            </tr>
        <tr>
            <td>
                <asp:LinkButton Text="Click here to view one doctor" ID="lnkbtnViewOneDoc" runat="server" OnClick="lnkbtnViewOneDoc_Click" />
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:GridView ID="gvViewOneDoc" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
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
                
            </td>
        </tr>
    </table>
    </asp:Content>