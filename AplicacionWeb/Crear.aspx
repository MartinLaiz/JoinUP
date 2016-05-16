<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Crear.aspx.cs" Inherits="AplicacionWeb.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<form runat="server" id="crearEvent">
        <div class="container" style="background-color: #f8f8f8; margin-top:80px; border-radius:5px">
            <label runat="server" class="control-label" style="padding-top:100px; font-size:20pt">Crear Evento:</label>
            <div style="height:70px">
                <div style="float:left">
                    <label runat="server" class="control-label">Nombre del evento:</label>
                    <asp:TextBox runat="server" ID="Nombre" CssClass="form-control" Width="400px"></asp:TextBox>
                </div>
            </div>
            
            <div style="margin-top:10px">
                <label runat="server" class="control-label">Descripcion:</label>
                <asp:TextBox runat="server" ID="descr" CssClass="form-control" Width="600px" Height="200px"></asp:TextBox>
            </div>
            <div style="height:80px;">
                <div style="float:left; padding-top:15px">
                    <label runat="server" class="control-label">Lugar:</label>
                    <asp:TextBox runat="server" ID="LugarEvento" CssClass="form-control" Width="280px"></asp:TextBox>
                </div>
            
                <div style="float:left;padding-left: 20px; padding-top:15px">
                    <label runat="server" class="control-label">URL de la imagen del evento:</label>
                    <asp:TextBox runat="server" ID="FotoEvento" CssClass="form-control" Width="250px"></asp:TextBox>
                </div>
            </div>
            <div style="padding-bottom:30px; padding-top:15px">
                <label runat="server" class="control-label">Categoria:</label>
                <asp:TextBox ID="creCat" runat="server" CssClass="form-control" Width="280px"></asp:TextBox>
            </div>

            <!--- Fecha --->
            <div style="margin-top:10px; background-color: green">
                <div style="float:left">
                    <label class="control-label" >Dia:</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="buscaDia" TextMode="Number" Width="80px"></asp:TextBox>
                </div>
                <div style="float:left; margin-left: 10px">
                    <label class="control-label" >Mes:</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="buscaMes" TextMode="Number" Width="80px"></asp:TextBox>
                </div>
                <div style="float:left; margin-left: 10px">
                    <label class="control-label" >Año:</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="buscaAnio" TextMode="Number" Width="80px"></asp:TextBox>
                </div>
            </div>
            <div style="padding-top: 80px; height: 80px">
                <div style="float:left">
                    <asp:RangeValidator ControlToValidate="buscaDia" runat="server" Type="Integer" ErrorMessage="Dia incorrecto" MinimumValue="01" MaximumValue="31"></asp:RangeValidator>
                </div>
                <div style="float:left">
                    <asp:RangeValidator ControlToValidate="buscaMes" runat="server" Type="Integer" ErrorMessage="Mes incorrecto" MinimumValue="01" MaximumValue="12"></asp:RangeValidator>
                </div>
                <div style="float:left">
                    <asp:RangeValidator ControlToValidate="buscaAnio" runat="server" Type="Integer" ErrorMessage="Año incorrecto" MinimumValue="0000" MaximumValue="9999"></asp:RangeValidator>
                </div>
            </div>
            
            
            <div style="padding-top:30px">
                <asp:Button runat="server" style="width:120px; text-align:center" CssClass="btn btn-success" Text="Crear evento" OnClick="registro_evento_Click"/>
            </div>

            <!-- Fin Fecha -->

            
        </div>
    </form>
    <div id="Div_Error" runat="server" style="margin-top:100px" class="alert alert-danger container" role="alert">
        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
        <span class="sr-only">Error:</span>
        <asp:label id="Mensaje" runat="server" text="Mensaje"></asp:label>
       </div>
</asp:Content>
