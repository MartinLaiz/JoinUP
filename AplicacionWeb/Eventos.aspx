<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="AplicacionWeb.Formulario_web17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="container" runat="server" style="background-color:#f1f1f1">
            <label class="control-label" style="padding-top:100px; font-size:35pt">Eventos</label>
            <div style="margin-top : 20px;margin-bottom:20px">
                <label class="control-label">Nombre del evento:</label>
                <asp:TextBox runat="server" CssClass="form-control" id="buscaNombre" Width="400px" ></asp:TextBox>
                <label class="control-label" style="margin-top : 15px">Ciudad:</label>
                <asp:TextBox runat="server" CssClass="form-control" id="buscaCiudad" Width="400px"></asp:TextBox>
                <label class="control-label" style="margin-top : 15px">Categoria:</label>
                <asp:TextBox runat="server" CssClass="form-control" id="buscaCategoria" Width="400px"></asp:TextBox>
                <div style="margin-top : 15px">
                    <asp:Button runat="server" CssClass="btn btn-primary" Text="Buscar!" id="buscar"/>
                </div>
            </div>
            
            <div id="eventos_si" runat="server" style="margin-bottom:20px">
                <asp:GridView runat="server" ID="eventosSelecc" AutoGenerateColumns="False" AutoGenerateSelectButton="true" >
                    <Columns>
                        <asp:BoundField DataField="Foto_evento" HeaderText="Foto del evento"   />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre del evento"   />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion"   />
                    </Columns>
                </asp:GridView>
            </div>
            <div id="error" runat="server" style="width:80%; text-align:center" class="alert alert-danger container" >
                <asp:Label runat="server" Text="Selecciona algún campo para la busqueda"></asp:Label>
            </div>
        </div>
    </form>
</asp:Content>
