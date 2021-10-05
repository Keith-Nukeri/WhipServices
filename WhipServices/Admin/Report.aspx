<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="WhipServices.Admin.Report" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
            <table id="signtable" class="auto-style1">
                
                <tr><td id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Services Used Report"></asp:Label> </td></tr>
                <tr><td>
                    
                    <br />
                    <br /></td></tr>
 <tr><td>
     
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" BackColor="Black" Width="566px" Palette="EarthTones" Height="333px">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" XValueMember="Name" YValueMembers="ServiceNo" IsValueShownAsLabel="True" Legend="BookedServices"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" BackColor="Black">
                <Area3DStyle Enable3D="True" IsClustered="True" IsRightAngleAxes="False" />
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend BackColor="Transparent" Font="Times New Roman, 11.25pt" ForeColor="Gold" IsTextAutoFit="False" Name="BookedServices" Title="Booked Services" TitleFont="Times New Roman, 11.25pt, style=Bold">
            </asp:Legend>
        </Legends>
    </asp:Chart>

     
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhipServiceDBConnectionString %>" SelectCommand="uspReportServices" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</td></tr>
</table>
         </div>
</asp:Content>
