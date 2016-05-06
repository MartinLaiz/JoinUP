<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Evento.aspx.cs" Inherits="AplicacionWeb.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--codigo evento a partir de la linea 6818-->
   <form id="Form1" method="post" runat="server">
     <div id="general">

           <div id="containerizq">
               <div id="imagenEven"><!--div donde va la imagen-->
                   <img src ="/imagenes/foto1.png" width="256" height ="256" />
               </div>

 
               <div id="DetallesEve"> <!--divsde la descripcion-->
                   <div id="LugarEve">
                       <asp:Panel ID="Panel5" runat="server">
                         <asp:Label ID="Label1" runat="server" Text="Lugar:"></asp:Label>
                            &nbsp;Alicante</asp:Panel>
                   </div>

                   <div id="FechaEve">
                           <asp:Label ID="Label3" runat="server" Text="Fecha del Evento:"></asp:Label>
                            &nbsp;19/02/2016 &nbsp;
                   </div>
                    
                   <div id="HoraEve">
                        <asp:Panel ID="Panel7" runat="server">
                            <asp:Label ID="Label5" runat="server" Text="Hora:"></asp:Label>
                             17:00</asp:Panel>
                   </div>

                   <div id="AsistentesEve">
                       <asp:Panel ID="Panel8" runat="server">
                         <asp:Label ID="Label4" runat="server" Text="Nº de Asistentes:"></asp:Label>
                         &nbsp;8 &nbsp; &nbsp;
                    </asp:Panel>

                   </div>

                   <div id ="botonesEve"><!--Botones asistir-->
                   
                   <ul>
                        <li><asp:Panel ID="Panel9" runat="server"> <!--Boton asistir-->
                            <asp:button runat="server" ID="Button5"  Text="Asistir" BackColor="#6C6A6A" BorderColor="#6C6A6A" BorderStyle="None" EnableTheming="True" ForeColor="White" />
                            &nbsp;
                             <br />
                            </asp:Panel>
                        </li>
                        <li><asp:Panel ID="Panel10" runat="server"> <!--Boton asistir-->
                            <asp:Button ID="Button6" runat="server" Text="No Asistir" BackColor="#6C6A6A" BorderColor="#6C6A6A" BorderStyle="None" EnableTheming="True" ForeColor="White" />
                            &nbsp;
                             <br />
                            </asp:Panel></li>
                        <li><asp:Panel ID="Panel11" runat="server"> <!--Boton asistir-->
                            <asp:Button ID="Button7" runat="server" Text="Comentarios" BackColor="#6C6A6A" BorderColor="#6C6A6A" BorderStyle="None" EnableTheming="True" ForeColor="White" />
                            &nbsp;
                             <br />
                            </asp:Panel></li>
                   </ul>

                   </div>


               </div><!--se cierra detalles-->

           
             </div> <!--se cierra el div izquierdo-->

         <div id="Centro">
             <div id="DescripcionEven">
                 <asp:Panel ID="Panel4" runat="server" BorderStyle="Solid" Height="400px">
                <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
                &nbsp;Esta en el Mar</asp:Panel>
             </div>

             <div id="ComentariosEven">
                 <asp:Panel ID="Panel6" runat="server" ScrollBars="None">
                 <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" Font-Size="Large" TextMode="MultiLine" Columns="50" Height="400px" BackColor="White" BorderColor="Black" BorderStyle="Solid" Width="800px"></asp:TextBox>
                 <br /> <br /> <asp:Button ID="Button4" runat="server" Text="Comentar" />
             </asp:Panel>
             </div>


         </div><!--se cierra el div central-->

    </div>
       </form>


</asp:Content>

