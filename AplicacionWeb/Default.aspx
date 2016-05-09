<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicacionWeb.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <body>
     <div id="generalDefault">
          
         <div id= "Filtro" background-image:  url(Images/foto.jpg); style="background-image: url('Images/fondo.jpg')"
               background-size:     1200px 250px>  <!--Parte del filtro-->

          </div>  <!--Fin: Filtro-->
     
         <div id="Fecha"> <!-- Filtor de fecha-->
             <input type="date"/> 
             <div id="Crear">  <!-- Boton-->
                <input type="button" value="Crear Evento" style="float:right"/>
               </div>  <!-- Fin: Boton--> 
          </div>  <!-- Fin: Filtor de fecha--> 


          <!--Muestra eventos recientes-->
         <div id="TodasImagenes">
             <div class="Columna" id="uno">  <!--Primera Columna-->
                 <div id="img1"><!--div donde va la imagen-->
                      <img src="http://oceanfantasy.es/wp-content/uploads/2016/01/futbol1.jpg" width="200" height ="200" style="border: thin solid #000000;" /
                          border-right-style: solid; style="border-style: solid" <a href="/http://www.virtualnauta.com/">La home de Virtualnauta</a> > 
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://sprites.comohacerpara.com/img/10893a-abrir-escuela-danzas-baile.jpg" width="200" height ="200"  style="border: thin solid #000000;"/>
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://www.cdn.uolala.com/getimage.ashx?width=730&q=70&src=/event-covers/b-mindfulness-y-naturaleza-20160210235103157-915fdf.jpg" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />

            </div>    <!--Fin:Primera Columna-->

             <div class="Columna" id="dos">  <!--Segunda Columna-->
                  <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://www.pmartorell.com/wp-content/uploads/2015/11/tecnologia.jpg" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="https://image.freepik.com/vector-gratis/arte-realista-y-la-cubierta-ilusion-foto_766699.jpg" width="200" height ="200"  style="border: thin solid #000000;"/>
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://www.olivasingular.com/wp-content/uploads/2014/04/Chef-cocinando-oliva-OlivaSingular.jpg" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />

            </div>  <!--Fin:Segunda Columna-->

             <div class="Columna" id="tres">  <!--Tercera Columna-->
                   <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://shoppermagazine.es/wp-content/uploads/2016/02/fotografiajpg.jpg" width="200" height ="200"  style="border: thin solid #000000;"/>
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://i1.wp.com/hipertextual.com/files/2015/08/cine-estrenos.jpg?resize=610%2C371" width="200" height ="200"  style="border: thin solid #000000;"/>
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://www.belleza-moda.com/wp-content/themes/bellezamoda/images/BellezaModaLogo2.png" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />

            </div><!--Fin:Tercera Columna-->

             <div class="Columna" id="cuatro">  <!--Cuarta Columna-->
                   <div id="img1"><!--div donde va la imagen-->
                   <img src ="https://www.yosoyaccionista.santander.com/Files/tbArticulo/max_img20150326121211.jpg" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://conexiones.digital/wp-content/uploads/2015/03/1148005_18738305.jpg" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://www.lisemur.es/attachments/Image/medioambiente_1.jpg?template=generic" width="200" height ="200"  style="border: thin solid #000000;"/>
               </div>
                 <br />

            </div>  <!--Fin:Cuarta Columna-->

             <div class="Columna" id="cinco">  <!--Quinta Columna-->
                   <div id="img1"><!--div donde va la imagen-->
                   <img src ="https://i.ytimg.com/vi/cm1KsqcmU3s/hqdefault.jpg" width="200" height ="200"  style="border: thin solid #000000;"/>
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://multimedia.mmc.com.do/multimedia/cdn_uploads/2015/08/Los-16-hechos-m%C3%A1s-decepcionantes-de-la-historia-de-la-m%C3%BAsica.jpg" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />
                 <div id="img1"><!--div donde va la imagen-->
                   <img src ="http://www.ica-grupo.com/docs/clientes/26.jpg" width="200" height ="200" style="border: thin solid #000000;" />
               </div>
                 <br />

            </div>  <!--Fin: Quinta Columna-->

        </div>  <!--FIN: Muestra eventos recientes-->
     </div>
   </body>
</asp:Content>
