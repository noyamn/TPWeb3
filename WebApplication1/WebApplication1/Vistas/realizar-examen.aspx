<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site.Master" AutoEventWireup="true" CodeBehind="realizar-examen.aspx.cs" Inherits="WebApplication1.realizar_examen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

  <div class="row-fluid">

	<h3 class="margin-left">Realizando examen:<span> Examen final</span></h3>
	<h5 class="margin-left">Curso: <span>Programacion Web 3</span></h5>
	<h5 class="margin-left">Duracion: <span>120 min.</span></h5>
	<h5 class="margin-left">Observaciones:</h5>
		<p class="parrafo">
			El examen consta de 10 preguntas, las cuales pueden tener una o mas de una respuesta correcta. Solo se considerara correcta en caso de que se hayan marcado todas las respuestas validas para la pregunta. Para aprobar deberás obtener o superar un 70% sobre el total.
		</p>

	<h3 class="margin-left margin-top">Pregunta: <span>1/10</span></h3>		
		
	</div>

	<div class="row-fluid">
		<div class="span8 offset3 ">

			<strong>¿En que se caracterizan las clases del tipo abstractas?</strong>

			<ul class="lista-examen">

			<li>
					<input type="checkbox"/> No es posible instanciarlas
				</li>

				<li>
					<input type="checkbox"/>  Todos sus métodos son privados
				</li>

				<li>
					<input type="checkbox"/> No es posible acceder a sus atributos
				</li>

				<li>
					<input type="checkbox"/> Permite implementación de código
				</li>

				<li>
					<input type="checkbox"/> Es con un contrato de firma de métodos que debe cumplirse
				</li>	
							



			</ul>

			<a href="resultado-examen.aspx" class="btn btn-success margin-top pull-right">
                Siguiente>
			</a>
		</div>


	</div>


</asp:Content>
