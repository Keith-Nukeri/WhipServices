<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddMake.aspx.cs" Inherits="WhipServices.Admin.AddMake" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <table id="signtable">
             
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Add Make"></asp:Label> </td></tr>
       
            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label2" runat="server" Text="Make Name:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtMakeName" placeholder="BMW" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMakeName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr><td class="rcolumn"><asp:Button Height="30px" Width="100px" forecolor="Black" Font-Bold="true" BackColor="#FDC84A" ID="btnAddMake" runat="server" Text="Add Make" OnClick="btnAddMake_Click"></asp:Button></td><td class="auto-style1"></td></tr>
        </table>
            
        <div>
            <table id="signtable" class="auto-style1">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Make List"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>
                <tr>
                    <td colspan="5">
 <asp:GridView id="makeGrid" padding="10" runat="server" AutoGenerateColumns="False" DataSourceID="getMake"  GridLines="Vertical" Height="200px" Width="200px"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                    </asp:GridView>
        <asp:SqlDataSource ID="getMake" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" selectcommand="select MakeName AS Name from Make"></asp:SqlDataSource>
       
                    </td>
                </tr>
                 
            </table>
        </div>
</asp:Content>
