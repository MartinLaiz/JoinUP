<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicacionWeb.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form1" method="post" runat="server">
      <div id="generalDefault">
          
          <!--Imagen de globitos--> 
         <div id= "Foto")">
              <a href="http://localhost:1247/Crear.aspx" title="Crear Evento" itemprop="url" style="width: 800px; height: 800px">
                 <img src="Images/ce_fondo.jpg" height ="300" style="border: thin solid #000000; width: 1097px;" />
                  
              </a>

          </div>  <!--Fin: Imagen de globitos-->

         <div id="Filtro">  <!--BUSCADOR-->
                <asp:Label ID="Label3" runat="server" Text="Nombre del Evento:" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="buscaNombre" runat="server" TextMode="Search" Font-Size="Medium"></asp:TextBox>
             <br />  <br /> 
             <asp:Label ID="Label1" runat="server" Text="Dia:" ForeColor="White"></asp:Label>
                 <asp:TextBox ID="buscaDia" runat="server" TextMode="Number" Width="80px"></asp:TextBox>
             &nbsp;&nbsp;
             <asp:Label ID="Label5" runat="server" Text="Mes:" ForeColor="White"></asp:Label>
                 <asp:TextBox ID="buscaMes" runat="server" TextMode="Number" Width="80px"></asp:TextBox> 
             &nbsp;&nbsp;
             <asp:Label ID="Label21" runat="server" Text="Año:" ForeColor="White"></asp:Label>
                 <asp:TextBox ID="buscaAnio" runat="server" TextMode="Number" Width="80px"></asp:TextBox>  
                    
         <br />  <br /> 
                 <asp:Label ID="Label2" runat="server" Text="Ciudad:" CssClass="right " ForeColor="White"></asp:Label>
                     <asp:TextBox ID="buscaCiudad" runat="server" TextMode="SingleLine" ></asp:TextBox> 
                    <!-- <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Small" ></asp:DropDownList> -->
             
             <!--<asp:Label ID="Label20" runat="server" Text="Categoria:" CssClass="right " ForeColor="White"></asp:Label>
                     <asp:TextBox ID="buscaCategoria" runat="server" TextMode="SingleLine" ></asp:TextBox> -->
          </div>
         
         <br />

         <div id="Boton">
             <asp:Button ID="Buscar" runat="server" Text="Buscar" OnClick="cargar_eventos"/>
            </div>  <!--fIN: BUSCADOR-->  

          <!--Muestra Categorias-->
         <div id="TodasImagenes">
             <div class="Columna" id="uno">  <!--Primera Columna-->
                 <div id="img1"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label17" runat="server" Text="Deportes" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                     <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="http://oceanfantasy.es/wp-content/uploads/2016/01/futbol1.jpg"
                          Height="200" Width="200" title="Deportes"  CommandArgument="Deporte" CommandName="Categoria" OnCommand="cargarEventos"/>
                    
                     
                      </div>
                 <br />
                 <div id="img2"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label18" runat="server" Text="Baile" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                     <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="http://sprites.comohacerpara.com/img/10893a-abrir-escuela-danzas-baile.jpg"
                          Height="200" Width="200" title="Baile"  CommandArgument="Baile" CommandName="Categoria" OnCommand="cargarEventos"/>
                     
                 </div>
                 <br />
                 <div id="img3"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label19" runat="server" Text="Naturaleza" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                      <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="http://www.cdn.uolala.com/getimage.ashx?width=730&q=70&src=/event-covers/b-mindfulness-y-naturaleza-20160210235103157-915fdf.jpg"
                          Height="200" Width="200" title="Deporte"  CommandArgument="Deporte" CommandName="Naturaleza" OnCommand="cargarEventos"/>
                   
                 </div>
                 <br />

            </div>    <!--Fin:Primera Columna-->

             <div class="Columna" id="dos">  <!--Segunda Columna-->
                  <div id="img4"><!--div donde va la imagen-->
                        <div id="check">
                         <asp:Label ID="Label16" runat="server" Text="Tecnologia" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                      <br />

                      <asp:ImageButton ID="ImageButton4" runat="server"  ImageUrl="http://www.pmartorell.com/wp-content/uploads/2015/11/tecnologia.jpg"
                          Height="200" Width="200" title="Tecnologia"  CommandArgument="Tecnologia" CommandName="Categoria" OnCommand="cargarEventos"/>
                   
                      </div>
                 <br />
                 <div id="img5"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label15" runat="server" Text="Arte" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                     <asp:ImageButton ID="ImageButton5" runat="server"  ImageUrl="https://image.freepik.com/vector-gratis/arte-realista-y-la-cubierta-ilusion-foto_766699.jpg"
                          Height="200" Width="200" title="Arte"  CommandArgument="Arte" CommandName="Categoria" OnCommand="cargarEventos"/>
                  
                      </div>
                 <br />
                 <div id="img6"><!--div donde va la imagen--> 
                       <div id="check">
                         <asp:Label ID="Label14" runat="server" Text="Gastronomia" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                      <asp:ImageButton ID="ImageButton6" runat="server"  ImageUrl="http://www.olivasingular.com/wp-content/uploads/2014/04/Chef-cocinando-oliva-OlivaSingular.jpg"
                          Height="200" Width="200" title="Gastronomia"  CommandArgument="Gastronomia" CommandName="Categoria" OnCommand="cargarEventos"/>
                    
                 </div>
                 <br />

            </div>  <!--Fin:Segunda Columna-->

             <div class="Columna" id="tres">  <!--Tercera Columna-->
                   <div id="img7"><!--div donde va la imagen-->   
                         <div id="check">
                         <asp:Label ID="Label13" runat="server" Text="Fotografia" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                       <br />

                        <asp:ImageButton ID="ImageButton7" runat="server"  ImageUrl="http://shoppermagazine.es/wp-content/uploads/2016/02/fotografiajpg.jpg"
                          Height="200" Width="200" title="Fotografia"  CommandArgument="Fotografia" CommandName="Categoria" OnCommand="cargarEventos"/>
                   
                   </div>
                 <br />
                 <div id="img8"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label12" runat="server" Text="Cine" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                      <asp:ImageButton ID="ImageButton8" runat="server"  ImageUrl="http://i1.wp.com/hipertextual.com/files/2015/08/cine-estrenos.jpg?resize=610%2C371"
                          Height="200" Width="200" title="Cine"  CommandArgument="Cine" CommandName="Categoria" OnCommand="cargarEventos"/>
               
                 </div>
                 <br />
                 <div id="img9"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label11" runat="server" Text="Belleza" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                     <asp:ImageButton ID="ImageButton9" runat="server"  ImageUrl="http://www.belleza-moda.com/wp-content/themes/bellezamoda/images/BellezaModaLogo2.png"
                          Height="200" Width="200" title="Belleza"  CommandArgument="Belleza" CommandName="Categoria" OnCommand="cargarEventos"/>

                     </div>
                 <br />

            </div><!--Fin:Tercera Columna-->

             <div class="Columna" id="cuatro">  <!--Cuarta Columna-->
                   <div id="img10"><!--div donde va la imagen-->
                         <div id="check">
                         <asp:Label ID="Label10" runat="server" Text="Motor" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                       <br />

                       <asp:ImageButton ID="ImageButton10" runat="server"  ImageUrl="https://www.yosoyaccionista.santander.com/Files/tbArticulo/max_img20150326121211.jpg"
                          Height="200" Width="200" title="Motor"  CommandArgument="Motor" CommandName="Categoria" OnCommand="cargarEventos"/>
                 
                   </div>
                 <br />
                 <div id="img11"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label9" runat="server" Text="Escritura" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                      <asp:ImageButton ID="ImageButton11" runat="server"  ImageUrl="http://conexiones.digital/wp-content/uploads/2015/03/1148005_18738305.jpg"
                          Height="200" Width="200" title="Escritura"  CommandArgument="Escritura" CommandName="Categoria" OnCommand="cargarEventos"/>
                     
                 </div>
                 <br />
                 <div id="img12"><!--div donde va la imagen-->
                       <div id="check">
                         <asp:Label ID="Label8" runat="server" Text="Viajes" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                     <asp:ImageButton ID="ImageButton12" runat="server"  ImageUrl="http://www.lisemur.es/attachments/Image/medioambiente_1.jpg?template=generic"
                          Height="200" Width="200" title="Viajes"  CommandArgument="Viajes" CommandName="Categoria" OnCommand="cargarEventos"/>
                   
                      </div>
                 <br />

            </div>  <!--Fin:Cuarta Columna-->

             <div class="Columna" id="cinco">  <!--Quinta Columna-->
                   <div id="img13"><!--div donde va la imagen-->
                         <div id="check">
                         <asp:Label ID="Label7" runat="server" Text="Fiesta" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                       <br />

                       <asp:ImageButton ID="ImageButton13" runat="server"  ImageUrl="https://i.ytimg.com/vi/cm1KsqcmU3s/hqdefault.jpg"
                          Height="200" Width="200" title="Fiesta"  CommandArgument="Fiesta" CommandName="Categoria" OnCommand="cargarEventos"/>
                   
                   </div>
                 <br />
                 <div id="img14"><!--div donde va la imagen-->
                     <div id="check">
                         <asp:Label ID="Label6" runat="server" Text="Musica" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                     <asp:ImageButton ID="ImageButton14" runat="server"  ImageUrl="http://multimedia.mmc.com.do/multimedia/cdn_uploads/2015/08/Los-16-hechos-m%C3%A1s-decepcionantes-de-la-historia-de-la-m%C3%BAsica.jpg"
                          Height="200" Width="200" title="Musica"  CommandArgument="Musica" CommandName="Categoria" OnCommand="cargarEventos"/>
                   
                 </div>
                 <br />
                 <div id="img15"><!--div donde va la imagen-->   
                     <div id="check">
                         <asp:Label ID="Label4" runat="server" Text="Otros" Font-Size="Large" ForeColor="White"></asp:Label>
                        </div>
                     <br />

                      <asp:ImageButton ID="ImageButton15" runat="server"  ImageUrl="http://www.ica-grupo.com/docs/clientes/26.jpg"
                          Height="200" Width="200" title="Otros"  CommandArgument="Otros" CommandName="Categoria" OnCommand="cargarEventos"/>

                      </div>
                 <br />

            </div>  <!--Fin: Quinta Columna-->
        </div>  <!--FIN: Muestra Categorias-->
     </div>
         
         </form>
</asp:Content>
