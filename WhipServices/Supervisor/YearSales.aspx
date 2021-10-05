<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor/SupervisorLayout.Master" AutoEventWireup="true" CodeBehind="YearSales.aspx.cs" Inherits="WhipServices.Supervisor.EmployeeProgress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
     <div>
    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Cars Serviced for current year per month"></asp:Label> </td></tr>
            <tr>    <td>

    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="True" BackColor="PapayaWhip" BorderlineDashStyle="DashDot" Palette="Fire" Width="649px">
        <Series>
            <asp:Series Name="Series1" XValueMember="sMonth" YValueMembers="ServicesNo">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <Area3DStyle Enable3D="True" PointDepth="60" PointGapDepth="10" />
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspYearSales" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspEmployeeProgress" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspEmployeeProgress" SelectCommandType="StoredProcedure"></asp:SqlDataSource>--%>
                </td></tr></table></div>

</asp:Content>
