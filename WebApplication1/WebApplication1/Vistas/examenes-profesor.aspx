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
			Nombre del examen:
            <asp:TextBox ID="nombreCurso" runat="server" MaxLength="40" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"   ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium" ControlToValidate="nombreCurso" runat="server" ErrorMessage="Debes ingresar un nombre"></asp:RequiredFieldValidator>
		</div>
		<div class="span3">
			Cant. preguntas: 
            <asp:TextBox ID="cantidad" runat="server" MaxLength="3"></asp:TextBox>
            <asp:RequiredFieldValidator  Display="Dynamic" ID="RequiredFieldValidator2"   ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium" ControlToValidate="cantidad" runat="server" ErrorMessage="Debes ingresar una cantidad"></asp:RequiredFieldValidator>
            <asp:RangeValidator  Display="Dynamic" ID="RangeValidator1" runat="server"  MinimumValue="0"  ControlToValidate="cantidad" Type="Integer"  MaximumValue="100" ErrorMessage="El valor debe ser entre 0-100" ForeColor="Red"  ToolTip="El valor debe ser entre 0-100" Font-Size="Medium"></asp:RangeValidator>
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
	                  <th>Descripcion</th>
	                  <th>Rindieron</th>
	                  <th>Aprobaron</th>
	                  <th>Reprobaron</th>
	                  <th>Faltan</th>
                      <th>Grafico</th>
	                </tr>
	              </thead>
	              <tbody id="tablaMisExamenes" runat="server">
	                    
	              </tbody>
	        </table>
	    </div>
	</div>
 
</asp:Content>
