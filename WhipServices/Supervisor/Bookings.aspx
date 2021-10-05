<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor/SupervisorLayout.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="WhipServices.Supervisor.Bookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
            <table id="signtable">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Pending Bookings"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>

                <tr>
                    <td colspan="5">

                        <asp:GridView id="bookingsGrid" runat="server"  padding="10"  AutoGenerateColumns="False" DataSourceID="getBookings"  GridLines="Vertical" Height="96px" Width="772px" >
                         <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="bDate" HeaderText="Date" SortExpression="Name" />
                        <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Name" />
                        <asp:BoundField DataField="sName" HeaderText="Service" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Name" />
                        <asp:BoundField DataField="BookingNo" HeaderText="Booking No" SortExpression="Name" />
                        <asp:BoundField DataField="Mechanic" HeaderText="Mechanic" SortExpression="Name" />
                        
                        
                       
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                        </asp:GridView>
                        <asp:SqlDataSource ID="getBookings" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" 
                            SelectCommand="uspGetBookings" SelectCommandType="StoredProcedure">
                                
       </asp:SqlDataSource>

                    </td>
                </tr>

                </table>


         </div>


    <div>
            <table id="signtable">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Schedule Booking"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>

                <tr><td class="lcolumn" style="height: 36px; width: 201px;">
            <asp:Label ID="Label2" runat="server" Text="Select Booking No:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:DropDownList ID="txtBookingNo" AutoPostBack="false" runat="server" DataTextField="BookingNo" DataValueField="BookingNo" Height="22px">
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBookingNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>

                 <tr><td class="lcolumn" style="height: 36px; width: 201px;">
            <asp:Label ID="Label3" runat="server" Text="Select Mechanic:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:DropDownList ID="txtEmployee" AutoPostBack="true" runat="server" DataTextField="MechanicName" DataValueField="MechanicID" Height="22px">
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmployee" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
                <tr>
                <td class="lcolumn" style="width: 102px">
            <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px" id="txtServiceDate">
                    
                   
                    <asp:TextBox ID="txtBookDate"  runat="server" TextMode="Date"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBookDate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>

            </tr>

                <tr>
                <td class="lcolumn" style="width: 102px">
            <asp:Label ID="Label5" runat="server" Text="Time:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px" id="txtTime">
                    
                   
                    <asp:TextBox ID="txtTime" placeholder="13:00" MaxLength="10" MinLength="10" runat="server" TextMode="Time"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTime" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>

            </tr>


                <tr><td class="rcolumn" style="width: 102px">
                <asp:Button forecolor="Black" Font-Bold="true" BackColor="#FDC84A" Height="30px" Width="100px" ID="btnSchedulebooking" runat="server" Text="Schedule" OnClick="Schedulebooking_Click" />
                </td><td class="auto-style1">
                    <asp:Label ID="lblErr" runat="server" ForeColor="Red" Text="Err" Visible="False"></asp:Label>
                </td></tr>
                  </table>


         </div>


</asp:Content>
