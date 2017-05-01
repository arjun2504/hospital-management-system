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
    public partial class GenerateBill : System.Web.UI.Page
    {
        BusiessLogic bl = new BusiessLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNurseStation_Click(object sender, EventArgs e)
        {
            InsertNusring inn = new InsertNusring();
            inn.PatientId = txtPatientId.Text;
            foreach (ListItem item in ddlRoomType.Items)
            {
                if (item.Selected)
                {
                    inn.RoomType = Convert.ToInt32(item.Value);
                    break;
                }

            }
            foreach (ListItem item in ddlEquipment.Items)
            {
                if (item.Selected)
                {
                    inn.Equipment = Convert.ToInt32(item.Value);
                    break;
                }

            }
            inn.Total = Convert.ToInt32(inn.RoomType + inn.Equipment);
            bl.InsertNurseStation(inn.PatientId, inn.RoomType, inn.Equipment, inn.Total);
            MessageBox.Show("Send to the nurse station successfully");
        }
    }
}