using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using TypeLibrary.Interface;
using TypeLibrary.Models;
using TypeLibrary.ViewModels;

namespace WhipServices.Supervisor
{
    public partial class AddReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // dropDown1();
            // dropDown2();
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            if (!IsPostBack)
            {
                List<uspDropListBooking> drop = handler.GetDropMechanic();

             txtMechanic.DataSource = drop;
                List<CheckedIn> drop1 = handler.GetCheckedInVehicles();

                txtVehicle.DataSource = drop1;

            }
            txtMechanic.DataBind();
            txtVehicle.DataBind();
        }
        //mechanic
        public void dropDown1()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            
            
            
           
        }
        //vehicles
        public void dropDown2()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            
            // txtMechanic.DataTextField = "MechanicName";
            // txtMechanic.DataValueField = "MechanicID";
            
            //   txtMechanic.Items.Insert(0, new ListItem("Select Mechanic"));
        }

        protected void btnCreateReport_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            uspAddReport report = new uspAddReport();
            
            report.EmployeeID = int.Parse(txtMechanic.SelectedItem.Value);
            report.ScheduleID = int.Parse(txtVehicle.SelectedValue);
            report.Report = txtReport.Text;
            report.Solution = txtSolution.Text;
           /* DateTime reportDate = DateTime.ParseExact(
                txtDate.Text,
                "dd/MM/yyyy",
                System.Globalization.CultureInfo.InvariantCulture);*/
            report.Date = DateTime.Parse(txtDate.Text);

            handler.AddVehicleReport(report);
            Response.Redirect("../Supervisor/AddReport.aspx");
        }
    }
}