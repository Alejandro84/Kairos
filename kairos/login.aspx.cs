using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;






namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public bool failLogin = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if ( Session["logged"] != null )
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            String usuario = TextBoxUsuario.Text;
            String password = TextBoxPassword.Text;

            // datos de prueba, falta conexion con SQL
            
            if ( usuario == "admin" && password == "admin")
            {
                Session["logged"] = true;
                Response.Redirect("/Default.aspx");
            }
            else
            {
                this.failLogin = true;
                Response.Redirect("/login.aspx");
            }

        }
    }
}