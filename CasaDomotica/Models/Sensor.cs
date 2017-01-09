using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CasaDomotica.Models
{
    public class Sensor
    {
        public string idSensor { get; set; }
        public string NombreSensor { get; set; }
        public string Descripcion { get; set; }
        public string Referencia { get; set; }
        public string TipoSensor { get; set; }

        Conexion con = new Conexion();

        public Sensor()
        {

        }

        public bool registrar_sensor(Sensor obj)
        {
            string[] ar = new string[1];
            string sql = "INSERT INTO partes (NombreSensor, DescripcionSensor, Estado, Referencia, FK_idTipoSensor) VALUES ('{0}','{1}','Activo','{2}','{3}');";
            ar[0] = string.Format(sql, obj.NombreSensor, obj.Descripcion, obj.Referencia, obj.TipoSensor);
            return con.RealizarTransaccion(ar);
        }

        public DataTable get_sensores()
        {
            string sql = "SELECT * FROM sensor;";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable get_sensores_vivienda()
        {
            string sql = "SELECT * FROM sensor_parte sp INNER JOIN sensor s ON sp.FK_idSensor = s.idSensor INNER JOIN partes_vivienda pv ON sp.FK_idParteVivienda = pv.idParteVivienda INNER JOIN partes p ON pv.FK_idParte=p.idParte;";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable get_sensores_parte(string id)
        {
            string sql = "SELECT* FROM sensor_parte sp INNER JOIN sensor s ON sp.FK_idSensor = s.idSensor INNER JOIN partes_vivienda pv ON sp.FK_idParteVivienda = pv.idParteVivienda AND pv.idParteVivienda = '" + id + "';";
            return con.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}