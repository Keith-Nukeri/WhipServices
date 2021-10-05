<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WhipServices.Customer.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="About Us"></asp:Label> </td></tr>
            <tr>
                <td class="lcolumn" style="width: 102px">
                    <asp:Label 
             ID="Label1" 
             runat="server"
             Text="Working Hours"
             Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold"
             >
        </asp:Label></td>
                <td> <p> 

                     Weekdays: 08:00 - 16:30</p>
                    <p> 

                        Weekends/Holidays: 09:00 - 14:00</p>
                    <p> 

                        &nbsp;</p>
                    <p> 

                        &nbsp;</p></td>
                </tr>
             <tr>
                <td class="lcolumn" style="width: 102px">
                    <asp:Label 
             ID="Label2" 
             runat="server"
             Text="Whip Services"
             Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold"
             >
        </asp:Label></td>
                <td> 
                    <p> 

                        Whip Services is an online purchasing and booking system for customers. 
                        Whip Service brings together the ease of online shopping where customers can purchase quality, 
                        original vehicle products and vehicle related equipment with the peace of mind of knowing that there are 
                        qualified mechanics available to install those products that were bought or to use them in a service.</p>
                    <p> 

                        &nbsp;</p>
                    <p> 

                        &nbsp;</p></td>
                </tr>
        <tr>
                <td class="lcolumn" style="width: 102px">
                    <asp:Label 
             ID="Label3" 
             runat="server"
             Text="Branch"
             Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold"
             >
        </asp:Label></td>
                <td> 
                    <p> 

                        109 Main Rd &amp; 8th Ave, Walmer, Port Elizabeth, 6070</p>
                    <p> 

                        Contact: 013 111 3311</p>
                    <p> 

                        &nbsp;</p></td>
                </tr>
            
        </table>
</asp:Content>
