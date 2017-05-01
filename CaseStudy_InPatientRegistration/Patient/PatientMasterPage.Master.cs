using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy_InPatientRegistration
{
    public partial class PatientMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {

        }

        protected void lnkbtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/HomePage.aspx");
        }

        protected void lnkbtnViewProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewProfile.aspx");
        }

        protected void lnkbtnChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/ChangePassword.aspx");
        }

        protected void lnkbtnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/Logout.aspx");
        }
    }
}