<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="BookService.aspx.cs" Inherits="WhipServices.Customer.BookService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Book Service"></asp:Label> </td></tr>
            <tr>
                <td class="lcolumn" style="width: 102px">
            <asp:Label ID="Label1" runat="server" Text="Date:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px" id="txtServiceDate">
                    
                   
                    <asp:TextBox ID="txtBookDate"  runat="server" TextMode="Date"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBookDate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>

            </tr>

            <tr><td class="lcolumn" style="height: 36px; width: 102px;">
            <asp:Label ID="Label2" runat="server" Text="Pick Any Mechanic:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:DropDownList ID="txtMechanic" AutoPostBack="true" runat="server" DataTextField="MechanicName" DataValueField="MechanicID" Height="22px">
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMechanic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>

            <tr>
                <td class="lcolumn" style="width: 102px"><asp:Label ID="Label3" runat="server" Text="Service:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:DropDownList ID="txtService" AutoPostBack="true" runat="server" DataTextField="ServiceName" DataValueField="ServiceID" Height="22px">
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtService" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>

            </tr>

            <tr>
                <td class="lcolumn" style="width: 102px"><asp:Label ID="Label4" runat="server" Text="Vehicle:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:DropDownList ID="txtVehicle" AutoPostBack="true" runat="server" DataTextField="RegistrationNo" DataValueField="VehicleID" Height="22px">
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtVehicle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>

            </tr>

            <tr>
                <td class="lcolumn" style="width: 102px"><asp:Label ID="Label6" runat="server" Text="Give us a detailed request:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtDescription" runat="server" Height="40px" Width="490px" TextMode="MultiLine"></asp:TextBox>
                </td>

            </tr>

            <tr><td class="rcolumn" style="width: 102px">
                <asp:Button forecolor="Black" Font-Bold="true" BackColor="#FDC84A" Height="30px" Width="100px" ID="btnBookService" runat="server" Text="Book" OnClick="btnBookService_Click" />
                </td><td class="auto-style1">
                    <asp:Label ID="lblErr" runat="server" ForeColor="Red" Text="Err" Visible="False"></asp:Label>
                </td></tr>
        </table>
</asp:Content>
