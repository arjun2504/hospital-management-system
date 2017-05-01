using PatientRegistration_BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy_InPatientRegistration
{
    public partial class ViewAllDoctors : System.Web.UI.Page
    {
        BusiessLogic bl = new BusiessLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtnViewAll_Click(object sender, EventArgs e)
        {
            DataSet ds;
           

            if (Session["myDataSet"] != null)
            {
                gvViewAllDoc.DataSource = ((DataSet)Session["myDataSet"]).Tables[0];
                gvViewAllDoc.DataBind();

            }
            else
            {
                ds = bl.ViewAllDocProfile();
                Session["myDataSet"] = ds;
                gvViewAllDoc.Visible = true;
                gvViewAllDoc.DataSource = ds.Tables[0];
                gvViewAllDoc.DataBind();

            }
        }
    }
}