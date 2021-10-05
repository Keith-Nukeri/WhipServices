<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerLayout.Master" AutoEventWireup="true" CodeBehind="HelpVehicle.aspx.cs" Inherits="WhipServices.Customer.Help" %>
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
             Text="Add Vehicle"
             Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold"
             >
        </asp:Label></td>
                <td class="rcolumn" style="width: 503px" id="txtServiceDate">
                    
                    <p> 1) Select the &quot;Customer&quot; option in the navigation, then pick &quot;Vehicle&quot; from the drop down list.</p>
                    <p> &nbsp;</p>
                    <p> 2) Select the &quot;Add vehicle&quot; button on the screen. </p>
                    <p> &nbsp;</p>
                    <p> 3) Fill in your vehicles &quot;Registration No(number)&quot; and the current killometers it has travelled. </p>
                    <p> &nbsp;</p>
                    <p> 4) You must select a &quot;Make&quot; from the drop down list, which will give you options on &quot;Models&quot; that are available. </p>
                    <p> (If your model is not available, or make, please feel free to let us know via email or phone us on the numbers provided.)</p>
                    <p> &nbsp;</p>
                    <p> 5) Body types can range from Sedan, Bakkie, SUV, 4x4, Van and plenty more. </p>
                    <p> &nbsp;</p>
                    <p> 6) Engine capacity is the vehicle engine specifics. </p>
                    <p> &nbsp;</p>
                    <p> 7) All details for this form MUST be provided. Otherwise vehicle won't be saved.</p>
                    <p> &nbsp;</p>
                    <p> 8) Click the &quot;Save&quot; button. Your vehicle will be added and you will be redirected to a new screen. You may add more than one vehicle. </p>
                    </td>

            </tr>
        </table>
</asp:Content>
