<%@ Page Title="" Language="C#" MasterPageFile="~/Unregistered/UnregisteredLayout.Master" AutoEventWireup="true" CodeBehind="uService.aspx.cs" Inherits="WhipServices.Unregistered.uService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <table id="signtable">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Services Avialable"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>
                <tr>
                    <td colspan="5">
 <asp:GridView id="serviceGrid" padding="10" runat="server" AutoGenerateColumns="False" DataSourceID="getServices"  GridLines="Vertical" Height="130px" Width="1000px"   >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price Estimation" DataFormatString="{0:C}" />
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                    </asp:GridView>
        <asp:SqlDataSource ID="getServices" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" selectcommand="select * from Services"></asp:SqlDataSource>
       
                    </td>
                </tr>
                 
            </table>
</asp:Content>
