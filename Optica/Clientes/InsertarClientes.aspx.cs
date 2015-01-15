using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BinaryIntellect.DataAccess;
using System.Data;
using System.Collections;
using System.Data.SqlClient;

namespace Optica.Clientes
{
    public partial class InsertarClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargaId();
        }

        #region Variables
        public string cadenaConexion = "Data Source=localhost;Initial Catalog=Optica;Integrated Security=True";
        #endregion

        #region Métodos
        public void cargaId()
        {
            DatabaseHelper db = new DatabaseHelper(Providers.SqlServer);
            db.BeginTransaction();

            int c; string cadena;
            
            SqlDataReader readerCodigo = (SqlDataReader)db.ExecuteReader("SELECT max(codigo) FROM Clientes");

            while (readerCodigo.Read())
            {
                txtCodigo.Text = readerCodigo[0].ToString();
            }
            readerCodigo.Close();
            //Pasamos el codigo a una cadena

            cadena = txtCodigo.Text;
            //Reemplazamos la variable de la cadena 
            if (cadena == "0")
            {
                txtCodigo.Text = "1";// Si es el primer registro saldra este codigo.          
            }
            else
            {
                c = Convert.ToInt32(txtCodigo.Text);
                //Comparamos que sea diferente de 0
                if (c != 0)
                {
                    c++;
                    cadena = c.ToString();
                    txtCodigo.Text = cadena;
                }

            }
            
            
        }
      
        #endregion

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DatabaseHelper db = new DatabaseHelper(Providers.SqlServer);
            db.BeginTransaction();

            db.AddParameter("@Codigo ", Convert.ToInt32(txtCodigo.Text));
            db.AddParameter("@Cedula ", txtCedula.Text);
            db.AddParameter("@Nombre ", txtNombre.Text);
            db.AddParameter("@Apellidop ", txtApellidoP.Text);
            db.AddParameter("@Apellidom ", txtApellidoM.Text);
            db.AddParameter("@Genero ", ddlGenero.SelectedValue.ToString());
            db.AddParameter("@Email ", txtEmail.Text);
            db.AddParameter("@Telefono ", txtTelefono.Text);
            db.AddParameter("@Celular ", txtCelular.Text);
            db.AddParameter("@Ocupacion ", txtOcupacion.Text);
            db.AddParameter("@Ciudad ", txtCiudad.Text);
            db.AddParameter("@Direccion ", txtDireccion.Text);
            db.AddParameter("@Fechanaci ", Convert.ToDateTime(txtFechaNaci.Text));
            
            int i = db.ExecuteNonQuery("INSERT INTO clientes (codigo, cedula, nombre, apellidop, apellidom, genero, email, telefono, celular, ocupacion, ciudad, direccion, fechanaci) " +
                                        "Values(@Codigo,@Cedula,@Nombre,@Apellidop,@Apellidom,@Genero,@Email,@Telefono,@Celular,@Ocupacion,@Ciudad,@Direccion,@Fechanaci) ", BinaryIntellect.DataAccess.ConnectionState.KeepOpen);

            if (i != 0)
            {
                db.CommitTransaction();
                lblMensaje.Text = "Transacción Completada.";
            }
            else
            {
                db.RollbackTransaction();
                lblMensaje.Text = "Transacción Cancelada.";
            }
        }

    }
}