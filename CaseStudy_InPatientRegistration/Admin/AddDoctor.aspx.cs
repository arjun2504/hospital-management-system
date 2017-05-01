using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using PatientRegistration_BLL;


namespace CaseStudy_InPatientRegistration
{

    public partial class AddDoctor : System.Web.UI.Page
    {
        BusiessLogic b = new BusiessLogic();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            AddDoc bl = new AddDoc();
            bl.DocName = txtDoctorName.Text;
            bl.Qualification = txtQualification.Text;
            bl.Specialization = dlSpecialization.SelectedItem.ToString();
            bl.MobileNumber = txtMobileNumber.Text;
            bl.UserName = txtusername.Text;
            bl.Password = txtpassword.Text;
            foreach (ListItem item in rblGender.Items)
            {
                if (item.Selected)
                {
                    bl.Gender = rblGender.SelectedValue;

                }
            }
            //bl.doc_dal(bl.DocName,bl.Qualification,bl.Specialization,bl.MobileNumber);


            b.doc_dal(bl.DocName, bl.Qualification, bl.Specialization, bl.MobileNumber, bl.Gender, bl.UserName, bl.Password);

            MessageBox.Show("Insertion of Doctor is successful");
            Response.Redirect("~/Admin/AdminHomePage.aspx");

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}