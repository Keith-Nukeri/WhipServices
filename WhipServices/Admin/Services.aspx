<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="WhipServices.Admin.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <table id="signtable" class="auto-style1">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Service List"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>
                <tr>
                    <td colspan="5">
 <asp:GridView id="serviceGrid" padding="10" runat="server" AutoGenerateColumns="False" DataSourceID="getServices"  GridLines="Vertical" Height="310px" Width="853px"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Labour" HeaderText="Labour" SortExpression="Name" DataFormatString="{0:C}"/>
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Name" DataFormatString="{0:C}" />
                        
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Name" />
                        
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                    </asp:GridView>
        <asp:SqlDataSource ID="getServices" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" selectcommand="select Name, Description, Labour, Price from Services"></asp:SqlDataSource>
       
                    </td>
                </tr>
                 
            </table>
        </div>
</asp:Content>
