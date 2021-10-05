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

namespace WhipServices.Customer
{
    public partial class ViewSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get cookies with customerID
            uspCustomerID id = new uspCustomerID();
            HttpCookie customerID = Request.Cookies["CustomerID"];
            id.CustomerID = int.Parse(customerID["CustomerID"]);


            getSchedule.SelectParameters["CustomerID"].DefaultValue = id.CustomerID.ToString();
            /* IWhipService db = new DBAccess();
             DBHandler handler = new DBHandler(db);

             List<uspDropListBooking> drop = handler.GetDropService();

             txtService.DataSource = drop;
             //txtService.DataTextField = "ServiceName";
             // txtService.DataValueField = "ServiceID";
             txtService.DataBind();
             txtService.Items.Insert(0, new ListItem("Select Service"));*/

            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            List<CustBooking> book = handler.GetCustBooking(id.CustomerID);
            txtService.DataSource = book;
            txtService.DataBind();
            txtBookNo.DataSource = book;
            txtBookNo.DataBind();

            
        }

        protected void serviceGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);


            //Get cookies with customerID
            uspCustomerID id = new uspCustomerID();
            HttpCookie customerID = Request.Cookies["CustomerID"];
            id.CustomerID = int.Parse(customerID["CustomerID"]);

           int bookId = Convert.ToInt32(txtService.SelectedItem.Value);
            handler.DeleteBooking(bookId);
            Response.Redirect("ViewSchedule.aspx");
        }

        protected void btnCheckIn_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);


            //Get cookies with customerID
            uspCustomerID id = new uspCustomerID();
            HttpCookie customerID = Request.Cookies["CustomerID"];
            id.CustomerID = int.Parse(customerID["CustomerID"]);
            int bookId = Convert.ToInt32(txtBookNo.SelectedItem.Value);
            //user must enter booking ID and Customer ID will be used to confirm that check in
            handler.CheckIn(bookId,  id.CustomerID);
            Response.Redirect("ViewSchedule.aspx");

        }
    }
}