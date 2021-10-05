<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateBusiness.aspx.cs" Inherits="WhipServices.Admin.UpdateBusiness" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Update Business"></asp:Label> </td></tr>
            <tr>
                <td class="lcolumn">
            <asp:Label ID="Label1" runat="server" Text="Weekday Hours:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtWeekday" placeholder="09:00 - 15:00" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtWeekday" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
         <tr>
                <td class="lcolumn">
            <asp:Label ID="Label2" runat="server" Text="Weekend/Holiday Hours:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtWeekend" placeholder="09:00 - 15:00" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtWeeknd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
         <tr>
                <td class="lcolumn">
            <asp:Label ID="Label3" runat="server" Text="Tel:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtTel" placeholder="0322151212" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTel" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
         <tr>
                <td class="lcolumn">
            <asp:Label ID="Label4" runat="server" Text="Fax:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtFax" placeholder="0111234564" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFax" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
         <tr>
                <td class="lcolumn">
            <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtEmail" placeholder="WhipService@gmail.com" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
         <tr>
                <td class="lcolumn">
            <asp:Label ID="Label6" runat="server" Text="Twitter:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtTwitter" runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTwitter" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
         <tr>
                <td class="lcolumn">
            <asp:Label ID="Label7" runat="server" Text="Facebook:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtFacebook"  runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtFacebook" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
        <tr>
                <td class="lcolumn">
            <asp:Label ID="Label8" runat="server" Text="Instagram:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtInstagram"  runat="server" ReadOnly="true" CssClass="disabled" SkinID="disabled" BackColor="#999999" ForeColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtInstagram" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
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
