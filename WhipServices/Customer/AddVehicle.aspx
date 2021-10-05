<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="AddVehicle.aspx.cs" Inherits="WhipServices.Customer.AddVehicle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
            <div>
            
        <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Add Vehicle"></asp:Label> </td></tr>
       
            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label2" runat="server" Text="Registration No:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtRegistrationNo" placeholder="XYZ 321 MP" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtregistrationNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label3" runat="server" Text="Kilometers:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtKilometers" placeholder="12345" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtKilometers" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn">
            <asp:Label ID="Label1" runat="server" Text="Make:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:DropDownList ID="dropMake" AutoPostBack="true" runat="server"  Height="28px" Width="124px" DataTextField="MakeName" DataValueField="MakeID" OnSelectedIndexChanged="dropMake_SelectedIndexChanged">
                    
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropMake" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn">
            <asp:Label ID="Label4" runat="server" Text="Model:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:DropDownList ID="dropModel" AutoPostBack="true" runat="server"  Height="28px" Width="124px" DataTextField="ModelName" DataValueField="ModelID" OnSelectedIndexChanged="dropModel_SelectedIndexChanged">
                   
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dropModel" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
           
             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label12" runat="server" Text="Body Type:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtBodyType" placeholder="Sedan" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBodytype" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label6" runat="server" Text="Model Year:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtYear" placeholder="2014" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtYear" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtYear" ErrorMessage="Incorrect Year" ForeColor="#FF9900" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                </td>

            </tr>

             <tr>
                 <td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label13" runat="server" Text="Fuel Type:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtFuelType" placeholder="Petrol" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtFuelType" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label7" runat="server" Text="Engine Capacity:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtEngineCapacity" placeholder="V6" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEngineCapacity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="lcolumn">
            <asp:Label ID="Label8" runat="server" Text="Transmission:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:DropDownList ID="txtTransmission" runat="server" Height="28px" Width="150px">
                    <asp:ListItem Value="Automatic"> Automatic </asp:ListItem>
                    <asp:ListItem Value="Manual"> Manual </asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTransmission" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

           
            <tr><td class="rcolumn"><asp:Button Height="30px" Width="100px" forecolor="Black" Font-Bold="true" BackColor="#FDC84A" ID="btnAddVehicle" runat="server" Text="Add Vehicle" OnClick="btnAddVehicle_Click"></asp:Button></td><td class="auto-style1"></td></tr>
        </table>
            </div>

</asp:Content>
