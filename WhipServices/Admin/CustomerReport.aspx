<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CustomerReport.aspx.cs" Inherits="WhipServices.Admin.CustomerReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div>
    <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Top 5 Customer Bookings"></asp:Label> </td></tr>
            <tr>    <td>

    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="True" BackColor="Black"  Palette="EarthTones" Width="700px" Height="345px">
        <Series>
            <asp:Series Name="Series1" XValueMember="CustomerName" YValueMembers="ServicesNo" ChartType="Pie">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" BackColor="Black">
                <Area3DStyle Enable3D="True" />
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspTopCustomers" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </td></tr></table></div>



</asp:Content>
