<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="AplicacionWeb.Formulario_web11" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <form runat="server">
        <div runat="server" id="contenedor_principal" class="container" style="margin-top:100px;">
            <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                <div class="panel-heading" style="height:55px">
                    <asp:Button runat="server" id="btn_usuario" style="float:right" CssClass="btn btn-default" text="Editar" />
                    <label style="font-size:25px"><b>Perfil</b></label>
                </div>
                <div class="panel-body">
                    <div >
                        <div class="col-xs-4">

                            <img style="margin-left:5%;border-radius: 50%; border-color:Background;border-width: 4px;border-style: solid;" src="Images/foto.jpg" width="128" height="128" alt="foto_perfil"/>

                            <hr style="width:128px;text-align:left;margin-left:5%"/>

                            <asp:TextBox runat="server" ID="bio_usuario" TextMode="multiline" readonly style="margin-left:5%;resize:none;width:128px;height:133px" CssClass="form-control" rows="3">La biografia de tu vida</asp:TextBox>

                        </div><div class="col-xs-8">
                        <div>
                            
                           <label class="control-label">Nombre:</label>
                           <asp:TextBox runat="server" style="width:100%;min-width:50px" CssClass="form-control" id="nombre_usuario"/>

                            <br />

                            <label class="control-label">Apellidos:</label>
                            <asp:TextBox runat="server" style="width:100%;min-width:50px" CssClass="form-control" id="ap_usuario"/>
                            <br />

                            <div id="fecha_nacimiento">
                                <label class="control-label">F. Nacimiento:</label>
                                <br />
                                <div class="col-xs-4">
                                    <asp:TextBox runat="server" style="width:100%;min-width:45px" CssClass="form-control" id="dia_usuario"/>
                                </div>
                                <div class="col-xs-4">
                                    <asp:TextBox runat="server" style="width:100%;min-width:45px" CssClass="form-control" id="mes_usuario"/>
                                </div>
                                <div class="col-xs-4">
                                    <asp:TextBox runat="server" style="width:100%;min-width:75px" CssClass="form-control" id="ano_usuario"/>
                                </div>
                           </div>
                           <br /><br /> <br />
                           <label class="control-label">Genero:</label>
                            <br />
                           <asp:DropDownList id="genero" runat="server" CssClass="form-control">
                              <asp:listitem value ="1">Hombre</asp:listitem>
                              <asp:listitem value ="2">Mujer</asp:listitem>
                           </asp:DropDownList>
                            <br />
                           
                        </div>
                    </div>
                </div>

                </div>
            </div>
        </div>

        <div id="pass" runat="server" style="display:none;margin-top:30px;" class="container" >
            <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                <div class="panel-heading">
                    <label class="control-label">Cambio de contraseña</label>
                </div>
                    <div class="panel-body">
                        <label class="control-label">Email:</label>
                        <asp:TextBox runat="server" style="width:100%;min-width:50px" CssClass="form-control" id="email_usuario"/>
                        <br />
                        <div class="col-xs-4">
                            <label class="control-label">Contraseña actual</label>
                            <asp:TextBox runat="server" CssClass="form-control" TextMode="password" id="pactual_usuario"/>
                            
                        </div>
                        <div class="col-xs-4">
                            <label class="control-label">Contraseña Nueva</label>
                            <asp:TextBox runat="server" CssClass="form-control" TextMode="password" id="pnueva1_usuario"/>
                        </div>
                        <div class="col-xs-4">
                            <label class="control-label">Contraseña Nueva</label>
                            <asp:TextBox runat="server" CssClass="form-control" TextMode="password" id="pnueva2_usuario"/>
                        </div>
                    </div>
                </div>
            </div>
       
    
        <div id="eventos_usuario" runat="server"  class="container" style="margin-top:30px;">
            <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                <div class="panel-heading">
                    <label class="control-label">Ultimos eventos</label>
                </div>
                <div class="panel-body">
                    <label style="font-weight:normal">No hay eventos actualmente</label>
                </div>

                
            </div>
        </div>

        <div id="Prueba" runat="server" style="margin-top:100px" class="alert alert-danger container" role="alert">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span>
            No se ha encontrado ningun Usuario con esa ID
        </div>

    </form>
</asp:Content>
