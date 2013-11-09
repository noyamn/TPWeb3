<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site1.Master" AutoEventWireup="true" CodeBehind="examenes-profesor.aspx.cs" Inherits="WebApplication1.examenes_profesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="row-fluid">
		<h3 class="margin-left">Crear nuevo examen</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">Para crear un nuevo examen seleccione el curso correspondiente y la cantidad de preguntas que el mismo contendrá. Al hacer clic en el botón "Nuevo examen" será direccionado al formulario de creación.</p>
	</div>

	<div class="row-fluid margin-top
	">
		<div class="span3 offset2">
			Curso: 
			<select>
				<option>Programacion Web 3</option>
				<option>Taller Web 2</option>
			</select>
		</div>
		<div class="span3">
			Cant. preguntas: <input type="text" name="cantidad">
		</div>
		<div class="span3">
            <asp:Button ID="nuevoExamen" class="btn btn-success boton-examen-margin"   PostBackUrl="~/Vistas/crear-examen.aspx" runat="server" Text="Nuevo Examen" />
		</div>
	</div>


	<div class="row-fluid margin-top">
		<h3 class="margin-left">Estos son tus examenes</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">En esta grilla puede visualizar los exámenes disponibles para cada uno de sus correspondientes cursos. Además, detallan las estadísticas de dichos exámenes.</p>
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
