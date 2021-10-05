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
    public partial class AddService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddService_Click(object sender, EventArgs e)
        {
            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            Service s = new Service();

            s.ServiceName = txtServiceName.Text;
            s.Description = txtDescription.Text;
            s.Labour = double.Parse(txtLabour.Text);
            s.Price = double.Parse(txtPrice.Text);

            handler.AddService(s);
            Response.Redirect("Services.aspx");

        }
    }
}