<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="crear-examen.aspx.cs" Inherits="WebApplication1.crear_examen" %>
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
		<div class="span2 offset1">Nombre:</div>
		<div class="span2">
			<input type="text" value="">
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Descripcion:</div>
		<div class="span2">
			<input type="text" value="">
		</div>
	</div>
    
	<div class="row-fluid margin-left">
		<div class="span2 offset1">Porc. de Aprobacion:</div>
		<div class="span2">
			<select>
				<option>40%</option>
				<option>45%</option>
				<option>50%</option>
				<option>55%</option>
				<option>60%</option>
				<option>65%</option>
				<option>70%</option>
				<option>75%</option>
                <option>80%</option>
                <option>85%</option>
                <option>90%</option>
                <option>95%</option>
                <option>100%</option>
			</select>
		</div>
	</div>    	

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Duracion:</div>
		<div class="span2">
			<select>
				<option>15 min.</option>
				<option>30 min.</option>
				<option>45 min.</option>
				<option>60 min.</option>
				<option>75 min.</option>
				<option>90 min.</option>
				<option>105 min.</option>
				<option>120 min.</option>
			</select>
		</div>
	</div>


	<div class="row-fluid margin-left">
		<div class="span2 offset1">Fecha tope:</div>
		<div class="span2">
			<input type="text" id="data" value="">
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Hora tope:</div>
		<div class="span2">
			<input type="text" value="">
		</div>
	</div>

	<div class="row-fluid margin-left">
		<h4>Lista de preguntas:</h4>
		<p class="parrafo">
			En el campo descripcion ingrese el enunciado de cada una de las preguntas. Luego complete cada posible respuesta, dejando seleccionadas solo aquellas que sean correctas.
		</p>
	
	</div>

	<div class="preguntas span5 offset3">

		<div class="margin-top">
			<span>Descripcion:</span>
			<strong>1)</strong>		
		</div>

		<input class="widht-pregunta" type="text" value="">
		
		<div class="margin-top">
			<span class="row-fluid">Respuestas:</span>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>			

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>										

		</div>		

	</div>

	<div class="preguntas span5 offset3">

		<div class="margin-top">
			<span>Descripcion:</span>
			<strong>2)</strong>		
		</div>

		<input class="widht-pregunta" type="text" value="">
		
		<div class="margin-top">
			<span class="row-fluid">Respuestas:</span>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>			

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>										

		</div>		

	</div>

	<div class="preguntas span5 offset3">

		<div class="margin-top">
			<span>Descripcion:</span>
			<strong>3)</strong>		
		</div>

		<input class="widht-pregunta" type="text" value="">
		
		<div class="margin-top">
			<span class="row-fluid">Respuestas:</span>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>			

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>										

		</div>		

	</div>

	<div class="preguntas span5 offset3">

		<div class="margin-top">
			<span>Descripcion:</span>
			<strong>4)</strong>		
		</div>

		<input class="widht-pregunta" type="text" value="">
		
		<div class="margin-top">
			<span class="row-fluid">Respuestas:</span>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>			

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>										

		</div>		

	</div>

	<div class="preguntas span5 offset3">

		<div class="margin-top">
			<span>Descripcion:</span>
			<strong>5)</strong>		
		</div>

		<input class="widht-pregunta" type="text" value="">
		
		<div class="margin-top">
			<span class="row-fluid">Respuestas:</span>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>			

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>	

			<div class="row-fluid">
				<input type="checkbox">
				<input type="text" class="widht-pregunta">
			</div>
												
		</div>		

	</div>

	<div class="span4 offset3">
		<div class="row-fluid margin-top">
			<button class="btn btn-success">Reiniciar</button>
			<button class="btn btn-success pull-right">Crear examen</button>
		</div>				
	</div>


								
	
</asp:Content>
