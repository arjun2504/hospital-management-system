using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy_InPatientRegistration
{
    public partial class DoctorMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/HomePage.aspx");
        }

        protected void lnkViewProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewOneDoctor.aspx");
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/Logout.aspx");
        }
    }
}