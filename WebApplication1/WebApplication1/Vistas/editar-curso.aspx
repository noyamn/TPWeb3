<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site1.Master" AutoEventWireup="true" CodeBehind="editar-curso.aspx.cs" Inherits="WebApplication1.Vistas.editar_curso" %>
<%@ Register TagPrefix="fecha" TagName="UserControl" Src="~/Vistas/ControlFecha.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

        $(function () {
            $(".fecha").datepicker({ dateFormat: 'yy-mm-dd' });
        });


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

	<div class="row-fluid margin-top">
		<h4 class="margin-left" id="tituloEditar" runat="server">Editando el curso : Programacion Web3</h4>
		<p class="parrafo">Modifique los campos que desee editar, y luego haga click en el boton 'Editar Curso'.</p>
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
                    <fecha:UserControl class="fecha" runat="server" ID="fechaIni" />
				</div>
			</div>	

			<div class="row-fluid">
				<div class="span3 offset2">Fecha finalizacion:</div>
				<div class="span2">
					<fecha:UserControl class="fecha" runat="server" ID="fechaFin" />
				</div>
			</div>
		    
            <div class="row-fluid">
                <div class="span3 offset2">
			        Agregar Alumnos:
			        <textarea class="textbox-curso" runat="server" id="textboxAlumnos"></textarea>
                
		        </div>
            </div> 
             
              <div class="row-fluid">
			    <div class="span3 offset2">
                    <asp:Button ID="botonEditarCurso" runat="server" Text="Editar Curso" 
                        class="btn btn-success" onclick="botonEditarCurso_Click" />
			    </div>
              </div>                        		

			

		</div>

		<div class="span4 margin-top">
			 Alumnos inscriptos:
            <p id="alumnosInscriptos" runat="server">
            </p>

		</div>




	</div>

</asp:Content>
