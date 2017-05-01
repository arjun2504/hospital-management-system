using PatientRegistration_BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy_InPatientRegistration
{
    public partial class ChangePasswordOperator : System.Web.UI.Page
    {
        BusiessLogic bl = new BusiessLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Pwd fp = new Pwd();
            fp.Userid = txtUserId.Text;
            fp.Password = txtNewPwd.Text;
            bl.ForgotPwd(fp.Userid, fp.Password);
            Response.Redirect("~/Home/LoginPage.aspx");
        }
    }
}