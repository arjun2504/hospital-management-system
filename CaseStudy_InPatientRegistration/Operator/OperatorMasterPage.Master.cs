using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy_InPatientRegistration
{
    public partial class OperatorMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkAccomodation_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operator/ConformAccomadation.aspx");
        }

        protected void lnkBillGeneration_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operator/GenerateBill.aspx");
        }

        protected void lnkViewAllPatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operator/ViewAllPatients.aspx");
        }

        protected void ViewOnePatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewProfile.aspx");
        }

        protected void lnkChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/ChangePassword.aspx");
        }

        protected void lnkHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/HomePage.aspx");
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/Logout.aspx");
        }
    }
}