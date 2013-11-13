<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Site1.Master" AutoEventWireup="true" CodeBehind="ver-grafico.aspx.cs" Inherits="WebApplication1.Vistas.ver_grafico" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="row-fluid">
		<h3 class="margin-left">Graficos para el examen</h3>
	</div>
	
	<div class="row-fluid">
		<p class="parrafo">Estos son los graficos con los resultados de aprobados-desaprobados y rindieron-faltan, para el examen seleccionado.</p>
        <div class="row-fluid margin-top">

            <div class="span4 offset2">

                <asp:Chart ID="Chart1" runat="server" BackColor="#F3F3F3" Height="500px" BorderlineColor="#F3F3F3" BorderSkin-PageColor="#F3F3F3">
                    <Series>
                        <asp:Series ChartArea="aprobados" ChartType="Pie" Name="aprobados">
                        </asp:Series>
                        <asp:Series ChartArea="desaprobados" ChartType="Pie" Name="desaprobados">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="aprobados">
                        </asp:ChartArea>
                        <asp:ChartArea Name="desaprobados">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                
                         
            </div>

            <div class="span4 offset1">

                <asp:Chart ID="Chart2" runat="server" BackColor="#F3F3F3" Height="500px" BorderlineColor="#F3F3F3" BorderSkin-PageColor="#F3F3F3">
                    <Series>
                        <asp:Series ChartArea="rindieron" ChartType="Pie" Name="rindieron">
                        </asp:Series>
                        <asp:Series ChartArea="faltan" ChartType="Pie" Name="faltan">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="rindieron">
                        </asp:ChartArea>
                        <asp:ChartArea Name="faltan">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>                           
            


            </div>


        </div>
	</div>    
</asp:Content>
