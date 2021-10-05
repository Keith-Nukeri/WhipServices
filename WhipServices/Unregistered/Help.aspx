<%@ Page Title="" Language="C#" MasterPageFile="~/Unregistered/UnregisteredLayout.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="WhipServices.Unregistered.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Help"></asp:Label> </td></tr>
            <tr>
                <td class="lcolumn" style="width: 102px">
                    <asp:Label 
             ID="Label1" 
             runat="server"
             Text="Sign Up"
             Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold"
             >
        </asp:Label></td>
                <td class="rcolumn" style="width: 503px" id="txtServiceDate">
                    
                    <p> 1) Select the &quot;Login&quot; navigation button on top and then pick &quot;Sign Up&quot;</p>
                    <p> &nbsp;</p>
                    <p> 2) Select a &quot;Title&quot; from the dropdown list (Must) and your other details. </p>
                    <p> &nbsp;</p>
                    <p> 3) &quot;Email&quot;, &quot;Mobile number&quot; and &quot;Date of birth&quot; MUST be entered in the correct format. </p>
                    <p> &nbsp;</p>
                    <p> 4) It is optional to enter the &quot;Home Address&quot; Section.</p>
                    <p> &nbsp;</p>
                    <p> 5) It is a must to pick a username that does not exist, make it unique. Include special characters or numbers if you like.</p>
                    <p> &nbsp;</p>
                    <p> 6) Enter secure matching passwords, they can include special characetrs and numbers. Maximum of 20 characters. </p>
                    <p> &nbsp;</p>
                    <p> 7) Click the &quot;Save&quot; button. Your profile will be created and you will be redirected to a new screen.</p>
                    </td>

            </tr>
        </table>
</asp:Content>
