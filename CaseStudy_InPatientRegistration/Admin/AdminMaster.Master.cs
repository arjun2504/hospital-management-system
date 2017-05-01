using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy_InPatientRegistration
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtnViewAll_Click(object sender, EventArgs e)
        {

        }

        protected void lnkbtnAddDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AddDoctor.aspx");
        }

        protected void lnkbtnDeleteDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/DeleteDoctor.aspx");
        }

        protected void lnkbtnChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/ChangePassword.aspx");
        }

        protected void lnkbtnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/Logout.aspx");
        }

        protected void lnkbtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/HomePage.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ViewAllDoctors.aspx");
        }
    }
}