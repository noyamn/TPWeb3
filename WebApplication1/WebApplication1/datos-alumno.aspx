<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="datos-alumno.aspx.cs" Inherits="WebApplication1.datos_alumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="row-fluid">
		<h3 class="margin-left">Estos son tus datos</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">Desde esta seccion puedes editar y modificar los datos personales de tu cuenta. Al finalizar la edicion de tus datos, tienes que hacer click en el boton de "guardar" para que los cambios sufran efecto.</p>
	</div>

	<div class="row-fluid margin-left margin-top">
		<div class="span2 offset1">Nombre:</div>
		<div class="span2">
			<input type="text" value="Leandro">
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Apellido:</div>
		<div class="span2">
			<input type="text" value="Ramos">
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">DNI:</div>
		<div class="span2">
			<input type="text" value="35428754">
		</div>
	</div>			

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Email:</div>
		<div class="span2">
			leandroramos@hotmail.com.ar
		</div>
	</div>	

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Contraseña actual:</div>
		<div class="span2">
			<input type="password" value="leandro123">
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Contraseña nueva:</div>
		<div class="span2">
			<input type="password" value="">
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Repetir contraseña nueva:</div>
		<div class="span2">
			<input type="password" value="">
		</div>
	</div>

	
	<div class="span1 offset5 margin-top">
		<button class="btn btn-success pull-right">Guardar</button>
	</div>


</asp:Content>
