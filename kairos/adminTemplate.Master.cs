using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kairos
{
    public partial class adminTemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // revisamos que tenga sesion de lo contrario devuelta al login
            if (Session["logged"] == null)
            {
                Response.Redirect("/login.aspx");
            }
        }
    }
}