<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicacionWeb.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--codigo evento a partir de la linea 6818-->
    <form id="Form1" method="post" runat="server">
     <div id="general" style = "margin-top:80px"; >
           <div id="containerizq">
               <div id="imagenEven"><!--div donde va la imagen-->
                    <img src="http://www.5avenida.org/slides/p_0001.jpg" width="256" height ="256" />
               </div>

 
               <div id="DetallesEve"> <!--divsde la descripcion-->
                   <div id="CiudadEve">
                       <asp:Panel ID="Panel5" runat="server">
                         <asp:Label ID="Label1" runat="server" Text="Ciudad:" ></asp:Label>
                            &nbsp;Alicante</asp:Panel>
                   </div>

                   <div id="LugarEve">
                       <asp:Panel ID="Panel1" runat="server">
                         <asp:Label ID="Label6" runat="server" Text="Lugar:"></asp:Label>
                            &nbsp;5ª Avenida</asp:Panel>
                   </div>

                   <div id="FechaEve">
                           <asp:Label ID="Label3" runat="server" Text="Fecha del Evento:"></asp:Label>
                            &nbsp;19/02/2016 &nbsp;
                   </div>
                    
                   <div id="HoraEve">
                        <asp:Panel ID="Panel7" runat="server">
                            <asp:Label ID="Label5" runat="server" Text="Hora:"></asp:Label>
                             3:00</asp:Panel>
                   </div>

                   <div id="AsistentesEve">
                       <asp:Panel ID="Panel8" runat="server">
                         <asp:Label ID="Label4" runat="server" Text="Nº de Asistentes:"></asp:Label>
                         &nbsp;508 &nbsp; &nbsp;
                    </asp:Panel>

                   </div>

                   <div id ="botonesEve"><!--Botones asistir-->
                   
                       <div id="Asistir">
                       <div class="pull-left">
                      <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="registro_usuario" Text="Asistir" />
                        </div>
                            &nbsp;
                             <br />
                        </div>

                       <div id="NoAsistir">
                        <div class="pull-left">
                            <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="Button2" Text="No Asistir" />
                        </div>
                            &nbsp;
                             <br />
                          </div>

                        <div id="Crear">
                            <div class="pull-left">
                                <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="Button3" Text="Borrar" />
                            </div>
                            &nbsp;
                             <br />
                        </div>

                       <div id="Modificar">
                           <div class="pull-left">
                                <asp:Button runat="server" style="margin-right:1%" CssClass="btn btn-primary" ID="Button1" Text="Modificar" />
                            </div>
                            &nbsp;
                             <br />
                        </div>

                   </div> <!--se botones-->
               </div><!--se cierra detalles-->
             </div> <!--se cierra el div izquierdo-->

         <div id="Centro">
             <div id="DescripcionEven">
                   <asp:Panel ID="Panel4"  runat="server" BorderStyle="Solid" Height="400px" BackColor="#CCCCCC">
                <asp:Label ID="Label2" runat="server" ></asp:Label>
                               &nbsp;Bienvenidos al mundo 5avenida, en él, estarás inmerso en un local lleno de vida diversión y espectáculo.
<br /> Nuestro propósito: Que lo pases en grande, que bailes y sobre todo que sonrías.
                     <br />  Promoción para esta noche=Entrada con pulsera Rrpp.
5ªAv:6€+Copa/Promoción+Chupito/Coctel.
                      <br /> *****Promoción exclusiva=Hasta las:04:00.H*****
</asp:Panel>
         
         </div>
             <div id="ComentariosEven">
                 <asp:Panel ID="Panel6" runat="server" ScrollBars="None">
                 <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" Font-Size="Large" Columns="50" Height="400px"  BorderColor="Black" BorderStyle="Solid" Width="800px" TextMode="MultiLine" BackColor="#CCCCCC"></asp:TextBox>
                 <br /> <br /> <asp:Button ID="Button4" runat="server" Text="Comentar" />
             </asp:Panel>
             </div>


         </div><!--se cierra el div central-->


         <div id="Derecha">
             <iframe  width="400"  height="400"  frameborder="0" style="border-style: solid; border-width: medium; border-color: inherit; "
                src="https://www.google.com/maps/embed/v1/place?key=AIzaSyByqdTTCuf3vUWnMCJPMobV2M5y8yCwHWQ&q=Alicante/Carrer+Girona"></iframe>

         </div>


    </div><!--se cierra el div general-->
    </form>


</asp:Content>

