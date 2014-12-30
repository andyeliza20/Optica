using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Optica
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String query = "select * from usuarios where usuario = '" + username.Text + "'and clave = '" + this.password.Text + "'";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dbr;
            try
            {
                if (!(username.Text == string.Empty))
                {
                    if (!(password.Text == string.Empty))
                    {
                        con.Open();
                        dbr = cmd.ExecuteReader();
                        int count = 0;
                        while (dbr.Read())
                        {
                            count = count + 1;
                        }
                        if (count == 1)
                        {
                            lblError.Text = "Usuario y Password Correctos";
                            Response.Redirect("Index.aspx");
                        }
                        else if (count > 1)
                        {
                            lblError.Text = "Usuario y Password Duplicado";
                        }
                        else
                        {
                            lblError.Text = "Usuario y Password Incorrectos";
                        }
                    }
                    else
                    {
                        lblError.Text = "Password Vacío";
                    }
                }
                else
                {
                    lblError.Text = "Usuario Vacío";
                }
            }
            catch (Exception es)
            {
                lblError.Text = es.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}