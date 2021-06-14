using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApp
{
    public partial class MultiViewExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyPatient.SetActiveView(Register);

        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}