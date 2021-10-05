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

    public partial class Profile : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            uspUserProfile prof = new uspUserProfile();


            


            //cookies
             SignedIn sign = new SignedIn();
              if(Request.Cookies["Name"] != null)
              {
                 sign.UserName = Request.Cookies["Name"].Value;
              }
              
            //Get Cookies
            SignedIn online = new SignedIn();
            HttpCookie cookie = Request.Cookies["UserInfo"];
            online.UserID = int.Parse(cookie["UserID"]);
            online.UserName = cookie["UserName"];
            //Response.Redirect("../Customer/Profile.aspx");
            
            //Set cookies with int CustomerID 
           uspCustomerID id = new uspCustomerID();
            id = handler.GetCustomerID(online.UserID);
            HttpCookie customerID = new HttpCookie("CustomerID");
            customerID["CustomerID"] = id.CustomerID.ToString();
            Response.Cookies.Add(customerID);
            
            prof = handler.GetProfile(online.UserName);
            if (!IsPostBack)
            {
                txtTitle.Text = prof.Title;
                txtFirstName.Text = prof.FirstName;
                txtSurname.Text = prof.Surname;
                txtEmail.Text = prof.Email;
                txtPhoneNo.Text = prof.PhoneNumber;
                txtDOB.Text = prof.DOB;
                txtStreetAddress.Text = prof.StreetAddress;
                txtSuburb.Text = prof.Suburb;
                txtCity.Text = prof.City;
                //txtCity.Text = prof.City;
                txtProvince.Text = prof.Province;
                txtZipCode.Text = prof.ZipCode;

                //DateTime DOB = DateTime.ParseExact(prof.DOB, "dd/MM/yyyy HH:mm", System.Globalization.CultureInfo.InvariantCulture);
                //txtDOB.Text = prof.DOB.ToString("dd/MM/yyyy");

                //txtUserName.Text = prof.UserName;
                //txtPassword.Text = prof.Password;
                //txtPassword1.Text = txtPassword.Text;
                //txtUserRole.Text = prof.UserRole;
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            UpdateProfile update = new UpdateProfile();
            //SignedIn online = new SignedIn();
            //cookies
            /* if (Request.Cookies["Name"] != null)
             {
                 online.UserName = Request.Cookies["Name"].Value;
             }*/

            //Online User cridentials
            SignedIn online = new SignedIn();
            HttpCookie cookie = Request.Cookies["UserInfo"];
            online.UserID = int.Parse(cookie["UserID"]);
            online.UserName = cookie["UserName"];

                update.UserID = online.UserID;
                update.Email = txtEmail.Text;
                update.PhoneNumber = txtPhoneNo.Text;
                update.StreetAddress = txtStreetAddress.Text;
                update.Suburb = txtSuburb.Text;
                update.City = txtCity.Text;
                update.Province = txtProvince.Text;
                update.ZipCode = txtZipCode.Text;
                
            try
            {
                if(update != null)
                {
                    handler.UpdateProfile(update);
                }
                
            }
            catch
            {
                lblErr.Visible = true;
                lblErr.Text = "Unable to update";
            }
               // handler.UpdateProfile(update);
             Response.Redirect("../Customer/ViewVehicle.aspx");


            // else
            /*{
                lblErr.Visible = true;
                lblErr.Text = "Unable to update";
            }*/
            //Set cookies with int CustomerID 
            uspCustomerID id = new uspCustomerID();
            id = handler.GetCustomerID(online.UserID);
            HttpCookie customerID = new HttpCookie("CustomerID");
            cookie["CustomerID"] = id.CustomerID.ToString();
            Response.Cookies.Add(cookie);

        }
    }
}