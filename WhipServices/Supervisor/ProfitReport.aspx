<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor/SupervisorLayout.Master" AutoEventWireup="true" CodeBehind="ProfitReport.aspx.cs" Inherits="WhipServices.Supervisor.ProfitReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 320px;
        }
        .auto-style2 {
            height: 321px;
        }
        .auto-style3 {
            height: 323px;
        }
        .auto-style4 {
            height: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="signtable" aria-atomic="False">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Service Profits for current year"></asp:Label> </td></tr>
            <tr>
                <td class="auto-style4">
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" BackColor="PapayaWhip" Palette="Fire" Width="650px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="ServiceName" YValueMembers="Sales">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" ShadowColor="Transparent">
                                <Area3DStyle Enable3D="True" LightStyle="None" PointDepth="60" PointGapDepth="20" Rotation="10" />
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspSalesMade" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </td>
               </tr>
    </table>
</asp:Content>
