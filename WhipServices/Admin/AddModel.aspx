<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddModel.aspx.cs" Inherits="WhipServices.Admin.AddModel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            
        <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Add Model"></asp:Label> </td></tr>
       
            <tr><td class="lcolumn" style="height: 36px">
            <asp:Label ID="Label2" runat="server" Text="Model Name:"></asp:Label></td>
                <td class="rcolumn" style="height: 36px; width: 503px;">
                    <asp:TextBox ID="txtModelName" placeholder="Corrola" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtModelName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="lcolumn">
            <asp:Label ID="Label1" runat="server" Text="Make:"></asp:Label>
                </td>
                <td class="rcolumn" style="width: 503px">
                    <asp:DropDownList ID="dropMake" AutoPostBack="true" runat="server"  Height="28px" Width="124px" DataTextField="MakeName" DataValueField="MakeID" >
                    
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropMake" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
              <tr><td class="rcolumn"><asp:Button Height="30px" Width="100px" forecolor="Black" Font-Bold="true" BackColor="#FDC84A" ID="btnAddModel" runat="server" Text="Add Model" OnClick="btnAddModel_Click"></asp:Button></td><td class="auto-style1"></td></tr>
        <tr><td></td></tr>
        </table>
            </div>
    <table id="signtable" class="auto-style1">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Model List"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>
                <tr>
                    <td colspan="5">
 <asp:GridView id="modelGrid" padding="10" runat="server" AutoGenerateColumns="False" DataSourceID="getModel"  GridLines="Vertical" Height="200px" Width="200px"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Model" SortExpression="Name" />
                         <asp:BoundField DataField="Brand" HeaderText="Make" SortExpression="Name" />
                        
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                    </asp:GridView>
        <asp:SqlDataSource ID="getModel" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" selectcommand="select m.ModelName AS Name, mm.MakeName as Brand  from Model m, Make mm where mm.MakeID=m.MakeID group by m.ModelName, mm.MakeName order by mm.MakeName"></asp:SqlDataSource>
       
                    </td>
                </tr>
                 
            </table>

</asp:Content>
