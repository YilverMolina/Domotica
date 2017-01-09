using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace CasaDomotica.Models
{
    public class TipoSensor
    {
        public string idTipoSensor { get; set; }
        public string NombreTipoSensor { get; set; }
        Conexion con = new Conexion();

        public TipoSensor()
        {

        }

        public DataTable get_tipo_sensor()
        {
            string sql = "SELECT * FROM tipo_sensor";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}