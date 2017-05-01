using PatientRegistration_BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CaseStudy_InPatientRegistration
{
    public partial class ViewAllPatients : System.Web.UI.Page
    {
        BusiessLogic bl = new BusiessLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            DataSet ds;


            if (Session["myDataSet"] != null)
            {
                gvViewAll.DataSource = ((DataSet)Session["myDataSet"]).Tables[0];
                gvViewAll.DataBind();

            }
            else
            {
                ds = bl.ViewAllProfile();
                Session["myDataSet"] = ds;
                gvViewAll.Visible = true;
                gvViewAll.DataSource = ds.Tables[0];
                gvViewAll.DataBind();

            }
          
           
        }

       
    }
}