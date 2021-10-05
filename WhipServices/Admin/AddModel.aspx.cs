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
    public partial class AddModel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropDown();
            }
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

           // dropMake.Items.Insert(0, new ListItem("Select Make", "0"));




        }

        protected void btnAddModel_Click(object sender, EventArgs e)
        {

            IWhipService db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            Model mod = new Model();
            mod.ModelName = txtModelName.Text;
            mod.MakeID = int.Parse(dropMake.SelectedValue);


            handler.InsertModel(mod);
            Response.Redirect("AddModel.aspx");
        }
    }
}