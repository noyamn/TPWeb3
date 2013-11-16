<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site1.Master" AutoEventWireup="true" CodeBehind="borrarCurso.aspx.cs" Inherits="WebApplication1.Vistas.borrarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

	<div class="row-fluid margin-top">
		<h4 class="margin-left" id="tituloBorrar" runat="server">¿Esta seguro que desea borrar el curso de nombre Primer Parcial?</h4>
		<p class="parrafo" id="textoBorrar" runat="server">Si esta seguro haga click en el boton de 'Borrar', en caso contrario haga click en el boton 'Cancelar'</p>

        <div id="botonesBorrar" runat="server">
        
            <div class="span2 offset2">
                <asp:Button ID="borrar_Curso" runat="server" Text="Borrar" 
                            class="btn btn-success pull-right margin-top" 
                    onclick="borrarCurso_Click" /> 
            </div>
            <div class="span2 offset1">
                <a href="cursos-profesor.aspx" class="btn btn-success pull-right margin-top">Cancelar</a> 
            </div>
		
    </div>

	</div>

</asp:Content>
