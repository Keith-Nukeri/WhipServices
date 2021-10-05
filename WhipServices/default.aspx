﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WhipServices._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="View/StyleSheet.css" rel="stylesheet" />
</head>
<body id="body">
    <form id="form1" runat="server">
       
        <div id="menu" style="align-content:center">
        
            <ul>
            
            <li><a href="#">Login <span><img src="View/arrow.png" style="height:11px; width:11px;"/></span></a>
                <ul>
                    <li><a href="Unregistered/SignIn.aspx">Sign In</a></li>
                    <li><a href="Unregistered/SignUp.aspx">Sign Up</a></li>
                </ul>
            </li>

            <li><a href="Unregistered/uService.aspx">Service</a></li>
            <li><a href="Unregistered/AboutUs.aspx">About Us</a></li>
            
            <li><a href="Unregistered/Help.aspx">Help</a></li>
        </ul>
        </div>
        <div>
            <table> 
   <tr><td><br /><br /></td></tr>
  </table>
            <table id="signtable">
                
                <tr><td colspan="5" style=" font-size:44px; color:gold; font-family:'Times New Roman', Times, serif">  <asp:Label id="lblServices" runat="server" Text="Welcome To Whip Services"></asp:Label> </td></tr>
                <tr><td colspan="5" style=" font-size:22px; color:darkgoldenrod; font-family:'Times New Roman', Times, serif">  <asp:Label id="Label1" runat="server" Text="Whipping Cars Into Shape"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />                    <br /></td></tr>
                <tr><td>
                    <span><img src="View/gt500.jfif" style="height:530px; width:1049px;"/></span>
                    </td></tr>
                </table>
        </div>
        
        <div>
        </div>
        <div id="footer" >
            <table id="tbFoot">
                <tr>
                    <td class="auto-style5"><asp:Label runat="server" Text="Contact Us"></asp:Label> <br /> <br /> 
                        <asp:Label runat="server" Text="Tel: 013 111 3311 "></asp:Label> <br />
                        <asp:Label runat="server" Text="Fax: 012 082 5555"></asp:Label> <br />
                        <asp:Label runat="server" Text="Email: Whip1Services@gmail.com "></asp:Label>
                    </td>
                    
                    <td class="auto-style5">
                        <asp:Label runat="server" Text="Social Media"></asp:Label> <br /><br />
                        <img src="View/fb.png" style="height:15px; width:20px;"/> 
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="Facebook" style="color:gold" NavigateUrl="http://www.facebook.com" > </asp:HyperLink> <br />
                        <img src="View/tw.png" style="height:15px; width:20px;"/> 
                        <asp:HyperLink ID="HyperLink2" runat="server" Text="Twitter" style="color:gold" NavigateUrl="http://www.twitter.com" > </asp:HyperLink><br />
                        <img src="View/ig.png" style="height:15px; width:20px;"/> 
                        <asp:HyperLink ID="HyperLink3" runat="server" Text="Instagram" style="color:gold" NavigateUrl="http://www.instagram.com" > </asp:HyperLink>
                    </td>
                    
                    <td class="auto-style6"><br /><img src="View/aa.png" style="height:80px; width:180px;"/> </td>
                    
                    <td class="auto-style2"><br /> <img src="View/rmi.png" style="height:80px; width:180px;"/> </td>
                    
                    <td class="auto-style3"><br /> <img src="View/miwa.png" style="height:80px; width:180px;"/> </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
