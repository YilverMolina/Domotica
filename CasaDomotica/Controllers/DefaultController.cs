using CasaDomotica.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CasaDomotica.Controllers
{
    public class DefaultController : ApiController
    {
        Dato dato = new Dato();
        Sensor sensor = new Sensor();
        TipoSensor tsen = new TipoSensor();
        Parte parte = new Parte();
        Usuario user = new Usuario();

        //Datos----------------
        public IHttpActionResult registrar_dato(Dato obj)
        {
            if (dato.registrar_dato(obj))
            {
                return Json(new
                {
                    data = "Dato registrado",
                    result = true
                });
            }
            else
            {
                return Json(new
                {
                    data = "Dato no registrado", 
                    result = false
                });
            }
        }

        public IHttpActionResult get_validar_usuario(string username, string pass)
        {
            user.username = username;
            user.password = pass;
            return Json(user.validarUsuario(user));
        }

        public IHttpActionResult get_datos_sensor(string id)
        {
            return Json(dato.get_datos_sensor(id));
        }

        //Sensores vivienda-----------------------------------

        public IHttpActionResult get_sensores_vivienda()
        {
            return Json(sensor.get_sensores_vivienda());
        }

        public IHttpActionResult get_sensores_parte(string id)
        {
            return Json(sensor.get_sensores_parte(id));
        }

        //Partes
        public IHttpActionResult get_partes_vivienda()
        {
            return Json(parte.get_partes_vivienda());
        }

        public IHttpActionResult get_dato(string value, string unidad, string sensor)
        {
            Dato obj = new Dato();
            obj.Value = value;
            obj.Unidad = unidad;
            obj.Sensor = sensor;
            if (dato.registrar_dato(obj))
            {
                return Json(new
                {
                    data = "Dato registrado",
                    result = true
                });
            }
            else
            {
                return Json(new
                {
                    data = "Dato no registrado",
                    result = false
                });
            }
        }
    }
}
