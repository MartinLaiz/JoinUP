<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Crear.aspx.cs" Inherits="AplicacionWeb.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server" id="crearEvent">
        <div class="container" style="background-color: #f8f8f8">
            <label runat="server" class="control-label" style="padding-top:100px; font-size:20pt">Crear Evento:</label>
            <div style="margin:0px 20px 20px 0px">
                <div style="float:left">
                    <label runat="server" class="control-label">Nombre del evento:</label>
                    <asp:TextBox runat="server" ID="Nombre" CssClass="form-control" Width="400px"></asp:TextBox>
                </div>
                <div style="padding-left:50px">
                    <asp:Button runat="server" style="width:120px; text-align:center" CssClass="btn btn-success" Text="Crear evento"/>
                </div>
            </div>
            
            
            
            <div>
                <label runat="server" class="control-label">Descripcion:</label>
                <asp:TextBox runat="server" ID="descr" CssClass="form-control" Width="600px" Height="200px"></asp:TextBox>
            </div>
            
            <div style="float:left;">
                <label runat="server" class="control-label">Lugar:</label>
                <asp:TextBox runat="server" CssClass="form-control" Width="280px"></asp:TextBox>
            </div>
            
            <div style="float:left;padding-left: 20px; padding-bottom:30px">
                <label runat="server" class="control-label">URL de la imagen del evento:</label>
                <asp:TextBox runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            </div>
        </div>
    </form>
</asp:Content>
