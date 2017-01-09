using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CasaDomotica.Models
{
    public class Dato
    {
        public string idDato { get; set; }
        public string Value { get; set; }
        public string Fecha { get; set; }
        public string Unidad { get; set; }
        public string Sensor { get; set; }
        Conexion con = new Conexion();

        public Dato()
        {

        }

        public bool registrar_dato(Dato obj)
        {
            string[] ar = new string[1];
            string sql = "INSERT INTO dato (ValorDato, Unidad, Fecha, idSensor) VALUES ('{0}','{1}',NOW(),'{2}');";
            ar[0] = string.Format(sql, obj.Value, obj.Unidad, obj.Sensor);
            return con.RealizarTransaccion(ar);
        }

        public DataTable get_datos()
        {
            string sql = "SELECT * FROM dato";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable get_datos_sensor(string idsensor)
        {
            string sql = "SELECT * FROM dato d INNER JOIN sensor_parte sp ON d.FK_idSensorP = '" + idsensor + "' AND d.FK_idSensorP = sp.idSensorP INNER JOIN sensor s ON sp.FK_idSensor = s.idSensor ORDER BY d.Fecha DESC";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}