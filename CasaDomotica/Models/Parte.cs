using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CasaDomotica.Models
{
    public class Parte
    {
        public string idParte { set; get; }
        public string NombreParte { set; get; }
        public string Descripcion { set; get; }
        public string Estado { set; get; }

        Conexion con = new Conexion();

        public Parte()
        {

        }

        public bool registrar_parte(Parte obj)
        {
            string[] ar = new string[1];
            string sql = "INSERT INTO partes (NombreParte, Descripcion, Estado) VALUES ('{0}','{1}','Activo');";
            ar[0] = string.Format(sql, obj.NombreParte, obj.Descripcion);
            return con.RealizarTransaccion(ar);
        }

        public DataTable get_partes()
        {
            string sql = "SELECT * FROM partes;";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable get_partes_vivienda()
        {
            string sql = "SELECT * FROM partes_vivienda pv INNER JOIN partes p ON pv.FK_idParte = p.idParte AND pv.Estado = 'Activo';";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}