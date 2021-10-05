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
namespace WhipServices.Unregistered
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {

            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);


            string UserName = txtUserName.Text;
            string Password = txtPassword.Text;

            // Checks user login details and returns found values
            uspUserRole role = new uspUserRole();
            role = handler.Login(UserName, Password);

            //online.Online = UserName;
            SignedIn online = new SignedIn();

           
            try
            {
                if (role.UserName == UserName && role.Password == Password)
                {

                            if (role.UserRole == "C")
                            {
                        
                                //Set cookies with int
                                HttpCookie cookie = new HttpCookie("UserInfo");
                                cookie["UserName"] = role.UserName;
                                cookie["UserID"] =  role.UserID.ToString();
                                Response.Cookies.Add(cookie);
                               //Response.Flush();
                                Response.Redirect("../Customer/Profile.aspx");
                        
                            }
                            else if (role.UserRole == "A")
                            {
                                //Set cookies with int
                                HttpCookie cookie = new HttpCookie("UserInfo");
                                cookie["UserName"] = role.UserName;
                                cookie["UserID"] = role.UserID.ToString();
                                Response.Cookies.Add(cookie);
                                Response.Redirect("../Admin/ViewStuff.aspx");
                            }
                            else if (role.UserRole == "E")
                            {
                                    uspEmpRole eRole = new uspEmpRole();
                                     eRole= handler.EmpRole(UserName, Password);
                                if(eRole.eRole == "S")
                                { 
                                //Set cookies with int
                               HttpCookie cookie = new HttpCookie("UserInfo");
                                cookie["UserName"] = role.UserName;
                                cookie["UserID"] = role.UserID.ToString();
                                Response.Cookies.Add(cookie);
                                Response.Redirect("../Supervisor/Bookings.aspx");
                                }
                                    else if (role.eRole == "M")
                                    {
                                        Response.Redirect("../Supervisor/Bookings.aspx");
                                    }
                            }
                            


                }
                else if (role.UserName != UserName)
                {
                    errLogin.Visible = true;
                    errLogin.Text = "Incorrect Username/Password";
                }
                else if (role.Password != Password)
                {
                    errLogin.Visible = true;
                    errLogin.Text = "Incorrect Username/Password";
                }

            }
            catch
            {

                errLogin.Visible = true;
                errLogin.Text = "Incorrect User Cridentials";
            }
        }
    }
}