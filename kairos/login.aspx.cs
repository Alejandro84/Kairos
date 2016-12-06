using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


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
            
            String conexion;

            conexion = "Data Source=mssql4.gear.host; Initial Catalog=kairosapp; User ID=kairosapp;Password=inacap2016*";

            SqlConnection con = new SqlConnection(conexion);
            try {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from usuarios where usuario = '"+usuario+"' and password ='" +password+"'", con);
                SqlDataReader dataReader = cmd.ExecuteReader();

                if ( dataReader.Read() )
                {
                    Session["logged"] = true;
                    this.failLogin = true;
                    Response.Redirect("/Default.aspx");
                }
                else
                {
                    Session["error"] = "fail";
                    Response.Redirect("/login.aspx");
                }

            } catch (Exception ex) {

            }
            /*
            if (respuesta == 1)
            {
                Session["logged"] = true;
                Response.Redirect("/Default.aspx");
            }
            else
            {
                this.failLogin = true;
                Response.Redirect("/login.aspx");
                Response.Write("Inicio de Sesion fallida!");
            }
            
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
             */

        }
    }
}