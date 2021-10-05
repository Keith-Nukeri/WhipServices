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
    public partial class AddVehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
          //
            //dropMake.DataBind();
            if (!IsPostBack)
            {
                dropDown();
            }

            //make drop down make link with drop down model
        }

        public void dropDown()
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            List<uspModelDrop> drop = handler.GetMakeDrops();
            uspModelDrop name = new uspModelDrop();
            

            dropMake.DataSource = drop;
            dropMake.DataBind();
            //dropMake.DataTextField = name.MakeName;
           // dropMake.DataValueField = name.MakeID;
            
            dropMake.Items.Insert(0, new ListItem("Select Make","0"));

            


        }

        protected void dropMake_SelectedIndexChanged(object sender, EventArgs e)
        {

            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            uspModel make = new uspModel();



            //cookies
            SignedIn online = new SignedIn();
            if (Request.Cookies["Name"] != null)
            {
                online.UserName = Request.Cookies["Name"].Value;
            }

            make.MakeID = Convert.ToInt32(dropMake.SelectedValue);
            uspModels mod = new uspModels();
            int modelID = make.MakeID;

            List<uspModels> mods = handler.GetModels(make.MakeID);
            dropModel.DataSource = mods;
            dropModel.DataBind();
            //dropModel.DataTextField = mod.ModelName;
            // dropModel.DataValueField = mod.ModelID.ToString();
            dropModel.DataBind();
            dropModel.Items.Insert(0, new ListItem("Select Model", "0"));
            //txtOtherModel.Enabled = false;

        }

        protected void dropModel_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnAddVehicle_Click(object sender, EventArgs e)
        {
            /*
            SignedIn online = new SignedIn();
            if (Request.Cookies["Name"] != null)
            {
                online.UserName = Request.Cookies["Name"].Value;
            }
            */
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            
            SignedIn online = new SignedIn();
            HttpCookie cookie = Request.Cookies["UserInfo"];
            online.UserID = int.Parse(cookie["UserID"]);
            online.UserName = cookie["UserName"];
            //select a customer who has a user name equal to the user online


            //set cookies with int CustomerID 
            uspCustomerID id = new uspCustomerID();
            id = handler.GetCustomerID(online.UserID);
            HttpCookie customerID = new HttpCookie("CustomerID");
            cookie["CustomerID"] = id.CustomerID.ToString();
            Response.Cookies.Add(cookie);

            Vehicle car = new Vehicle();
            car.RegistrationNo = txtRegistrationNo.Text;
            car.Kilometers = int.Parse(txtKilometers.Text);
            //car.UserName = online.UserName;
           // car.MakeID = int.Parse(dropMake.SelectedItem.Value);
            car.ModelID = int.Parse(dropModel.SelectedValue);
            car.BodyType = txtBodyType.Text;
            car.Year = int.Parse(txtYear.Text);
            car.FuelType = txtFuelType.Text;
            car.EngineCapacity = txtEngineCapacity.Text;
            car.Transmission = txtTransmission.SelectedValue;
            car.CustomerID = id.CustomerID;


            
            handler.InsertVehicle(car);
            Response.Redirect("../Customer/ViewVehicle.aspx");
        }
    }
}