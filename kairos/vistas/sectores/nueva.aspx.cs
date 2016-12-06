using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kairos.sectores
{
    public partial class nueva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void AgregarSector_Click(object sender, EventArgs e)
        {
            int idsector = int.Parse(id_sector.Text);
            String pinicio = punto_inicio.Text;
            String pfin = punto_fin.Text;
            String dist = distancia.Text;
            int accid = int.Parse(accidentabilidad.Text);

            System.Data.SqlClient.SqlConnection sqlConnection1 =
                new System.Data.SqlClient.SqlConnection("Data Source=mssql4.gear.host;Initial Catalog=kairosapp;Persist Security Info=True;User ID=kairosapp;Password=inacap2016*");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO sectores (id_sector,punto_inicio,punto_fin,distancia,accidentabilidad) VALUES (" + idsector + ",'" + pinicio + "','" + pfin + "','" + dist + "','" + accid + "')";
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();
            Response.Redirect("/vistas/sectores/listar.aspx");
        }
        
    }
}