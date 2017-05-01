using Pat_RegDAL;
using PatientRegistration_BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CaseStudy_InPatientRegistration
{
    public partial class ConformAccomadation : System.Web.UI.Page
    {
        DataAccessLayer dal = new DataAccessLayer();
        BusiessLogic bl = new BusiessLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
            Accomodation a = new Accomodation();
            a.patientId = txtPatientId.Text;
            foreach (ListItem item in ddlRommType.Items)
            {
                if (item.Selected)
                {
                    a.RoomType = item.Text;
                    break;
                }
                
            }
            foreach (ListItem item in ddlRoomNum.Items)
            {
                if (item.Selected)
                {
                    a.RoomNum = item.Text;
                    break;
                }

            }
            foreach (ListItem item in ddlbednum.Items)
            {
                if (item.Selected)
                {
                    a.BedNum = item.Text;
                    break;
                }

            }
            foreach (ListItem item in ddlEquipment.Items)
            {
                if (item.Selected)
                {
                    a.Equipment = item.Text;
                    break;
                }

            }
            string res =a.RoomNum + a.BedNum;
            if(res==dal.CheckAvailabilty())
            {
                MessageBox.Show("Entered Room Number or Bed Number is not available");
            }
            else
            {
                bl.ConfirmAccomodation(a.patientId, a.RoomType, a.RoomNum, a.BedNum, a.Equipment);
                MessageBox.Show("Accomodation is successfull");
                btnAccomodationDetails.Visible = true;

            }
                
        }
    }
}