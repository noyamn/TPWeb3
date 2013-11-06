<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site.Master" AutoEventWireup="true" CodeBehind="home-alumno.aspx.cs" Inherits="WebApplication1.home_alumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

        <div class="row-fluid">
		    <h2 class="margin-left" runat="server" id="tituloHomeAlumno">Bienvenido </h2>
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
		    <h3 class="margin-left">Cursos a los que perteneces</h3>
		    <p class="parrafo">
			    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.
		    </p>

	    </div>

	    <div class="row-fluid margin-top">
		    <div class="span10 offset1">
			    <table class="table ">
	                  <thead>
	                    <tr>
	                      <th>#</th>
	                      <th>Curso</th>
	                      <th>Fecha inicio</th>
	                      <th>Fecha Finalizacion</th>
                          <th>Profesor</th>
	                    </tr>
	                  </thead>
	                  <tbody id="tablaMisCursos" runat="server">
                
	                  </tbody>
	            </table>
	        </div>
	    </div>

	    <div class="row-fluid margin-top">
	    <h3 class="margin-left">Examenes realizados</h3>
		    <p class="parrafo">
			    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.
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
	                      <th>Resultado</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <tr>
	                      <td>1</td>
	                      <td>Programacion Web 3</td>
	                      <td>15/09/2013</td>
	                      <td>Primer parcial</td>
	                      <td>7.5</td>
	                    </tr>
					    <tr>
	                      <td>2</td>
	                      <td>Taller Web 2</td>
	                      <td>10/09/2013</td>
	                      <td>Primer parcial</td>
	                      <td>9.25</td>
	                    </tr>
	                    <tr>
	                      <td>3</td>
	                      <td>Programacion Web 3</td>
	                      <td>21/09/2013</td>
	                      <td>Segundo parcial</td>
	                      <td>8</td>
	                    </tr>	
	                  </tbody>
	            </table>
	        </div>
	    </div>

</asp:Content>
