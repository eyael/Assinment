using MyFirstWebApp.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MyFirstWebApp
{
    public partial class PatientRegistration : System.Web.UI.Page
    {
        Crud ce = new Crud();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                bindgvpatients();
            }
            
        }

        public void bindgvpatients()
        {
            List<Patient> ptList = new List<Patient>();
            DataTable dt = ce.GetPatient();

            foreach (DataRow drow in dt.Rows)
            {
                Patient pt = new Patient();
                pt.firstName = drow["firstName"].ToString();
                pt.LastName = drow["LastName"].ToString();
                pt.id = int.Parse(drow["id"].ToString());
                pt.ssn = drow["ssn"].ToString();
                pt.adress = drow["adress"].ToString();
                pt.zipCode = drow["zipCode"].ToString();

                pt.aptNum = drow["aptNum"].ToString();
                pt.phone = drow["phone"].ToString();

                ptList.Add(pt);



            }
            gvpatients.DataSource = ptList;
            gvpatients.DataBind();
        }

        protected void btn_Click1(object sender, EventArgs e)

        {

            Patient pt = new Patient();
            //pt.id = txtid.Text;
            pt.firstName = txtFname.Text;
            pt.LastName = txtFname.Text;
            pt.ssn = txtSsn.Text;
            pt.adress = txtAdress.Text;
            pt.zipCode = txtZip.Text;
            pt.aptNum = txtApt.Text;
            pt.phone = txtMobile.Text;

            string pastAilments = ",";


            pastAilments = pastAilments.TrimEnd(',');

            pt.previousConditions = pastAilments;
            lblMsg.Text = ce.InsertPatient(pt);


        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddlPatient.SelectedValue);
            lblMsg.Text = ce.DeletePatient(id);
            bindgvpatients();
        }

        protected void btnSubmitUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddlPatient.SelectedValue);
            Patient pt = new Patient();
            txtAdress.Text = pt.adress;
        }


    }
}
    
