<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="AplicacionWeb.Formulario_web11" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <form runat="server">
            
            <div id="Div_Error" runat="server" style="margin-top:100px;width:50%" class="alert alert-danger container text-center" role="alert">
                <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                <span class="sr-only">Error:</span>
                <strong>Error!: </strong>
                <asp:label id="Mensaje" runat="server" text="Mensaje"></asp:label>
            </div>


            <div id="subir_perfil" visible="false" runat="server" class="container" style="margin-top:100px;">
                <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                    <div class="panel-heading">
                        <label class="control-label">Subir foto de perfil</label>
                    </div>
                    <div class="panel-body">
                        <label style="font-weight:normal">Indica la URL de la imagen:</label>
                        <asp:TextBox runat="server" style="width:100%;min-width:50px" CssClass="form-control" id="subir_textbox"/> 
                        <div class="pull-right">
                            <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" Text="Confirmar" OnClick="Unnamed1_Click"/>
                        </div>
                    </div>
                </div>
            </div>

            <div runat="server" id="contenedor_principal" class="container" style="margin-top:100px;">
                <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                    <div class="panel-heading" style="height:55px">
                        <asp:Button runat="server" id="btn_usuario" visible="false" style="float:right" CssClass="btn btn-default" text="Editar" OnClick="btn_usuario_Click" />
                        <label style="font-size:25px"><b>Perfil</b></label>
                    </div>
                    <div class="panel-body">
                        <div>
                            <div class="col-xs-4">

                                <img runat="server" id="fotoperfil_img"  style="margin-left:5%;border-radius: 50%; border-color:Background;border-width: 4px;border-style: solid;" src="Images/foto.jpg" width="128" height="128" alt="foto_perfil"/>

                                <div id="text_subir" runat="server" visible="false" class="divimg" >   
                                    <asp:ImageButton visible="false" runat="server" ID="fotoperfil_but" CssClass="img" style="margin-left:5%;border-radius: 50%; border-color:Background;border-width: 4px;border-style: solid;" ImageUrl="Images/foto.jpg" width="128" height="128" alt="foto_perfil" OnClick="fotoperfil_Click"/>
                                    
                                    <div id="cambiar_foto" runat="server" style="padding-left:18%;padding-top:15px;text-align:left;padding-bottom:0px" class="text">
                                        Cambiar foto
                                    </div>
                                </div>
                            
                                <hr style="width:128px;text-align:left;margin-left:5%"/>
                                <asp:TextBox runat="server" ID="bio_usuario" TextMode="multiline" readonly="true" style="margin-left:5%;resize:none;width:128px;height:133px" CssClass="form-control" rows="3">La biografia de tu vida</asp:TextBox>
                           
                            </div>
                            <div class="col-xs-8">
                        
                            
                               <label class="control-label">Nombre:</label>
                               <asp:TextBox readonly="true" runat="server" style="width:100%;min-width:50px" CssClass="form-control" id="nombre_usuario"/>

                                <br />

                                <label class="control-label">Apellidos:</label>
                                <asp:TextBox readonly="true" runat="server" style="width:100%;min-width:50px" CssClass="form-control" id="ap_usuario"/>
                                <br />

                                <div id="fecha_nacimiento">
                                    <label class="control-label">F. Nacimiento:</label>
                                    <br />
                                    <div class="col-xs-4">
                                        <asp:TextBox readonly="true" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" MaxLength="2" runat="server" style="width:100%;min-width:45px" CssClass="form-control" id="dia_usuario"/>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox readonly="true" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" MaxLength="2" runat="server" style="width:100%;min-width:45px" CssClass="form-control" id="mes_usuario"/>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox readonly="true" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" MaxLength="4" runat="server" style="width:100%;min-width:75px" CssClass="form-control" id="ano_usuario"/>
                                    </div>
                               </div>
                               <br /><br /> <br />
                               <label class="control-label">Genero:</label>
                               <br />
                               <asp:DropDownList Enabled="False" id="genero" runat="server" CssClass="form-control">
                                  <asp:listitem value ="1">Hombre</asp:listitem>
                                  <asp:listitem value ="2">Mujer</asp:listitem>
                               </asp:DropDownList>
                               <br />
                           
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="pass" runat="server" visible="false" style="margin-top:30px;" class="container" >
                <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                    <div class="panel-heading">
                        <asp:Button runat="server" id="pass_btn" visible="true" style="float:right" CssClass="btn btn-default" text="Cambiar Contraseña" OnClick="pass_btn_Click" />
                        <label style="font-size:25px"><b>Cambiar contraseña</b></label>
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

            

            <div id="eventos_usuario" runat="server" class="container" style="margin-top:30px;">
                <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                    <div class="panel-heading">
                        <label class="control-label">Ultimos eventos</label>
                    </div>
                    <div class="panel-body">
                        <label style="font-weight:normal">No hay eventos actualmente</label>
                    </div>
                </div>
            </div>

        

              
        </form>
</asp:Content>
