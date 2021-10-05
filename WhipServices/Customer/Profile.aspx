<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WhipServices.Customer.Profile" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href="../View/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="bodyContent" ContentPlaceHolderID="bodyContent" runat="server">
   
    <div>
    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Customer Profile"></asp:Label> </td></tr>
            <tr>
                <td class="lcolumn">
            <asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtTitle" placeholder="Keith" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtFirstName" placeholder="Keith" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label3" runat="server" Text="Surname:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtSurname" placeholder="Kaballah" runat="server" ReadOnly="true" BackColor="#999999"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSurname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtEmail" placeholder="Kaballah@gmail.com"  runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Incorrect Email Format" ForeColor="#FF9900" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>

            </tr>
        <tr>
                <td class="lcolumn"><asp:Label ID="Label6" runat="server" Text="Mobile Number:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtPhoneNo" placeholder="0764798555"  runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Incorrect Mobile Number Length" ForeColor="#FF9900" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label7" runat="server" Text="Date Of Birth:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                     <asp:TextBox ID="txtDOB" placeholder="dd//mm/yyy" ReadOnly="true"  DataFormatString="{0:dd/MM/yyyy}" BackColor="#999999" runat="server"></asp:TextBox>
                </td>

            </tr>

            <tr id="heading1" style="align-content:center" ><td colspan="2">
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Home Address"></asp:Label>
        </tr>

            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label5" runat="server" Text="Street Address:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtStreetAddress" placeholder="17 Humewood Road" runat="server"></asp:TextBox>
                </td>
            </tr>

             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label15" runat="server" Text="Suburb:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtSuburb" placeholder="Humewood" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label13" runat="server" Text="City:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtCity" placeholder="Port Elizabeth" runat="server"></asp:TextBox>
                </td>
            </tr>

             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label12" runat="server" Text="Province:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtProvince" placeholder="Eastern Cape" runat="server"></asp:TextBox>
                </td>
            </tr>


             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label14" runat="server" Text="Zip Code:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtZipCode" placeholder="6001" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr><td class="rcolumn">
                <asp:Button ID="btnUpdate" forecolor="Black" Font-Bold="true" BackColor="#FDC84A" Height="30px" Width="100px" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                </td><td class="auto-style1">
                    <asp:Label ID="lblErr" runat="server" Text="Label" Visible="False" ForeColor="#FF3300"></asp:Label>
                </td></tr>
        </table>
            </div>
</asp:Content>
