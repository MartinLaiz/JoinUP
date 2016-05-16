<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="AplicacionWeb.Formulario_web16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form1" method="post" runat="server">
    <div class="panel panel-default" style="margin-top:150px;margin-left:30%;margin-right:30%;min-width:500px">
        <div class="panel-body">
            <div id="superior_panel" >
                <h2 class="text-center" style="width:100%;margin-top: 0;"><small>Registro</small></h2>
                <p style="width:100%" class="text-center text-muted">Únete a la mayor comunidad de eventos de Internet</p>
                <hr style="width:98%;text-align:center;margin-left:1%;"/>

                <label style="color:grey" class="control-label">Nombre:</label>
                <asp:TextBox style="width:100%;color:grey;margin-left:0px;margin-bottom:15px" runat="server" id="nombre_Usuario" CssClass="form-control pull-left" ></asp:TextBox> 
                <br />

                <label style="color:grey" class="control-label">Apellidos:</label>
                <asp:TextBox style="width:100%;color:grey;margin-left:0px;margin-bottom:15px" runat="server" id="apellidos_Usuario" CssClass="form-control pull-left"></asp:TextBox> 
                <br />

                <label style="color:grey" class="control-label">Email:</label>
                <asp:TextBox style="width:100%;color:grey;margin-left:0px;margin-bottom:15px" runat="server" id="email_Usuario" TextMode="Email" CssClass="form-control"></asp:TextBox> 
               <div class="col-xs-6 pull-left" style="padding-right: 5px;padding-left: 0px">
                    <label style="color:grey" class="control-label"">Contraseña:</label>
                    <asp:TextBox style="width:100%;margin-left:0px;margin-bottom:15px" runat="server" id="pass1_Usuario" TextMode="Password" CssClass="form-control"></asp:TextBox> 
                </div>
                    <div class="col-xs-6" style="padding-right: 0px;padding-left: 5px"">
                    <label style="color:grey" class="control-label">Confirmar Contraseña:</label>
                    <asp:TextBox style="width:100%;margin-left:0px;margin-bottom:15px" runat="server" id="pass2_Usuario" TextMode="Password" CssClass="form-control"></asp:TextBox> 
                </div>
                <br />
               
                <input id="terminos" type="checkbox"/>
                <label style="color:grey" class="control-label">Si hubiese terminos y condiciones de uso, los aceptaría</label>
                <br />
                <br />
                <div class="pull-right">
                      <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="registro_usuario" Text="Registrarse!" OnClick="registro_usuario_Click" />
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>