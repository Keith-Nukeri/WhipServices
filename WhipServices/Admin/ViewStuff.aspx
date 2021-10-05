<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewStuff.aspx.cs" Inherits="WhipServices.Admin.ViewStuff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <table id="signtable" class="auto-style1">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Staff list"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>
                <tr>
                    <td colspan="5">
 <asp:GridView id="stuffGrid" padding="10" runat="server" AutoGenerateColumns="False" DataSourceID="getStuff"  GridLines="Vertical" Height="130px" Width="1000px"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Name" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Name" />
                        
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                    </asp:GridView>
        <asp:SqlDataSource ID="getStuff" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" selectcommand="select FirstName+ ' ' + Surname AS Name, PhoneNumber as Contact, [UserRole(M,S)] as Role from Employee"></asp:SqlDataSource>
       
                    </td>
                </tr>
                 
            </table>
        </div>
</asp:Content>
