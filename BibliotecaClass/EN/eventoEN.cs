using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AplicacionWeb
{
    public class eventoEN
    {
        private int id;
        private string nombre;
        private string descripcion;
        private int categoria;
        private string foto_evento;
        private string fecha;
        private string ciudad;
        private string lugar;



        public DataSet listarEventos(string nombre, string ciudad, string catego, string fecha)
        {
            eventoCAD even = new eventoCAD();
            return even.listarEventos(nombre, ciudad, catego, fecha);
        }

        public eventoEN(int id)
        {
            eventoCAD aux = new eventoCAD();
            nombre = aux.dameNombre(id);
            descripcion = aux.dameDescripcion(id);
            categoria = aux.dameCat(id);
            foto_evento = aux.dameFoto(id);


        }

        public eventoEN()
        {

        }

        public eventoEN(string nombre, string descripcion, string ciudad, string foto_evento,string fecha,string categoria)
        {
            int cat = 0;
            cat = numCategoria(categoria);
            this.id = 1;
            this.nombre = nombre;
            this.descripcion = descripcion;
            this.categoria = cat;
            this.ciudad = ciudad;
            this.foto_evento = foto_evento;
            this.fecha = fecha;
        }

        public bool anadirevento()
        {
            eventoCAD even = new eventoCAD();
            return even.anadirevento(this);
        }


        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public string Lugar
        {
            get { return lugar; }
            set { lugar = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public int Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }

        public string Foto_evento
        {
            get { return foto_evento; }
            set { foto_evento = value; }
        }

        public string Ciudad
        {
            get { return ciudad; }
            set { ciudad = value; }
        }

        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }

        }

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }

        }

        public int numCategoria(string categoria)
        {
            eventoCAD aux = new eventoCAD();
            return aux.dameCat(categoria);
        }
    }
}