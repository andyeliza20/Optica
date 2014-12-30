using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NegociosInteligente
{
    public class Clientes
    {
        #region Propiedades automáticas

        //Campos de la tabla:Clientes
        public int Codigo { get; set; }
        public string Cedula { get; set; }
        public string Nombre { get; set; }
        public string ApellidoP { get; set; }
        public string ApellidoM { get; set; }
        public string Genero { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Ocupacion { get; set; }
        public string Ciudad { get; set; }
        public string Direccion { get; set; }
        public string FechaNaci { get; set; }

        #endregion
    }
}
