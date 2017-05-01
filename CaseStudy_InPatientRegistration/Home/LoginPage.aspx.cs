using Pat_RegDAL;
using PatientRegistration_BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CaseStudy_InPatientRegistration
{
    public partial class LoginPage : System.Web.UI.Page
    {
        BusiessLogic pbll = new BusiessLogic();
        DataAccessLayer dal = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            //vsLogin.ValidationGroup = LoginPatient.ToString();
        }

        protected void LoginPatient_Authenticate(object sender, AuthenticateEventArgs e)
        {
          
            int utype = 0;

            foreach (ListItem item in rblMode.Items)
            {
                if (item.Selected)
                {
                    utype = Convert.ToInt32(item.Value);
                    break;
                }
               
            }
            
            //pbll.CheckUserType(LoginPatient.UserName.ToLower(),LoginPatient.Password, utype);
            int res = 0;
            if (utype == 1 || utype ==  2)
            {
                Session["utype"] = utype;
                if (FormsAuthentication.Authenticate(LoginPatient.UserName, LoginPatient.Password))
                {
                    FormsAuthentication.RedirectFromLoginPage(LoginPatient.UserName, false);
                    res = 1;
                    if (utype == 1)
                        Response.Redirect("~/Admin/AdminHomePage.aspx");
                    else
                        Response.Redirect("~/Operator/OperatorHomePage.aspx");
                    
                }
                else
                {
                    FormsAuthentication.RedirectToLoginPage();
                    Response.Write("Invalid Credentials");
                }
            }
            if (utype == 3)
            {
                Session["utype"] = utype;
                res = dal.CheckUser(LoginPatient.UserName.ToLower(), LoginPatient.Password);
                if(res!=0)
                Response.Redirect("~/Patient/PatientHomePage.aspx");
            }
            if (utype == 4)
            {
                Session["utype"] = utype;
                res = dal.CheckDocUser(LoginPatient.UserName.ToLower(), LoginPatient.Password);
                if(res!=0)
                Response.Redirect("~/Doctor/DoctorHomePage.aspx");
            }
            
            //int res = dal.CheckUserType(LoginPatient.UserName.ToLower(), LoginPatient.Password, utype);
            if (res != 0)
            {
                //storing values in to Session--session variable name is usr
                Session["usr"] = LoginPatient.UserName;
                Session["usrType"] = utype;
                FormsAuthentication.RedirectFromLoginPage(LoginPatient.UserName, false);
                MessageBox.Show("Successfully Logged in");
            }
                
            else
            {
                MessageBox.Show("Please Provide Correct user credentials !!!!!!!!");
                
                Response.Redirect("~/Home/LoginPage.aspx");
            }
            if(utype==0)
            {
                MessageBox.Show("Please select any one radio button ");
            }
            
            
           
            }

        protected void rblMode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkbtnForgot_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/ForgotPassword.aspx");
        }
                
                
                
            }
            
            

        }

        

       
    
