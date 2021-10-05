using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhipServices.Admin
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
        //    Response.ContentType = "application/pdf";
        //    Response.AddHeader("content-disposition", "attachment;filename=print.pdf");
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);

        //    StringWriter sw = new StringWriter();
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);
        //    panelPDF.RenderControl(hw);
        //    StreamReader sr = new StreamReader(sw.ToString());

        //    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
        //    HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
        //    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

        //    pdfDoc.Open();
        //    htmlParser.Parse(sr);
        //    pdfDoc.Close();

        //    Response.Write(pdfDoc);
        //    Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //return;
        }
    }
}