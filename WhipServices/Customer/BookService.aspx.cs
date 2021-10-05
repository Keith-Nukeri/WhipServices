using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using DAL;
using BLL;
using TypeLibrary.Interface;
using TypeLibrary.Models;
using TypeLibrary.ViewModels;

namespace WhipServices.Customer
{
    public partial class BookService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SignedIn online = new SignedIn();
            //cookies
            if (Request.Cookies["Name"] != null)
            {
                online.UserName = Request.Cookies["Name"].Value;
            }

            
            if (!IsPostBack)
            {
                dropDown1(); //mechanic
                dropDown(); //service
                dropDown2(); //vehicle
            }

            
            
            
            //DateTime DOB = DateTime.ParseExact(txtDOB.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
           // cust.DOB = DOB;
           
        }
        //service
        public void dropDown()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            List<uspDropListBooking> drop = handler.GetDropService();

            txtService.DataSource = drop;
            //txtService.DataTextField = "ServiceName";
            // txtService.DataValueField = "ServiceID";
            txtService.DataBind();
           // txtService.Items.Insert(0, new ListItem("Select Service"));

        }

        //mechanic
        public void dropDown1()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            List<uspDropListBooking> drop = handler.GetDropMechanic();

            txtMechanic.DataSource = drop;
           // txtMechanic.DataTextField = "MechanicName";
           // txtMechanic.DataValueField = "MechanicID";
            txtMechanic.DataBind();
         //   txtMechanic.Items.Insert(0, new ListItem("Select Mechanic"));
        }

        //vehicle
        public void dropDown2()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            SignedIn online = new SignedIn();

            //set cookies with int CustomerID 
            /*
            id = handler.GetCustomerID(online.UserID);
            HttpCookie customerID = new HttpCookie("CustomerID");
            customerID["CustomerID"] = id.CustomerID.ToString();
            Response.Cookies.Add(customerID);*/

            //Get cookies with customerID
            uspCustomerID id = new uspCustomerID();
            HttpCookie customerID = Request.Cookies["CustomerID"];
            id.CustomerID = int.Parse(customerID["CustomerID"]);


            List<uspDropListBooking> drop = handler.GetDropVehicle(id.CustomerID);

            txtVehicle.DataSource = drop;
           // txtVehicle.DataTextField = "RegistrationNo";
            //txtVehicle.DataValueField = "VehicleID";
            txtVehicle.DataBind();
            //txtVehicle.Items.Insert(0, new ListItem("Select Vehicle"));

        }

        protected void btnBookService_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);


            //Get cookies with customerID
            uspCustomerID id = new uspCustomerID();
            HttpCookie customerID = Request.Cookies["CustomerID"];
            id.CustomerID = int.Parse(customerID["CustomerID"]);

            uspBookService book = new uspBookService();
           /* DateTime bookD = DateTime.ParseExact(
                txtBookDate.Text,
                "dd/MM/yyyy",
                System.Globalization.CultureInfo.InvariantCulture);
            //DateTime booking = new DateTime(txtBookDate.Text);*/
            book.CustomerID = id.CustomerID;
          
            book.BookDate = DateTime.Parse(txtBookDate.Text);
            book.MechanicId = 0; book.ServiceID = 0; book.VehicleID = 0;
            book.MechanicId = Convert.ToInt32(txtMechanic.SelectedItem.Value);
            book.ServiceID = Convert.ToInt32(txtService.SelectedItem.Value);
            book.VehicleID = Convert.ToInt32(txtVehicle.SelectedItem.Value);
            book.Description = txtDescription.Text;

            try
            {
                if (book.MechanicId == 0 || book.ServiceID == 0 || book.VehicleID == 0)
                {
                    lblErr.Visible = true;
                    lblErr.Text = "Please enter all fields";
                }
                else
                {
                    handler.BookService(book);

                }
            }
            catch
            {
                lblErr.Visible = true;
                lblErr.Text = "Unable to book service. Please try again :)";

            }
            
            
            Response.Redirect("../Customer/ViewSchedule.aspx");
        }
    }
}