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
    public partial class ViewOneDoctor : System.Web.UI.Page
    {
        BusiessLogic bl = new BusiessLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {

            if ((int)Session["utype"] == 4)

                this.MasterPageFile = "~/Admin/AdminMaster.Master";
            else
                this.MasterPageFile = "~/Admin/AdminMaster.Master";

        }

        protected void lnkbtnViewOneDoc_Click(object sender, EventArgs e)
        {

            DataSet ds;

            ViewOneDoc vd = new ViewOneDoc();
            vd.DoctorId = txtDocID.Text;


            if (Session["myDataSet"] != null)
            {
                gvViewOneDoc.DataSource = ((DataSet)Session["myDataSet"]).Tables[0];
                gvViewOneDoc.DataBind();

            }
            else
            {
                ds = bl.ViewOneDoctor(vd.DoctorId);
                Session["myDataSet"] = ds;
                gvViewOneDoc.Visible = true;
                gvViewOneDoc.DataSource = ds.Tables[0];
                gvViewOneDoc.DataBind();

                gvViewOneDoc.Visible = true;

            }
        }
    }
}