<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site.Master" AutoEventWireup="true" CodeBehind="examenes-disponibles.aspx.cs" Inherits="WebApplication1.examenes_disponibles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="row-fluid">
		<h3 class="margin-left">Examenes disponibles</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">En esta sección podrás acceder a los exámenes que se encuentren disponibles para tus cursos. Recuerda que una vez que inicies el examen no podrás volver a comenzarlo. Verifica que junto a cada exámenes se detalla el tiempo que tienes para realizar el mismo.</p>
	</div>

		<div class="margin-left row-fluid margin-top">
		<div class="span11">
			<table class="table">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>Curso</th>
	                  <th>Nombre</th>
	                  <th>Descripcion</th>
	                  <th>Duracion</th>
                      <th>Fecha Tope</th>
	                  <th>Realizar</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td>1</td>
	                  <td>Programacion Web 3</td>
	                  <td>Preparatorio</td>
	                  <td>Modelo de parcial</td>
	                  <td>120 min.</td>
                      <td>01/09/2013</td>
	                  <td class="color-desaprobado">Vencido</td>
	                </tr>
	                <tr>
	                  <td>2</td>
	                  <td>Programacion Web 3</td>
	                  <td>Examen final</td>
	                  <td>Segundo parcial del curso</td>
	                  <td>120 min.</td>
                      <td>15/09/2013</td>
	                  <td><a href="realizar-examen.aspx" class="btn btn-success">Realizar examen</a></td>
	                </tr>
	                  <td>3</td>
	                  <td>Taller Web 2</td>
	                  <td>Examen taller</td>
	                  <td>Segundo parcial</td>
	                  <td>60 min.</td>
                      <td>15/09/2013</td>
	                  <td><a class="btn btn-success">Realizar examen</a></td>
	                </tr>	                
	              </tbody>
	        </table>
	    </div>
	</div>

	<div class="row-fluid margin-top">
	<h3 class="margin-left">Examenes realizados</h3>
		<p class="parrafo">
			Estos son los exámenes que ya realizaste. Aquí se detalla la correspondiente puntuación que obtuviste en cada uno.
    </p>
	</div>

		<div class="row-fluid margin-top">
		<div class="span10 offset1">
			<table class="table ">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>Curso</th>
	                  <th>Fecha</th>
	                  <th>Descripcion</th>
                      <th>Estado</th>
	                  <th>Resultado</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td>1</td>
	                  <td>Programacion Web 3</td>
	                  <td>15/09/2013</td>
	                  <td>Primer parcial</td>
                      <td class="color-aprobado">Aprobado</td>
	                  <td>75%</td>
	                </tr>
					<tr>
	                  <td>2</td>
	                  <td>Taller Web 2</td>
	                  <td>10/09/2013</td>
	                  <td>Primer parcial</td>
                      <td class="color-aprobado">Aprobado</td>
	                  <td>95%</td>
	                </tr>
	                <tr>
	                  <td>3</td>
	                  <td>Programacion Web 3</td>
	                  <td>21/09/2013</td>
	                  <td>Segundo parcial</td>
                      <td class="color-desaprobado">Desaprobado</td>
	                  <td>50%</td>
	                </tr>	
	              </tbody>
	        </table>
	    </div>
	</div>	
</asp:Content>
