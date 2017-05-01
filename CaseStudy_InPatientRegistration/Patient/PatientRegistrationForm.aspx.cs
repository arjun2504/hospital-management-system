using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PatientRegistration_BLL;
using System.Windows.Forms;

namespace CaseStudy_InPatientRegistration.Patient
{
    public partial class PatientRegistrationForm : System.Web.UI.Page
    {
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            BusiessLogic pbll = new BusiessLogic();
            pbll.FirstName = txtFirstName.Text;
            pbll.LastName = txtLastName.Text;
            pbll.MobileNumber = txtMobile.Text;
            pbll.Occupation = txtOccupation.Text;
            pbll.OrgWorkingFor = txtOrganisationWorking.Text;
            pbll.Password = txtPassword.Text;
            pbll.ReasonForHosp = txtReason.Text;
            pbll.Doj = Convert.ToDateTime(txtJoiningDate.Text);
            pbll.Address = txtAddress.Text;
            pbll.UserId=txtuserId.Text;
            pbll.Email = txtEmail.Text;
            pbll.Caretakername = txtCareTakerName.Text;
           

            foreach(ListItem item in rblGender.Items)
            {
                if(item.Selected)
                {
                    pbll.Gender = rblGender.SelectedValue;

                }
            }
            pbll.Pdal();
            
            MessageBox.Show("Insertion is successfull..!!");
            Response.Redirect("~/Home/LoginPage.aspx");
        }
    }
}
