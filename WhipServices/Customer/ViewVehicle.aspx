<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="ViewVehicle.aspx.cs" Inherits="WhipServices.Customer.ViewVehicle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 672px;
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style5 {
            width: 200px;
        }
        .auto-style6 {
            width: 200px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
     <div>
            <table id="signtable">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Customer Vehicle(s)"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>

                <tr>
                    <td colspan="5">

                        <asp:GridView id="vehicleGrid" runat="server"  padding="10"  AutoGenerateColumns="False" DataSourceID="getVehicle"  GridLines="Vertical" Height="147px" Width="777px" OnSelectedIndexChanged="serviceGrid_SelectedIndexChanged">
                         <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="ID" InsertVisible="true" DataField="VehicleID" ReadOnly="true" Visible="false" />
                       
                        <asp:BoundField DataField="RegistrationNo" HeaderText="Registration No" SortExpression="Name" />
                        <asp:BoundField DataField="MakeName" HeaderText="Make Name" SortExpression="Name" />
                        <asp:BoundField DataField="ModelName" HeaderText="Model Name" SortExpression="Name" />
                        <asp:BoundField DataField="Kilometers" HeaderText="Kilometers" SortExpression="Name" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Name" />
                        <asp:CommandField HeaderText="Delete"  ShowDeleteButton="True" ShowHeader="True" Visible="false" />
                      
                        <asp:ButtonField ButtonType="Link" CommandName="Delete"  HeaderText="Delete" ShowHeader="True" Text="Button" Visible="false" />
                      
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                        </asp:GridView>
                        
                        <asp:SqlDataSource ID="getVehicle" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" 
                            SelectCommand="uspCustomerVehicles" SelectCommandType="StoredProcedure" DeleteCommand="uspDeleteVehicle " >
                                <SelectParameters>
                                <asp:Parameter Name="CustomerID" Type="string" />
                                </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="VehicleID" Type="int32" />
                            </DeleteParameters>
       </asp:SqlDataSource>

                    </td>
                </tr><tr><td></td></tr>
                
                <tr>
                    <td class="rcolumn">
                    <asp:Button ID="btnAddvehicle" runat="server" Text="Add Vehicle"  forecolor="Black" Font-Bold="true" BackColor="#FDC84A" Height="30px" Width="100px" OnClick="btnAddvehicle_Click" />
                    </td>
                    <td class="rcolumn">
                        <asp:Button ID="btnDelete" runat="server" Text="Remove Vehicle"  forecolor="Black" Font-Bold="true" BackColor="#FDC84A" Height="30px" Width="105px" OnClick="btnDeleteVehicle_Click" />
                        <br />
                    <asp:DropDownList ID="txtVehicle" AutoPostBack="true" runat="server" DataTextField="RegistrationNo" DataValueField="VehicleID" Height="28px" OnSelectedIndexChanged="txtVehicle_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>

                </tr>

                </table>
         </div>
</asp:Content>
