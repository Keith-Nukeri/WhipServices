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
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{
            //    dropDown1();
            //    dropDown2();
            //}
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            if (!IsPostBack)
            {
                List<uspDropBookings> drop = handler.GetDropBookings();

                txtBookingNo.DataSource = drop;
                List<DropMechanics> dro = handler.DropMechanic();

            txtEmployee.DataSource = dro;

            }
                

            txtBookingNo.DataBind();

           

            txtEmployee.DataBind();

        }
        public void dropDown1()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            List<uspDropListBooking> drop = handler.GetDropMechanic();

            txtEmployee.DataSource = drop;
           
            txtEmployee.DataBind();
            // txtMechanic.DataTextField = "MechanicName";
            // txtMechanic.DataValueField = "MechanicID";
           // txtMechanic.Items.Insert(0, new ListItem("Select Mechanic"));
        }

        public void dropDown2()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            List<uspDropBookings> drop = handler.GetDropBookings();

            txtBookingNo.DataSource = drop;
            
            txtBookingNo.DataBind();
            // txtMechanic.DataTextField = "MechanicName";
            // txtMechanic.DataValueField = "MechanicID";
            //txtBookingNo.Items.Insert(0, new ListItem("Select Booking No"));
        }

        protected void Schedulebooking_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            AddSchedule add = new AddSchedule();
            //DateTime date = DateTime.ParseExact(txtBookDate.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            add.BookDate = DateTime.Parse(txtBookDate.Text);
            add.MechanicID = Convert.ToInt32(txtEmployee.SelectedItem.Value);
            add.BookingNo = Convert.ToInt32(txtBookingNo.SelectedItem.Value);
            add.Time = DateTime.Parse(txtTime.Text);
            handler.AddSchedule(add);
            Response.Redirect("../Supervisor/Bookings.aspx");
        }
    }
}