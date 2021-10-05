<%@ Page Title="" Language="C#" MasterPageFile="~/Supervisor/SupervisorLayout.Master" AutoEventWireup="true" CodeBehind="AddReport.aspx.cs" Inherits="WhipServices.Supervisor.AddReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>   <div>
            <table id="signtable">
                
                <tr><td colspan="5" id="heading">  <asp:Label id="lblServices" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Vehicles under service"></asp:Label> </td></tr>
                <tr><td colspan="5"><br />
                    <br /></td></tr>

                <tr>
                    <td colspan="5">

                        <asp:GridView id="servicingGrid" runat="server"  padding="10"  AutoGenerateColumns="False" DataSourceID="getServicing"  GridLines="Vertical" Height="96px" Width="772px" >
                         <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <%--<asp:BoundField DataField="Mechanic" HeaderText="Mechanic" SortExpression="Name" />--%>
                        <asp:BoundField DataField="Vehicle" HeaderText="Vehicle" SortExpression="Name" />
                        <asp:BoundField DataField="ServiceName" HeaderText="Service" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Name" />
                        
                        
                        
                       
                    </Columns>
                    <FooterStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" ForeColor="Black"  />
                    <SelectedRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" />
                    
                        </asp:GridView>
                        <asp:SqlDataSource ID="getServicing" runat="server" ConnectionString="server=SICT-SQL; database=WhipServiceDB; User Id=CSMS05; Password=Password2019" 
                            SelectCommand="uspGetServicing" SelectCommandType="StoredProcedure">
                                
       </asp:SqlDataSource>

                    </td>
                </tr>

                </table>

        
         </div>
        <div>
        <table id="signtable">
            <tr> <td id="heading" style="align-content:center" colspan="2"><asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
             Font-Size="X-Large"
                        forecolor="gold" Text="Create Report"></asp:Label> </td></tr>
     <tr><td></td></tr>
        
    <tr>
        <td class="lcolumn"><asp:Label runat="server" Text="Mechanic"></asp:Label></td>
        <td class="rcolumn">
            <asp:DropDownList ID="txtMechanic" AutoPostBack="true" runat="server" DataTextField="MechanicName" DataValueField="MechanicID" Height="22px">
                    </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMechanic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td> 

    </tr>
            <tr>
        <td class="lcolumn"><asp:Label runat="server" Text="Vehicle"></asp:Label></td>
        <td class="rcolumn"><asp:DropDownList ID="txtVehicle" AutoPostBack="true" runat="server" DataTextField="RegistrationNo" DataValueField="ScheduleID" Height="22px">
                    </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVehicle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td> 

    </tr>
            <tr>
        <td class="lcolumn"<asp:Label runat="server" Text="Report"></asp:Label></td>
        <td class="rcolumn"><asp:TextBox ID="txtReport" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox></td> 

    </tr>
            <tr>
        <td class="lcolumn"><asp:Label runat="server" Text="Solution"></asp:Label></td>
        <td class="rcolumn"><asp:TextBox ID="txtSolution" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox></td> 

    </tr>
            <tr>
        <td class="lcolumn"><asp:Label runat="server" Text="Date"></asp:Label></td>
        <td class="rcolumn"><asp:TextBox ID="txtDate" runat="server" Width="140px" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td> 
               

    </tr>
            <tr>
                <td class="lcolumn"> <asp:Button forecolor="Black" Font-Bold="true" BackColor="#FDC84A" Height="30px" Width="100px" ID="btnCreateReport" runat="server" Text="Save Report" OnClick="btnCreateReport_Click" /></td>
                <td></td>
            </tr>
            </table>
        </div>
</asp:Content>
