using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Datos;

namespace WebApplication1.Servicio
{
    public class PreguntaDTO
    {
        public Int32 id { get; set; }
        public String descripcion { get; set; }
        public List<RespuestaDTO> respuestas { get; set; }
        public Boolean ultima { get; set; }

        public PreguntaDTO(Int32 _id, PW3Entities _ctx)
        {
            this.id = _id;
            this.descripcion = _ctx.pregunta.FirstOrDefault(p => p.id_pregunta == _id).descripcion;
            var lista = _ctx.pregunta.FirstOrDefault(p => p.id_pregunta == _id).respuesta.ToList();
            respuestas = new List<RespuestaDTO>();
            this.ultima = false;
            
            foreach (var item in lista)
            {
                RespuestaDTO rd = new RespuestaDTO();
                rd.descripcion = item.descripcion;
                rd.id = item.id_respuesta;
                respuestas.Add(rd);
            }

        }
    }
}