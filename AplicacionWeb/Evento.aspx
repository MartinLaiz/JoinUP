<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Evento.aspx.cs" Inherits="AplicacionWeb.Pagina_Evento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <!--codigo evento a partir de la linea 6818-->
    <form id="Form1" method="post" runat="server">
     <div id="general" style = "background-color:gainsboro;margin-top:80px;border-radius: 30px 30px 30px 30px" class="panel panel-default">
         <div id="ContainerEvento">

           <div id="containerizq">
               <div id="imagenEven"><!--div donde va la imagen-->
                    <img ID="fotoEvento" runat="server" width="256" height ="256" />
               </div>

 
               <div id="DetallesEve"> <!--divsde la descripcion-->
                   <div class="panel panel-default" style="width:256px;height:210px">
                    <div class="panel-body">
                        <div id="superior_panel" >

                            <asp:Panel ID="PanelTitulo" runat="server"> <!--Nombre evento-->
                                <asp:Label ID="LabelFijoNombre" runat="server" Text ="Nombre evento: "></asp:Label>
                                <asp:Label ID="nombreEvento" runat="server"></asp:Label>
                            </asp:Panel>
                             <br />

                           <asp:Panel ID="Panel5" runat="server"> <!--ciudad-->
                              <asp:Label ID="Label1" runat="server" Text="Ciudad:" ></asp:Label>
                               <asp:Label ID="CiudadEvento" runat="server" Visible="true" Text=""></asp:Label>
                           </asp:Panel>
                            <br />

                           <asp:Panel ID="Panel1" runat="server"> <!--lugar-->
                             <asp:Label ID="Label6" runat="server" Text="Lugar:"></asp:Label>
                                <asp:Label ID="LugarEvento" runat="server"></asp:Label></asp:Panel>
                            <br />

                           <asp:Label ID="Label3" runat="server" Text="Fecha del Evento:"></asp:Label> <!--fecha-->
                             &nbsp;19/02/2016 &nbsp;
                            <br />

                          <asp:Panel ID="Panel7" runat="server"> <!--hora-->
                             <asp:Label ID="Label5" runat="server" Text="Hora:"></asp:Label>
                              3:00</asp:Panel>
                            <br />

                           <asp:Panel ID="Panel8" runat="server"> <!--asistnentes-->
                             <asp:Label ID="Label4" runat="server" Text="Nº de Asistentes:"></asp:Label>
                             &nbsp;508 &nbsp; &nbsp;
                        </asp:Panel>
                            <br />

                      </div><!--se cierra la clase superior panmnel-->
                    </div><!--se cierra la clase panel body-->
                 </div><!--se cierra la clase panel default-->
               </div><!--se cierra detalles-->

              <div id ="botonesEve"><!--Botones-->
                  <div id="botonesArriba">
                       <div class="pull-left" style="float:left"><!--Boton asistir-->
                            <asp:Button runat="server"  CssClass="btn btn-primary" ID="Boton_Asistir" Text="Asistir"  />
                        </div>
                            &nbsp;
                             <br />

                        <div class="pull-left" style="float:left;margin-top:-20px; height: 41px;"><!--Boton no asistir-->
                            <asp:Button runat="server" style="margin-right:1%;margin-bottom:4px" CssClass="btn btn-primary" ID="Boton__No_Asistir" Text="No Asistir" />
                        </div>
                            &nbsp;
                             <br />
                          </div>
 
     
                             <div class="pull-left" style="float:left"><!--borrar-->
                                <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="Boton_Borrar" Text="Borrar" />
                            </div>
                            &nbsp;
                             <br />

  
                            <div class="pull-left" style="float:left;margin-top:-20px; height: 41px;"><!--modificar-->
                                <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="Boton_Modificar" Text="Modificar" />
                            </div>
                            &nbsp;
                             <br />
                   </div> <!--se botones-->
             </div> <!--se cierra el div izquierdo-->

         <div id="Centro">
             <div id="descripcion">
                   <asp:Label ID="descripcionEvento" runat="server"  BorderStyle="Solid" Height="256px" Width="700px" BackColor="white" ></asp:Label>
            </div>

             <div id="ComentariosEvenUsua" >
                    <textarea class="arrow" name="note"  style = "width:700px; height:256px" >
                    </textarea>
  

             </div>
             <div id="ComentariosEven">
                 <asp:Panel ID="Panel6" runat="server" ScrollBars="None">
                 <asp:TextBox ID="Comentarios" runat="server" EnableViewState="False" Font-Size="Large" Columns="50" Height="250px"  BorderColor="Black" BorderStyle="Solid" Width="700px" TextMode="MultiLine" BackColor="white"></asp:TextBox>
                 <br /> <br /> <asp:Button ID="Boton_Comentar" runat="server" Text="Comentar" />
             </asp:Panel>
             </div>


         </div><!--se cierra el div central-->


         <div id="Derecha">
             <iframe  width="300"  height="256" style="border-style: solid; border-width: medium; border-color: inherit; "
                src="https://www.google.com/maps/embed/v1/place?key=AIzaSyByqdTTCuf3vUWnMCJPMobV2M5y8yCwHWQ&q=Alicante/Carrer+Girona"></iframe>

         </div>
        </div>
    </div> <!--se cierra el div general-->
    </form>
</asp:Content>
