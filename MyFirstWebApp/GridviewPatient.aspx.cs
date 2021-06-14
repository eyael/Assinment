using MyFirstWebApp.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApp
{
    public partial class GridviewPatient : System.Web.UI.Page
    {
        Crud ce = new Crud();
        protected void Page_Load(object sender, EventArgs e)

        {
           
            if (!IsPostBack)
            {
                BindGrid();

            }

        }

        public void BindGrid()
        {
            DataTable dt = new DataTable();
            dt = ce.GetPatient();
            gvPatients.DataSource = dt;
            gvPatients.DataBind();


        }

        protected void gvPatients_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPatients.EditIndex = e.NewEditIndex;
            DataTable dt = new DataTable();
            dt = ce.GetPatient();
            gvPatients.DataSource = dt;
            gvPatients.DataBind();


        }

        protected void btnEdit_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void gvPatients_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = (Label)gvPatients.Rows[e.RowIndex].FindControl("lblID");
            ce.DeletePatient(int.Parse(id.Text));
            BindGrid();

        }

        protected void gvPatients_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = (Label)gvPatients.Rows[e.RowIndex].FindControl("lblID");
            TextBox txtName = (TextBox)gvPatients.Rows[e.RowIndex].FindControl("txtName");
            TextBox txtLname = (TextBox)gvPatients.Rows[e.RowIndex].FindControl("txtLname");
            Patient pt = new Patient();
            pt.firstName = txtName.Text;
            pt.LastName = txtLname.Text;
            pt.id = int.Parse(id.Text);
            ce.UpdatePatientRec(pt);

            //pt.ssn = txtSsn.Text;
            //pt.adress = txtAdress.Text;
            //pt.zipCode = txtZip.Text;
            //pt.aptNum = txtApt.Text;
            //pt.phone = txtMobile.Text;
            gvPatients.EditIndex = -1;
            BindGrid();

        }

        protected void gvPatients_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPatients.EditIndex = -1;
            BindGrid();

        }
    }
}

       
    
