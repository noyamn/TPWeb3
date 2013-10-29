<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cursos-profesor.aspx.cs" Inherits="WebApplication1.cursos_profesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

        $(function () {
            $("#fechaIni").datepicker();
        });
        $(function () {
            $("#fechaFin").datepicker();
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    
    <div class="row-fluid">
		<h3 class="margin-left">Estos son tus cursos actuales</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">	Desde esta sección puedes administrar tus cursos creados (editar/borrar), como también puedes crear un nuevo curso completando el formulario de abajo. Recuerda que al ingresar los emails correspondientes a los alumnos, debes separarlos mediante ';'</p>
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
	                  <th>Acciones</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td>1</td>
	                  <td>Programacion Web 3</td>
	                  <td>Si</td>
	                  <td>10</td>
	                  <td>15/09/2013</td>
	                  <td>30/09/2013</td>
	                  <td>	

	                  	<div class="btn-group">
						  <button class="btn btn-success ">Editar</button>
						  <button class="btn btn-success">Borrar</button>

						</div>

					  </td>
						
	                </tr>
	                <tr>
	                  <td>2</td>
	                  <td>Taller Web 2</td>
	                  <td>Si</td>
	                  <td>5</td>
	                  <td>15/09/2013</td>
	                  <td>30/09/2013</td>
	                  <td>	

	                  	<div class="btn-group">
						  <button class="btn btn-success ">Editar</button>
						  <button class="btn btn-success">Borrar</button>

						</div>

					  </td>
						
	                </tr>
	              </tbody>
	        </table>
	    </div>
	</div>

	<div class="row-fluid margin-top">
		<h4 class="margin-left">Crear nuevo curso</h4>
		<p class="parrafo">Crea un nuevo curso completando todos los campos de este formulario.</p>
		<div class="span7 margin-top">

			<div class="row-fluid">
				<div class="span3 offset2">Nombre:</div>
				<div class="span2">
                    <asp:TextBox ID="TextBoxNombreCurso" runat="server"></asp:TextBox>
				</div>
			</div>

			<div class="row-fluid">
				<div class="span3 offset2">Activo:</div>
				<div class="span2">
					<input type="checkbox" checked="true">
				</div>
			</div>

			<div class="row-fluid">
				<div class="span3 offset2">Fecha inicio:</div>
				<div class="span2">
                    <input type="text"  id="fechaIni"  runat="server"/>
				</div>
			</div>	

			<div class="row-fluid">
				<div class="span3 offset2">Fecha finalizacion:</div>
				<div class="span2">
					<input type="text" id="fechaFin" runat="server" />
				</div>
			</div>		

			

		</div>

		<div class="span4 margin-top">
			Emails de Alumnos:
			<textarea class="textbox-curso" runat="server" id="textboxAlumnos"></textarea>
            <asp:Button ID="BotonCrearCurso" class="btn btn-success pull-right margin-top" 
                runat="server" Text="Crear Curso" onclick="BotonCrearCurso_Click" />
		</div>



	

	</div>


</asp:Content>
