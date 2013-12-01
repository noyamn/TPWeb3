<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site.Master" AutoEventWireup="true" CodeBehind="resultado-examen.aspx.cs" Inherits="WebApplication1.resultado_examen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

      <div class="row-fluid">

	    <h3 class="margin-left estado-examen" id="cantidad" runat="server">Resultado del examen: <span id="estado" runat="server"> </span></h3>
	    <h5 class="margin-left">Nombre: <span id="nombreExamen" runat="server"></span></h5>
        <h5 class="margin-left">Curso: <span id="nombreCurso" runat="server"></span></h5>
	    <h5 class="margin-left">Porcentaje Aprobacion: <span id="porcAprobacion" runat="server"></span></h5>
        <h5 class="margin-left">Tu porcentaje: <span id="porcentaje" runat="server"></span></h5>
        <h5 class="margin-left">Cant. preguntas correctas: <span id="respCorrectas" runat="server"></span></h5>

          <div class="span3 pull-right">
              <a href="home-alumno.aspx" class="btn btn-success">Finalizar examen</a>
          </div>

    </div>
	


</asp:Content>
