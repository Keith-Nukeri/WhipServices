<%@ Page Title="" Language="C#" MasterPageFile="~/Unregistered/UnregisteredLayout.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WhipServices.Unregistered.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Sign Up"></asp:Label> </td></tr>
     <tr><td></td></tr>
        
    <tr>
                <td class="lcolumn">
            <asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:DropDownList ID="txtTitle" runat="server" Height="27px" Width="124px">
                    <asp:ListItem Selected="True">Select Title </asp:ListItem>
                    <asp:ListItem Value="Mr"> Mr. </asp:ListItem>
                    <asp:ListItem Value="Miss"> Miss. </asp:ListItem>
                    <asp:ListItem Value="Mrs"> Mrs. </asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtFirstName" placeholder="Keith" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label3" runat="server" Text="Surname:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtSurname" placeholder="Kaballah" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSurname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtEmail" placeholder="Kaballah@gmail.com" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Incorrect Email Format" ForeColor="#FF9900" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label6" runat="server" Text="Mobile Number:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtPhoneNo" placeholder="0764798555" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Incorrect Mobile Number Format" ForeColor="#FF9900" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label7" runat="server" Text="Date Of Birth:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    
                   
                    <asp:TextBox ID="txtDOB" placeholder="dd/mm/yyyy" MaxLength="10" MinLength="10" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDOB" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
    <tr><td></td></tr>

    <tr id="heading1" style="align-content:center" ><td colspan="2">
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Home Address"></asp:Label>
        </tr>

            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label5" runat="server" Text="Street Address:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtStreetAddress" placeholder="17 Humewood Road" runat="server"></asp:TextBox>
                </td>
            </tr>

             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label15" runat="server" Text="Suburb:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtSuburb" placeholder="Humewood" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label13" runat="server" Text="City:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtCity" placeholder="Humewood
" runat="server"></asp:TextBox>
                </td>
            </tr>

             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label12" runat="server" Text="Province:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtProvince" placeholder="Eastern Cape" runat="server"></asp:TextBox>
                </td>
            </tr>


             <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label14" runat="server" Text="Zip Code:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtZipCode" placeholder="6001" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr><td colspan="2">
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold" Text="Sign In Credentials"></asp:Label>
            </td></tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label8" runat="server" Text="User Name:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtUserName" placeholder="Kaballah777" runat="server"></asp:TextBox>
                    <asp:Label id="lblErr" runat="server" Text="" Visible="False" ForeColor="#FF3300"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="lcolumn" style="vertical-align: top;"><asp:Label ID="Label9" runat="server" Text="Password:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtPassword" placeholder="*********" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword1" ErrorMessage="Passwords don't match" ForeColor="#FF9900"></asp:CompareValidator>
                   </td>

            </tr>

            <tr>
                <td class="lcolumn"><asp:Label ID="Label10" runat="server" Text="Re-enter password:"></asp:Label></td>
                <td class="rcolumn" style="width: 503px">
                    <asp:TextBox ID="txtPassword1" placeholder="Kaballah@12" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPassword1" ErrorMessage="Enter Matching password" ForeColor="Red"></asp:RequiredFieldValidator>
                
                </td>

            </tr>

           
            <tr><td class="rcolumn"><asp:Button forecolor="Black" Font-Bold="true" BackColor="#FDC84A" runat="server" Text="Save" Height="30px" Width="100px" OnClick="SaveCustomer_Click" ></asp:Button></td><td class="auto-style1"></td></tr>
        </table>
</asp:Content>
