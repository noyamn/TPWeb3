<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ControlFecha.ascx.cs" Inherits="WebApplication1.Vistas.ControlFecha" %>
<asp:TextBox ID="TextBox1" class="fecha" runat="server" MaxLength="8"></asp:TextBox>
 <asp:RequiredFieldValidator  ValidationGroup="validacion" ID="RequiredFieldValidator2"   ForeColor="Red"  ToolTip="Campo Requerido" Font-Size="Medium" ControlToValidate="TextBox1" runat="server" ErrorMessage="(*)"></asp:RequiredFieldValidator>
 