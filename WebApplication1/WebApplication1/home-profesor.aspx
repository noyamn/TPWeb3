<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home-profesor.aspx.cs" Inherits="WebApplication1.home_profesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    
	<div class="row-fluid">
		<h1 class="margin-left" runat="server" id="tituloHomeProfesor">Bienvenido Profesor</h1>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>

	<div class="row-fluid margin-top">
		<h3 class="margin-left">Cursos actualmente activos</h3>
		<p class="parrafo">
			Estos son tus cursos activos. Para editarlos o crear un nuevo curso dirigirse a la sección "mis cursos".
		</p>

	</div>

		<div class="row-fluid margin-top">
		<div class="span10 offset1">
			<table class="table ">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>Nombre</th>
	                  <th>Activo</th>
	                  <th>Cant. Alumnos </th>
	                  <th>Fecha Inicio</th>
	                  <th>Fecha Fin</th>
	                </tr>
	              </thead>
	              <tbody id="misCursos" runat="server">
	                
	              </tbody>
	        </table>
	    </div>
	</div>
	

	<div class="row-fluid margin-top">
		<h3 class="margin-left">Estos son tus examenes</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">En esta grilla puede visualizar los examenes disponibles para cada uno de sus correspondientes cursos. Ademas, detallan las estadisticas de dichos examenes.</p>
	</div>
	

	<div class="row-fluid margin-top">
		<div class="span10 offset1">
			<table class="table ">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>Curso</th>
	                  <th>Fecha Tope</th>
	                  <th>Rindieron</th>
	                  <th>Aprobaron</th>
	                  <th>Reprobaron</th>
	                  <th>Faltan</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td>1</td>
	                  <td>Programacion Web 3</td>
	                  <td>30/09/2013 23:00</td>
	                  <td>4</td>
	                  <td>3</td>
					  <td>1</td>
	                  <td>6</td>
	                </tr>
	                <tr>
	                  <td>2</td>
	                  <td>Taller Web 2</td>
	                  <td>30/09/2013 23:00</td>
	                  <td>3</td>
	                  <td>3</td>
					  <td>0</td>
	                  <td>2</td>
	                </tr>              
	              </tbody>
	        </table>
	    </div>
	</div>

</asp:Content>
