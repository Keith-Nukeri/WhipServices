<%@ Page Title="" Language="C#" MasterPageFile="~/Unregistered/UnregisteredLayout.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WhipServices.Unregistered.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <br />
            <br />

    <table id="logtable" style="width:20%;" >
        
         <tr>
            <td>
                
                <asp:Label ID="heading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="SIGN IN"></asp:Label>

                <br />

                <br />

            </td>
        </tr>
        
        
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold" Text="Username"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="Large"
                        forecolor="gold" Text="Password"></asp:Label></td>
            
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
                
        <tr>
            
            <td style="text-align:center" class="auto-style1">
                <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" forecolor="Black" Font-Bold="true" BackColor="#FDC84A" Height="30px" Width="100px" Text="Sign In" />
                <br />
                <asp:Label ID="errLogin" runat="server" Text="err" Visible="False" ForeColor="Red"></asp:Label>

            </td>
        </tr>
        <tr>
           
            <td>
                <br />
                
                </td>
            
        </tr>
        
    </table>

        </div>
        <div>
            <br />
    <table id="signtable" style="width:20%;">
        
         <tr>
            <td>
                
                <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="">New Customer? <br /> Create your <br /> Whip Service <br /> profile Now!</asp:Label>

            </td>
        </tr>
        
        <tr>
            
            <td style="text-align:center">
                <asp:LinkButton href="SignUp.aspx" style="color:gold" runat="server">Sign Up</asp:LinkButton>
            </td>
            
        </tr>
        
    </table>

        </div>
</asp:Content>
