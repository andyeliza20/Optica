using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using BinaryIntellect.DataAccess;

using NegociosInteligente;// Referencia de la capa de negocios

namespace AccesoDatos
{
    public class ClientesDAL
    {
        #region Datos

        private DatabaseHelper db = null;
        private DataSet datos = null;

        #endregion

        #region Constantes sentencias
    
        //Preparar la sentencia "INSERT".
        private const string INSERT = "INSERT INTO clientes (codigo,cedula,nombre,apellidop,apellidom, " +
                                      "genero,email,telefono,celular,ocupacion,ciudad,direccion,fechanaci) " +
                                      "VALUES (@Codigo, @Cedula, @Nombre, @Apellidop, @Apellidom, @Genero, " +
                                      "@Email, @Telefono, @Celular, @Ocupación, @Ciudad, @Direccion, @Fechanaci);";
        
        //Preparar la sentencia "SELECT".
        private const string SELECT = "SELECT max(codigo) FROM clientes; ";
       
        #endregion

        #region Constantes parámetros

        private const string CODIGO = "@Codigo";
        private const string CEDULA = "@Cedula";
        private const string NOMBRE = "@Nombre";
        private const string APELLIDOP = "@Apellidop";
        private const string APELLIDOM = "@Apellidom";
        private const string GENERO = "@Genero";
        private const string EMAIL = "@Email";
        private const string TELEFONO = "@Telefono";
        private const string CELULAR = "@Celular";
        private const string OCUPACIÓN = "@Ocupación";
        private const string CIUDAD = "@Ciudad";
        private const string DIRECCION = "@Direccion";
        private const string FECHANACI = "@Fechanaci";

        #endregion

        public DataTable Select()
        {
            //Utilizar la PRIMERA version del método: ExecuteDataSet().
            datos = db.ExecuteDataSet(SELECT);

            //Retornar los datos en un DataTable.
            return datos.Tables[0];
        }
    }
}
