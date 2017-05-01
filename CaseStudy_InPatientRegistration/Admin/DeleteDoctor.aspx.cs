using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PatientRegistration_BLL;
using System.Windows.Forms;

namespace CaseStudy_InPatientRegistration
{
    public partial class DeleteDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            BusiessLogic bl = new BusiessLogic();
            RemDoctor rd = new RemDoctor();
            rd.DoctorId = txtdoctor.Text;

            DialogResult res = MessageBox.Show("Are you sure to delete the record?", "Confirmation", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if(res==DialogResult.OK)
            {
                if (rd.DoctorId == txtdoctor.Text)
                {
                    //string result = bl.Remove_Doctor(did);
                    //if(result==string.Empty)
                    //{
                    //    MessageBox.Show("Enter valid credentials");
                    bl.Remove_Doctor(rd.DoctorId);
                    MessageBox.Show("Deletion Successful");
                }
                }
                else
                {
                    MessageBox.Show("Enter valid Credentials");

                }
            }
        }
    }
