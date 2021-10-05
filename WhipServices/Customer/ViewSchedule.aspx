<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="WhipServices.Customer.ViewSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
     <div>
            <table id="signtable">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Booked Service(s)"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>

                <tr>
                    <td colspan="5">

                        <asp:GridView id="serviceGrid" runat="server"  padding="10"  AutoGenerateColumns="False" DataSourceID="getSchedule"  GridLines="Vertical" Height="146px" Width="772px" OnSelectedIndexChanged="serviceGrid_SelectedIndexChanged">
                         <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CustomerName" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="ServiceName" HeaderText="Service" SortExpression="Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Name" />
                        <asp:BoundField DataField="EmployeeName" HeaderText="Mechanic" SortExpression="Name" />
                        <asp:BoundField DataField="BookNo" HeaderText="Booking No" SortExpression="Name" />
                        
                        
                       
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                        </asp:GridView>
                        <asp:SqlDataSource ID="getSchedule" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" 
                            SelectCommand="uspGetUserBooking" SelectCommandType="StoredProcedure">
                            
                                <SelectParameters>
                                <asp:Parameter Name="customerID" Type="string" />
                                </SelectParameters>
       </asp:SqlDataSource>

                    </td>
                </tr>
               
                </table>
         <table id="signtable">
             <asp:SqlDataSource ID="getDrop" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" 
                            SelectCommand="uspGetCustBooking" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                                <asp:Parameter Name="customerID" Type="string" />
                                </SelectParameters>
                 </asp:SqlDataSource>
              <tr><td class="auto-style1">
                  <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold" Text="Remove Booking"></asp:Label> </td><td>
                  <asp:DropDownList ID="txtService" runat="server" DataValueField="BookNo" DataTextField="BookNo">
                  </asp:DropDownList>
                  
                  </td><td><asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Remove" /></td></tr>
                <tr><td class="auto-style1"><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold" Text="Check In"></asp:Label></td><td>
                    <asp:Label ID="Label2" runat="server" Text="Select a Booking No"></asp:Label>
                    <br />
                    <asp:DropDownList ID="txtBookNo" runat="server" DataValueField="BookNo" DataTextField="BookNo">
                  </asp:DropDownList>
                    
                    </td><td><asp:Button ID="btnCheckIn" runat="server" OnClick="btnCheckIn_Click" Text="Check In" /></td></tr>
         </table>
         </div>
</asp:Content>
