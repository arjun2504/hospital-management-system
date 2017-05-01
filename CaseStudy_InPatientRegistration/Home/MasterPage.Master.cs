using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy_InPatientRegistration
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/HomePage.aspx");
        }

        protected void lnkbtnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/ContactUs.aspx");
        }

        protected void lnkbtnAbout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/AboutUs.aspx");
        }
    }
}