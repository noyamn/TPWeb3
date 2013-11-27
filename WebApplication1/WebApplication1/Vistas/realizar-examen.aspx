<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site.Master" AutoEventWireup="true" CodeBehind="realizar-examen.aspx.cs" Inherits="WebApplication1.realizar_examen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

  <div class="row-fluid">

	<h3 class="margin-left">Realizando examen:<span id="nombreExamen"></span></h3>
	<h5 class="margin-left">Curso: <span id="nombreCurso"></span></h5>
	<h5 class="margin-left">Duracion: <span id="duracion"></span><span> min.</span></h5>
	<h5 class="margin-left">Observaciones:</h5>
		<p class="parrafo">
			El examen consta de 10 preguntas, las cuales pueden tener una o mas de una respuesta correcta. Solo se considerara correcta en caso de que se hayan marcado todas las respuestas validas para la pregunta.
		</p>

	<h3 class="margin-left margin-top">Pregunta: <span>1/10</span></h3>		
		
	</div>

	<div class="row-fluid">
		<div class="span8 offset3 ">

			<strong id="pregunta"></strong>

			<ul class="lista-examen" id="listaRespuesta">




			</ul>

			<a id="botonSiguiente" class="btn btn-success margin-top pull-right" href="javascript:siguientePregunta(1)">
                Siguiente>
			</a>
		</div>
        <div ID="Label1"></div>

	</div>

    <script type="text/javascript" src="js/RealizarExamen.js">

        
    
    </script>

</asp:Content>
