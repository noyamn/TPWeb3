<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site.Master" AutoEventWireup="true" CodeBehind="datos-alumno.aspx.cs" Inherits="WebApplication1.datos_alumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="row-fluid">
		<h3 class="margin-left">Estos son tus datos</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">Desde esta sección puedes editar y modificar los datos personales de tu cuenta. Al finalizar la edición de tus datos, tienes que hacer clic en el botón de "guardar" para que los cambios sufran efecto.</p>
	</div>

	<div class="row-fluid margin-left margin-top">
		<div class="span2 offset1">Nombre:</div>
		<div class="span6">
            <asp:TextBox ID="TexBoxNombre"  MaxLength="15" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1"   ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium" ControlToValidate="TexBoxNombre" runat="server" ErrorMessage="Debes ingresar tu nombre"></asp:RequiredFieldValidator>
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Apellido:</div>
		<div class="span6">
            <asp:TextBox ID="TextBoxApellido" MaxLength="15" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"   ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium" ControlToValidate="TextBoxApellido" runat="server" ErrorMessage="Debes ingresar tu apellido"></asp:RequiredFieldValidator>
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">DNI:</div>
		<div class="span6">
            <asp:TextBox ID="TextBoxDNI" runat="server" MaxLength="8"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"   Display="Dynamic" ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium" ControlToValidate="TextBoxDNI" runat="server" ErrorMessage="Debes ingresar tu DNI"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic"  ControlToValidate="TextBoxDNI" ValidationExpression="\d{8}" runat="server" ErrorMessage="Ingrese un DNI valido" ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium"> </asp:RegularExpressionValidator>
		</div>
	</div>			

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Email:</div>
		<div class="span2">
            <asp:Label ID="labelEmail" runat="server" Text="Label"></asp:Label>
		</div>
	</div>	

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Contraseña nueva:</div>
		<div class="span2">
			<asp:TextBox ID="TextBoxPassNueva"  MaxLength="15" TextMode="password" runat="server"></asp:TextBox>
		</div>
	</div>

	<div class="row-fluid margin-left">
		<div class="span2 offset1">Repetir contraseña nueva:</div>
		<div class="span8">
			<asp:TextBox ID="TextBoxPassNuevaRe" TextMode="password" runat="server"></asp:TextBox>
            <asp:CompareValidator ControlToValidate="TextBoxPassNuevaRe" ControlToCompare="TextBoxPassNueva" ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas deben coincidir" ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium"></asp:CompareValidator>
		</div>
	</div>

	
	<div class="span1 offset5 margin-top">
        <asp:Button ID="BotonModificarDatos" class="btn btn-success pull-right" 
            runat="server" Text="Guardar" onclick="BotonModificarDatos_Click" />
	</div>


</asp:Content>
