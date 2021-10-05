<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddService.aspx.cs" Inherits="WhipServices.Admin.AddService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="signtable">
             
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Add Service"></asp:Label> </td></tr>
       
            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label2" runat="server" Text="Service Name:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtServiceName" placeholder="Brake Repairs" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtServiceName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label1" runat="server" Text="Description:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtDescription" placeholder="Remove old brake pads, install new ones." runat="server" TextMode="MultiLine" Width="362px" Height="61px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        
        <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label3" runat="server" Text="Labour:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtLabour" placeholder="R50.00" runat="server" TextMode="Number" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLabour" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

        <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label4" runat="server" Text="Price:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtPrice" placeholder="R200.00" runat="server" TextMode="Number" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>


             <tr><td class="rcolumn"><asp:Button Height="30px" Width="100px" forecolor="Black" Font-Bold="true" BackColor="#FDC84A" ID="btnAddService" runat="server" Text="Add Service" OnClick="btnAddService_Click"></asp:Button></td><td class="auto-style1"></td></tr>
        </table>
            
        
</asp:Content>
