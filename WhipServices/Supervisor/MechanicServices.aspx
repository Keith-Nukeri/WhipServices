<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor/SupervisorLayout.Master" AutoEventWireup="true" CodeBehind="MechanicServices.aspx.cs" Inherits="WhipServices.Supervisor.MechanicServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Mechenic Service Jobs"></asp:Label> </td></tr>
            <tr>
                <td>

                    <asp:Chart ID="Chart1" runat="server" BackColor="PapayaWhip" DataSourceID="SqlDataSource3" Palette="Fire" Width="672px">
                        <Series>
                            <asp:Series ChartType="Bar" Name="Series1" XValueMember="Mechanic" YValueMembers="ServicesNo">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <Area3DStyle Enable3D="True" IsClustered="True" LightStyle="Realistic" PointDepth="50" PointGapDepth="10" />
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspMechanicServices" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspYearSales" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspEmployeeProgress" SelectCommandType="StoredProcedure"></asp:SqlDataSource>--%>

                    </td>
                </tr></table>
</asp:Content>
