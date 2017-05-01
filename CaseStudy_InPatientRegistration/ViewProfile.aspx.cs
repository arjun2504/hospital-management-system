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
    public partial class ViewProfile : System.Web.UI.Page
    {
        BusiessLogic bl = new BusiessLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if ((int)Session["utype"] == 2)
                this.MasterPageFile = "~/Operator/OperatorMasterPage.Master";
            else
                this.MasterPageFile = "~/Operator/OperatorMasterPage.Master";
        }
        protected void btnViewPatientProfile_Click(object sender, EventArgs e)
        {
            // DataSet ds;
            // ViewPatientProfile v = new ViewPatientProfile();
            //v.PatientId=txtPatientId.Text;
            // if (Session["myDataSet"] != null)
            // {
            //     gvview.DataSource = ((DataSet)Session["myDataSet"]).Tables[0];
            //     gvview.DataBind();

            // }
            // else
            // {
            //     ds = bl.ViewProfile(v.PatientId);
            //     Session["myDataSet"] = ds;
            //     gvview.Visible = true;
            //     gvview.DataSource = ds.Tables[0];
            //     gvview.DataBind();

            // }
            gvview.Visible = true;

            btnAmount.Visible = false;
        }

        protected void btnAmount_Click(object sender, EventArgs e)
        {
            gvAmount.Visible = true;
        }
        //        private void Page_PreInit(object sender, EventArgs e)
        //{
        //    this.MasterPageFile = "PatientMasterPage.Master";
        //}


    }
}