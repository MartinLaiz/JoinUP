<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Buscador.aspx.cs" Inherits="AplicacionWeb.Pagina_Buscador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div class="container" runat="server" style="background-color:#f1f1f1">
            <label class="control-label" style="padding-top:100px; font-size:35pt">Eventos</label>
            <div runat="server" style="margin-top : 20px">
                <label class="control-label">Nombre del evento:</label>
                <asp:TextBox runat="server" CssClass="form-control" id="buscaNombre" Width="400px" ></asp:TextBox>

                <label class="control-label" style="margin-top : 15px">Ciudad:</label>
                <asp:TextBox runat="server" CssClass="form-control" id="buscaCiudad" Width="400px"></asp:TextBox>

                <label class="control-label" style="margin-top : 15px">Categoria:</label>
                <asp:TextBox runat="server" CssClass="form-control" id="buscaCategoria" Width="400px"></asp:TextBox>

                <!--- Fecha --->
                <div style="float:left; margin-right: 20px">
                    <label class="control-label" style="margin-top : 15px">Dia:</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="buscaDia" TextMode="Number" Width="80px"></asp:TextBox>
                </div>
                <div style="float:left; margin-right: 20px">
                    <label class="control-label" style="margin-top : 15px">Mes:</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="buscaMes" TextMode="Number" Width="80px"></asp:TextBox>
                </div>
                <div style="float:left; margin-right: 20px">
                    <label class="control-label" style="margin-top : 15px">Año:</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="buscaAnio" TextMode="Number" Width="80px"></asp:TextBox>
                </div>
                <div runat="server" style="margin-top : 40px">
                    <asp:Button runat="server" CssClass="btn btn-primary" Text="Buscar" id="buscar" OnClick="cargar_eventos"/>
                </div>
                <div style="margin-top:30px; height:30px">
                    <div style="float:left; margin-top:10px; margin-bottom:10px">
                        <asp:RangeValidator ControlToValidate="buscaDia" runat="server" Type="Integer" ErrorMessage="Dia incorrecto" MinimumValue="01" MaximumValue="31"></asp:RangeValidator>
                    </div>
                    <div style="margin-left: 25px; float:left; margin-top:10px; margin-bottom:10px">
                        <asp:RangeValidator ControlToValidate="buscaMes" runat="server" Type="Integer" ErrorMessage="Mes incorrecto" MinimumValue="01" MaximumValue="12"></asp:RangeValidator>
                    </div>
                    <div style="margin-left: 25px; float:left; margin-top:10px; margin-bottom:10px">
                        <asp:RangeValidator ControlToValidate="buscaAnio" runat="server" Type="Integer" ErrorMessage="Año incorrecto" MinimumValue="0000" MaximumValue="9999"></asp:RangeValidator>
                    </div>
                </div>
                
                <!-- Fin Fecha -->
                
            </div>
            
            <div id="eventos_si" runat="server" style="margin-bottom:20px">
                <asp:DataList runat="server" ID="eventosSelecc">
                    <ItemTemplate>

                        <div style="float:left">
                            <asp:Image ID="Imagen" runat="server" ImageUrl='<%# Eval("Foto_evento") %>' CssClass="imagen_Event"/>
                        </div>


                        <div style="float:left" class="control-label">
                            <div>
                                <asp:Label ID="Titulo" runat="server" Text='<%# Eval("Nombre") %>' CssClass="control-label"></asp:Label>
                            </div>
                            <div>
                                <asp:Label ID="Descripcion" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div id="sinResult" runat="server" style="width:80%; text-align:center; margin-top:40px" class="alert alert-danger container" >
                <asp:Label runat="server" Text="No hay resultados para esa busqueda"></asp:Label>
            </div>
        </div>
    </form>

</asp:Content>
