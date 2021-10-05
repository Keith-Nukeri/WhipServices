<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor/SupervisorLayout.Master" AutoEventWireup="true" CodeBehind="Between.aspx.cs" Inherits="WhipServices.Supervisor.Between" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Service Profits Between Dates"></asp:Label> 
                <br />
                <br />
                </td></tr>

                 <tr><td>
            <asp:Label ID="Label1" runat="server" Text="Start Date"></asp:Label><br />
                <asp:TextBox ID="txtStart" runat="server" TextMode="Date"></asp:TextBox> 
            
            </td></tr>
        <tr><td> </td></tr>
     
        <tr><td>
                <asp:Label ID="Label2" runat="server" Text="End Date"></asp:Label><br />
                <asp:TextBox ID="txtEnd" runat="server" TextMode="Date"></asp:TextBox>
            </td></tr>  <tr><td><asp:Button ID="btnGetBetween" forecolor="Black" Font-Bold="true" BackColor="#FDC84A" runat="server" Text="Get Sales" /></td></tr> <br />
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" BackColor="PapayaWhip" Palette="Fire" Width="650px" Height="269px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="ServiceName" YValueMembers="Sales">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BackColor="PeachPuff">
                                <Area3DStyle Enable3D="True" PointDepth="50" />
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspSalesBewteen" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtStart" DbType="Date" Name="startDate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtEnd" DbType="Date" Name="endDate" PropertyName="Text" />
                        </SelectParameters>

                    </asp:SqlDataSource>
                </td>
               </tr>
    </table>

</asp:Content>
