<%@ Page Language="C#" MasterPageFile="~/Operator/OperatorMasterPage.Master" AutoEventWireup="true" CodeBehind="ConformAccomadation.aspx.cs" Inherits="CaseStudy_InPatientRegistration.ConformAccomadation" %>

<%--<!DOCTYPE html>--%>
<asp:Content ID="cntConfirmAccomodation" ContentPlaceHolderID="cph_OperatorMasterPage" runat="server">


    <div class="contentarea notoppadding">
        <fieldset>
            <legend>Confirm Accomodation</legend>
        </fieldset>

        <label><asp:Label Text="Patient ID" runat="server" ID="lblPatientId" /></label>
        <asp:TextBox runat="server" ID="txtPatientId" CssClass="form-control"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please provide Patient Id" ControlToValidate="txtPatientId" runat="server" ForeColor="Red" SetFocusOnError="True" />

        <br />

        <label><asp:Label ID="lblRoomType" Text="Room Type" runat="server" /></label>
        <asp:DropDownList ID="ddlRommType" runat="server" CssClass="form-control">
                        <asp:ListItem>--Select Room Type--</asp:ListItem>
                        <asp:ListItem>ICU</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>NORMAL</asp:ListItem>
                    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please select room type" ControlToValidate="ddlRommType" runat="server" ForeColor="Red" SetFocusOnError="True" />

        <br />

        <asp:Label ID="lblRoomNum" Text="Room num" runat="server"  />
        <asp:DropDownList ID="ddlRoomNum" runat="server" CssClass="form-control">
                        <asp:ListItem>--select room num--</asp:ListItem>
                        <asp:ListItem>101</asp:ListItem>
                        <asp:ListItem>102</asp:ListItem>
                        <asp:ListItem>103</asp:ListItem>
                        <asp:ListItem>104</asp:ListItem>
                        <asp:ListItem>105</asp:ListItem>
                        <asp:ListItem>106</asp:ListItem>
                        <asp:ListItem>107</asp:ListItem>
                        <asp:ListItem>108</asp:ListItem>
                        <asp:ListItem>109</asp:ListItem>
                        <asp:ListItem>110</asp:ListItem>
                        <asp:ListItem>111</asp:ListItem>
                        <asp:ListItem>112</asp:ListItem>
                        <asp:ListItem>113</asp:ListItem>
                        <asp:ListItem>114</asp:ListItem>
                        <asp:ListItem>115</asp:ListItem>
                        <asp:ListItem>116</asp:ListItem>
                        <asp:ListItem>117</asp:ListItem>
                        <asp:ListItem>118</asp:ListItem>
                        <asp:ListItem>119</asp:ListItem>
                        <asp:ListItem>120</asp:ListItem>
                        <asp:ListItem>121</asp:ListItem>
                        <asp:ListItem>122</asp:ListItem>
                        <asp:ListItem>123</asp:ListItem>
                        <asp:ListItem>124</asp:ListItem>
                        <asp:ListItem>125</asp:ListItem>
                        <asp:ListItem>126</asp:ListItem>
                        <asp:ListItem>127</asp:ListItem>
                        <asp:ListItem>128</asp:ListItem>
                        <asp:ListItem>129</asp:ListItem>
                        <asp:ListItem>130</asp:ListItem>
                    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Please select room number" ControlToValidate="ddlRoomNum" runat="server" ForeColor="Red" SetFocusOnError="True" />

        <br />

        <label><asp:Label ID="lblBedNum" Text="Bed num" runat="server" /></label>
        <asp:DropDownList ID="ddlbednum" runat="server" CssClass="form-control">
                        <asp:ListItem>--choose bed num--</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Please select bed number" ControlToValidate="ddlbednum" runat="server" ForeColor="Red" SetFocusOnError="True" />

        <br />

        <label><asp:Label ID="lblEquipment" Text="Equipment" runat="server" /></label>
        <asp:DropDownList ID="ddlEquipment" runat="server" CssClass="form-control">
                        <asp:ListItem>--Select Equipment--</asp:ListItem>
                        <asp:ListItem>Drip</asp:ListItem>
                        <asp:ListItem>Oxygen</asp:ListItem>
                        <asp:ListItem>Pulse</asp:ListItem>
                        <asp:ListItem>ECG</asp:ListItem>
                    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Please select the equipment" ControlToValidate="ddlEquipment" runat="server" ForeColor="Red" SetFocusOnError="True" />

        <br />

        <asp:Button Text="Confirm Accomodation " runat="server" ID="btnBookAppointment" onclick="btnBookAppointment_Click" CssClass="btn btn-success"/>

        <hr />

        <asp:Button Text="Accomodation Details" id="btnAccomodationDetails" runat="server" Visible="False" CssClass="btn btn-default" />

        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="patientId" HeaderText="patientId" SortExpression="patientId" />
                            <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                            <asp:BoundField DataField="RoomNum" HeaderText="RoomNum" SortExpression="RoomNum" />
                            <asp:BoundField DataField="BedNum" HeaderText="BedNum" SortExpression="BedNum" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PACON %>" SelectCommand="SELECT * FROM [Accomodation] WHERE ([patientId] = @patientId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtPatientId" Name="patientId" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>


    </div>

    <div>
        <table border="0" cellpadding="3" cellspacing="2">

            <tr>
                <td colspan="2" style="height: 40px" align="center">
                    
                    </td>
                    </tr>
            <tr>
                <td colspan="2" style="height: 40px" align="center">
                    
                </td>
            </tr>
                     
            <tr>
                <td colspan="2" style="height: 40px" align="center">

                    

                    </td>
                
                    
            </tr>
                    </table>
    
    </div>
    </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style5 {
            height: 40px;
            width: 161px;
        }
    </style>
</asp:Content>

