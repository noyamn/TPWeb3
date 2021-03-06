﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site1.Master" AutoEventWireup="true" CodeBehind="editar-curso.aspx.cs" Inherits="WebApplication1.Vistas.editar_curso" %>
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
				<div class="span6">
                    <asp:TextBox ID="TextBoxNombreCurso" runat="server" MaxLength="40"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="validacion" ID="RequiredFieldValidator1"   ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium" ControlToValidate="TextBoxNombreCurso" runat="server" ErrorMessage="(*)"></asp:RequiredFieldValidator>
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
				<div class="span6">
                    <fecha:UserControl class="fecha" runat="server" ID="fechaIni" />
				</div>
			</div>	

			<div class="row-fluid">
				<div class="span3 offset2">Fecha finalizacion:</div>
				<div class="span6">
					<fecha:UserControl class="fecha" runat="server" ID="fechaFin" />
				</div>
			</div>
		               
		</div>


                <div class="span4 margin-top"">
			        Emails de Alumnos:
			        <textarea class="textbox-curso" runat="server" id="textboxAlumnos"></textarea>
                    <asp:Button ValidationGroup="validacion" ID="Button1" runat="server" Text="Editar Curso" 
                        class="btn btn-success pull-right margin-top" onclick="botonEditarCurso_Click" />                    
		        </div>

	</div>

</asp:Content>
