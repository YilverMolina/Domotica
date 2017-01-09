using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CasaDomotica.Models
{
    public class Usuario
    {

        public string h;
        public string username { get; set; }
        public string password { get; set; }
        public string iduser { get; set; }
        Conexion con = new Conexion();

        public Usuario()
        {

        }

        public DataTable validarUsuario(Usuario obj)
        {
            string sql = "SELECT * FROM usuario u WHERE u.Username='" + obj.username + "' AND u.Password = AES_ENCRYPT('" + obj.password + "','smart2016');";
            return con.EjecutarConsulta(sql, System.Data.CommandType.Text);
        }
    }
}