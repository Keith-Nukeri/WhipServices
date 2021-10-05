<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="ServicesUsed.aspx.cs" Inherits="WhipServices.Customer.ServicesUsed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    
     <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Customer Booked Service(s)"></asp:Label> </td></tr>
            <tr>
                <td>






                    &nbsp;</td>

                </tr>
         <tr><td>
             
            <asp:GridView id="usedGrid" runat="server"  padding="10"  AutoGenerateColumns="False" DataSourceID="getCustReports"  GridLines="Vertical" Height="123px" Width="772px" >
                         <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ServiceName" HeaderText="Service" SortExpression="Name" />
                        <asp:BoundField DataField="sDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Name" />
                        <asp:BoundField DataField="Employee" HeaderText="Mechanic" SortExpression="Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price (vat included)" DataFormatString="{0:C}" />
                        
                       
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                        </asp:GridView>
             
             </td></tr>
         </table>
    <asp:SqlDataSource ID="getCustReports" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" 
                            SelectCommand="uspGetCustomerReports" SelectCommandType="StoredProcedure">
                            
                                <SelectParameters>
                                <asp:Parameter Name="customerID" Type="string" />
                                </SelectParameters>
        </asp:SqlDataSource>
















</asp:Content>
