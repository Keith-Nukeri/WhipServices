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
using System.Data;
using System.Windows.Forms;

namespace WhipServices.Customer
{
    public partial class ViewVehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            txtVehicle.Visible = false;            //Get cookie with int customerID
            uspCustomerID online = new uspCustomerID();
            HttpCookie customerID = Request.Cookies["CustomerID"];
            online.CustomerID = int.Parse(customerID["CustomerID"]);
            getVehicle.SelectParameters["CustomerID"].DefaultValue = online.CustomerID.ToString();
        }
        protected void btnAddvehicle_Click(object sender, EventArgs e)
        {
            //cookies
            SignedIn online = new SignedIn();
            if (Request.Cookies["Name"] != null)
            {
                online.UserName = Request.Cookies["Name"].Value;
            }
            Response.Redirect("../Customer/AddVehicle.aspx");

        }
        protected void btnDeleteVehicle_Click(object sender, EventArgs e)
        {
            txtVehicle.Visible = true;
                dropDown2(); //vehicle
        }
        public void dropDown2()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            SignedIn online = new SignedIn();
            //Get cookies with customerID
            uspCustomerID id = new uspCustomerID();
            HttpCookie customerID = Request.Cookies["CustomerID"];
            id.CustomerID = int.Parse(customerID["CustomerID"]);
            List<uspDropListBooking> drop = handler.GetDropVehicle(id.CustomerID);
            txtVehicle.DataSource = drop;
            txtVehicle.DataBind();
            txtVehicle.Items.Insert(0, new ListItem("Select Vehicle"));
        }
        protected void txtVehicle_SelectedIndexChanged(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            if (IsPostBack && int.Parse(txtVehicle.SelectedValue) > 0)
            {
                    handler.DeleteVehicle(int.Parse(txtVehicle.SelectedValue));
                    Response.Redirect("../Customer/ViewVehicle.aspx");
            }
        }

        protected void btnDEL_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            

        }
        protected void serviceGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}