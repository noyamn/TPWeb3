<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site1.Master" AutoEventWireup="true" CodeBehind="crear-examen.aspx.cs" Inherits="WebApplication1.crear_examen" %>
<%@ PreviousPageType VirtualPath="~/Vistas/examenes-profesor.aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <script type="text/javascript">

        $(function () {
            $("#data").datepicker();
        });


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    	<div class="row-fluid">
		<h3 class="margin-left">Creando examen para: <span>Programacion Web 3</span></h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">Usted esta creando un nuevo examen para el curso seleccionado. Complete cada uno de los campos del formulario.</p>
	</div>

	<div class="row-fluid margin-left margin-top">
		<div class="span2 offset1">Curso:</div>
		<div class="span2">
            <asp:DropDownList ID="curso" runat="server">
            </asp:DropDownList>
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Descripcion:</div>
		<div class="span2">
			<asp:TextBox ID="examenDescripcion" runat="server"></asp:TextBox>
		</div>
	</div>
    
	<div class="row-fluid margin-left">
		<div class="span2 offset1">Porc. de Aprobacion:</div>
		<div class="span2">
			<select id="porcentajeAprobacion" runat="server">
				<option value="40">40%</option>
				<option value="45">45%</option>
				<option value="50">50%</option>
				<option value="55">55%</option>
				<option value="60">60%</option>
				<option value="65">65%</option>
				<option value="70">70%</option>
				<option value="75">75%</option>
                <option value="80">80%</option>
                <option value="85">85%</option>
                <option value="90">90%</option>
                <option value="95">95%</option>
                <option value="100">100%</option>
			</select>
		</div>
	</div>    	

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Duracion:</div>
		<div class="span2">
			<select id="examenDuracion" runat="server">
				<option value="15">15 min.</option>
				<option value="30">30 min.</option>
				<option value="45">45 min.</option>
				<option value="60">60 min.</option>
				<option value="75">75 min.</option>
				<option value="90">90 min.</option>
				<option value="105">105 min.</option>
				<option value="120">120 min.</option>
			</select>
		</div>
	</div>


	<div class="row-fluid margin-left">
		<div class="span2 offset1">Fecha tope:</div>
		<div class="span2">
            <asp:TextBox ID="examenFechaTope" runat="server"></asp:TextBox>
		</div>
	</div>

	<div class="row-fluid margin-left">
		<h4>Lista de preguntas:</h4>
		<p class="parrafo" id="prueba" runat="server">
			En el campo descripcion ingrese el enunciado de cada una de las preguntas. Luego complete cada posible respuesta, dejando seleccionadas solo aquellas que sean correctas.
		</p>
	
	</div>
    
    <div id="contenedorPreguntas" runat="server">
          



    </div>

	<div class="span4 offset3">
		<div class="row-fluid margin-top">
			<button class="btn btn-success">Reiniciar</button>
            <asp:Button ID="botonCrearExamen" class="btn btn-success pull-right" 
                runat="server" Text="Crear Examen" onclick="botonCrearExamen_Click" />
		</div>				
	</div>


								
    <asp:HiddenField ID="valorCantidadPreguntas" runat="server" />
     <asp:HiddenField ID="nombreCurso" runat="server" />
</asp:Content>
