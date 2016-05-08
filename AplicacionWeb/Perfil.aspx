<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="AplicacionWeb.Formulario_web1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container" style="margin-top:100px;">
            <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                <div class="panel-heading" style="height:55px">
                    <input id="btn_usuario" style="float:right" type="button" class="btn btn-default" value="Editar" onclick="muestra_oculta('pass')"/>
                    <label style="font-size:25px"><b>Perfil</b></label>
                </div>
                <div class="panel-body">
                    <div >
                        <div class="col-xs-4">

                            <img style="margin-left:5%;border-radius: 50%; border-color:Background;border-width: 4px;border-style: solid;" src="Images/foto.jpg" width="128" height="128" alt="foto_perfil"/>

                            <hr style="width:128px;text-align:left;margin-left:5%"/>

                            <textarea readonly style="margin-left:5%;resize:none;width:128px;height:133px" class="form-control" rows="3">La biografia de tu vida</textarea>

                        </div><div class="col-xs-8">
                        <div>
                            
                           <label class="control-label">Nombre:</label>
                           <input style="width:100%;min-width:50px" type="text" class="form-control" id="nombre_usuario"/>

                            <br />

                            <label class="control-label">Apellidos:</label>
                            <input style="width:100%;min-width:50px" type="text" class="form-control" id="ap1_usuario"/>
                            <br />

                            <div id="fecha_nacimiento">
                                <label class="control-label">F. Nacimiento:</label>
                                <br />
                                <div class="col-xs-4">
                                    <input style="width:100%;min-width:45px" type="text" class="form-control" id="dia_usuario"/>
                                </div>
                                <div class="col-xs-4">
                                    <input style="width:100%;min-width:45px" type="text" class="form-control" id="mes_usuario"/>
                                </div>
                                <div class="col-xs-4">
                                    <input style="width:100%;min-width:75px" type="text" class="form-control" id="ano_usuario"/>
                                </div>
                           </div>
                           <br /><br /> <br />
                           <label class="control-label">Genero:</label>
                            <br />
                           <select class="form-control">
                              <option>Hombre</option>
                              <option>Mujer</option>
                           </select>
                            <br />
                           
                        </div>
                    </div>
                </div>

                </div>
            </div>
        </div>

        <div id="pass" style="display:none;margin-top:30px;" class="container" >
            <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                <div class="panel-heading">
                    <label class="control-label">Cambio de contraseña</label>
                </div>
                    <div class="panel-body">
                        <label class="control-label">Email:</label>
                        <input style="width:100%;min-width:50px" type="email" class="form-control" id="email_usuario"/>
                        <br />
                        <div class="col-xs-4">
                            <label class="control-label">Contraseña actual</label>
                            <input class="form-control" type="password" id="pactual_usuario"/>
                            
                        </div>
                        <div class="col-xs-4">
                            <label class="control-label">Contraseña Nueva</label>
                            <input class="form-control" type="password" id="pnueva1_usuario"/>
                        </div>
                        <div class="col-xs-4">
                            <label class="control-label">Contraseña Nueva</label>
                            <input class="form-control" type="password" id="pnueva2_usuario"/>
                        </div>
                    </div>
                </div>
            </div>
       
    
        <div id="eventos_usuario" class="container" style="margin-top:30px;">
            <div class="panel panel-default" style="margin-right:20%;margin-left:20%;min-width:500px">
                <div class="panel-heading">
                    <label class="control-label">Ultimos eventos</label>
                </div>
                <div class="panel-body">
                    <label style="font-weight:normal">No hay eventos actualmente</label>
                </div>

                
            </div>
        </div>
    
</asp:Content>
