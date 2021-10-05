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

namespace WhipServices.Admin
{
    public partial class AddStuff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            //SqlCommand cmd = new SqlCommand("insert into Customer values('"+txtTitle+"')");
            TypeLibrary.Models.Stuff stf = new TypeLibrary.Models.Stuff();
            User user = new User();

            uspCheckUsername check = new uspCheckUsername();

            stf.Title = txtTitle.SelectedItem.Value;
            stf.FirstName = txtFirstName.Text;
            stf.Surname = txtSurname.Text;
            stf.Email = txtEmail.Text;
            stf.PhoneNumber = txtPhoneNo.Text;
            //DateTime DOB = DateTime.ParseExact(txtDOB.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            stf.DOB = DateTime.Parse(txtDOB.Text);
            stf.StreetAddress = txtStreetAddress.Text;
            stf.Suburb = txtSuburb.Text;
            stf.City = txtCity.Text;
            stf.Province = txtProvince.Text;
            stf.ZipCode = txtZipCode.Text;
            stf.UserRole = txtUserRole.Text;
           
            //user table
            user.UserName = txtUserName.Text;
            user.Password = txtPassword.Text;
            user.UserRole = "E";
            stf.UserName = txtUserName.Text;

            //check username duplicacy
            check = handler.CheckUsername(user.UserName);

            try
            {
                if (check.UserName == user.UserName)
                {
                    lblErr.Visible = true;
                    lblErr.Text = user.UserName + " already exists.";
                }

            }
            catch
            {
                uspCustomerID c = new uspCustomerID();
                //insert user details and get user id
                c = handler.InsertUser(user);
                //set user ID
                stf.EmployeeID = c.CustomerID;
                //insert stuff
                handler.InsertStuff(stf);
                // Response.Redirect("SignIn.aspx");
                Response.Redirect("ViewStuff.aspx");
            }
        }
    }
}