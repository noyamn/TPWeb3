using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Datos;

namespace WebApplication1.Servicio
{
    public class ExamenDTO
    {
        public int id { get; set; }
        public String nombre { get; set; }
        public String curso { get; set; }
        public int duracion { get; set; }
        public Queue<PreguntaDTO> preguntas;

        public ExamenDTO(Int32 _id,PW3Entities _ctx)
        {   
            examen _e = _ctx.examen.FirstOrDefault(e=> e.id_examen==_id);
            this.nombre = _e.nombre;
            this.id = _e.id_examen;
            this.duracion = (int) _e.duracion;
            this.curso = _e.curso.nombre;
            preguntas = new Queue<PreguntaDTO>();
            var lista = _e.pregunta.ToList();
            
            foreach (var item in lista)
            {
                PreguntaDTO pd = new PreguntaDTO(item.id_pregunta, _ctx);
                pd.descripcion = item.descripcion;
                preguntas.Enqueue(pd);
            }
        }


    }
}