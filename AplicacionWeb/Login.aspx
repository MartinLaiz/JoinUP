<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AplicacionWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form1" method="post" runat="server">
        <div class="panel panel-default" style="margin-top:150px;margin-left:30%;margin-right:30%;width:500px">
            <div class="panel-body">
                <div id="superior_panel" >

                    <h2 class="text-center"><small> Iniciar Sesión</small></h2>
                    <hr style="width: 98%;text-align:center" />

                    <label style="color:grey" class="control-label">Correo:</label>
                    <asp:TextBox style="width:100%;color:grey" runat="server" id="Correo" CssClass="form-control"></asp:TextBox> 
                    <br />

                    <label style="color:grey" class="control-label">Contraseña:</label>
                    <asp:TextBox style="width:100%;color:grey" runat="server" TextMode="Password" id="Contraseña" CssClass="form-control"></asp:TextBox> 
                    <br />
                    <div class="pull-right">
                        <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="registro_usuario" Text="Confirmar" OnClick="registro_usuario_Click" />
                    </div>
                </div>
            </div>
        </div>

    </form>
</asp:Content>
