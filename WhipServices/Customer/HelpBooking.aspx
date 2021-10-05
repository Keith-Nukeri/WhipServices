<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="HelpBooking.aspx.cs" Inherits="WhipServices.Customer.HelpBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
     <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Help"></asp:Label> </td></tr>
            <tr>
                <td class="lcolumn" style="width: 102px">
                    <asp:Label 
             ID="Label1" 
             runat="server"
             Text="Create A Booking"
             Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold"
             >
        </asp:Label></td>
                <td class="rcolumn" style="width: 503px" id="txtServiceDate">
                    
                    <p> 1) Select the &quot;Booking&quot; option in the navigation, then pick &quot;Create Booking&quot; from the drop down list.</p>
                    <p> &nbsp;</p>
                    <p> 2) Most fields must be entered and selected.</p>
                    <p> &nbsp;</p>
                    <p> 3) Enter a &quot;Date&quot; which you wish your booking to be done. Be cautious with our working hours. We will assign a date and time if the date is not available.</p>
                    <p> &nbsp;</p>
                    <p> 4) Pick any &quot;Mechanic&quot; you wish to work on your vehicle.</p>
                    <p> &nbsp;</p>
                    <p> 5) Pick any &quot;Vehicle&quot; you wish to be booked in for a service. </p>
                    <p> &nbsp;</p>
                    <p> 6) &quot;Give us a detailed request&quot; is optional. You can specify other issues you would like us to look at. &quot;</p>
                    <p> &nbsp;</p>
                    <p> 7) Click the &quot;Book&quot; button to create the booking.</p>
                    <p> &nbsp;</p>
                    <p> 8) You can delete the booking if you change your mind.</p>
                    <p> &nbsp;</p>
                    <p> 9)You must &quot;Check In&quot; after you have dropped off your vehicle to our branch. Make sure you selected the right Booking No (number)</p>
                    </td>

            </tr>
        </table>
</asp:Content>
