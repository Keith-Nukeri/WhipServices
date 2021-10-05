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

namespace WhipServices.Unregistered
{
    public partial class SignUp : System.Web.UI.Page
    {       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        
        protected void SaveCustomer_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            //SqlCommand cmd = new SqlCommand("insert into Customer values('"+txtTitle+"')");
            TypeLibrary.Models.Customer cust = new TypeLibrary.Models.Customer();
            User user = new User();

            uspCheckUsername check = new uspCheckUsername();
            
            cust.Title = txtTitle.SelectedItem.Value;
            cust.FirstName= txtFirstName.Text  ;
             cust.Surname = txtSurname.Text ;
             cust.Email= txtEmail.Text ;
             cust.PhoneNumber = txtPhoneNo.Text;
           //DateTime DOB = DateTime.ParseExact(txtDOB.Text,"dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            cust.DOB = DateTime.Parse(txtDOB.Text);
            cust.StreetAddress = txtStreetAddress.Text;
            cust.Suburb = txtSuburb.Text;
            cust.City = txtCity.Text;
            cust.Province = txtProvince.Text;
            cust.ZipCode = txtZipCode.Text;

            user.UserName = txtUserName.Text;
            user.Password = txtPassword.Text;
            user.UserRole = "C";
            cust.UserName = txtUserName.Text;
            //check username duplicacy
            check = handler.CheckUsername(user.UserName);
            
            try { 
                    if(check.UserName == user.UserName)
                    {
                        lblErr.Visible = true;
                        lblErr.Text =  user.UserName+" already exists.";
                    }
                    
            }
            catch
            {
                uspCustomerID c = new uspCustomerID();
                //insert user details and get user id
                c = handler.InsertUser(user);
                //set user ID
                cust.CustomerID = c.CustomerID;
                //insert customer 
                handler.InsertCustomer(cust);
                Response.Redirect("SignIn.aspx");
            }
           
        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {
            
        }
        
       
    }
}