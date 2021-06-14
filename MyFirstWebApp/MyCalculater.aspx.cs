using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApp
{
    public partial class MyCalculater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                string op = Session["Op"].ToString();
                try
                {
                    int sv = int.Parse(Session["SecondValue"].ToString());
                    Session["SecondValue"] = sv + "7";
                }
                catch
                {
                    Session["SecondValue"] = "7";
                }

            }

            catch
            {
                try
                {
                    int fv = int.Parse(Session["FirstValue"].ToString());
                    Session["FirstValue"] = fv + "7";
                }
                catch
                {
                    Session["FirstValue"] = "7";
                }
            }


        }

        protected void btnMult_Click(object sender, EventArgs e)
        {
            Session["op"] = "Mult";
        }

        protected void btnEql_Click(object sender, EventArgs e)
        {
            int fv = int.Parse(Session["FirstValue"].ToString());
            int sv = int.Parse(Session["SecondValue"].ToString());

            string op = Session["op"].ToString();

            switch(op)
            {
                case "Mult":
                    TextDisplay.Text = (fv * sv).ToString();
                    break;
                //case ""
            }
        }
    }
    }
