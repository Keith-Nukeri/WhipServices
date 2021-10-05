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
    public partial class ServicesUsed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get cookies with customerID
            uspCustomerID id = new uspCustomerID();
            HttpCookie CustomerID = Request.Cookies["CustomerID"];
            id.CustomerID = int.Parse(CustomerID["CustomerID"]);
            getCustReports.SelectParameters["CustomerID"].DefaultValue = id.CustomerID.ToString();
            //try using linking customerID cookie to chart from here
      
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            //Response.ContentType = "application/pdf";
            //Response.AddHeader("content-disposition", "attachment;filename=print.pdf");
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);

            //StringWriter sw = new StringWriter();
            //HtmlTextWriter hw = new HtmlTextWriter(sw);

            //panelPDF.RenderControl(hw);
            //StreamReader sr = new StreamReader(sw.ToString());

            //Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
            //HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
            //PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

            //pdfDoc.Open();
            //htmlParser.Parse(sr);
            //pdfDoc.Close();

            //Response.Write(pdfDoc);
            //Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //return;
        }
    }
}