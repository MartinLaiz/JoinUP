<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="AplicacionWeb.Formulario_web17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div class="container" runat="server" style="background-color:#f1f1f1">
            <label class="control-label" style="padding-top:100px; font-size:35pt">Eventos</label>
            <div runat="server" style="margin-top : 20px;margin-bottom:50px">
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
                <div style="float:left; margin-top:10px; margin-bottom:10px">
                    <asp:RangeValidator ControlToValidate="buscaDia" runat="server" Type="Integer" ErrorMessage="Dia incorrecto" MinimumValue="01" MaximumValue="31"></asp:RangeValidator>
                </div>
                <div style="margin-left: 25px; float:left; margin-top:10px; margin-bottom:10px">
                    <asp:RangeValidator ControlToValidate="buscaMes" runat="server" Type="Integer" ErrorMessage="Mes incorrecto" MinimumValue="01" MaximumValue="12"></asp:RangeValidator>
                </div>
                <div style="margin-left: 25px; float:left; margin-top:10px; margin-bottom:10px">
                    <asp:RangeValidator ControlToValidate="buscaAnio" runat="server" Type="Integer" ErrorMessage="Año incorrecto" MinimumValue="2016" MaximumValue="9999"></asp:RangeValidator>
                </div>
                <!-- Fin Fecha -->
                
            </div>
            
            <div id="eventos_si" runat="server" style="margin-bottom:20px">
                <asp:GridView runat="server" ID="eventosSelecc" AutoGenerateColumns="False" AutoGenerateSelectButton="true" CssClass="table table-bordered" >
                    <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#ffffcc" />
                    <EmptyDataRowStyle forecolor="Red" CssClass="table table-bordered" />
                    
                    <Columns> 
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="70px">
                            <ItemTemplate>
                                <asp:ImageButton ID="imagen" runat="server" Width="200px"  />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Foto_evento" HeaderText="Foto del evento"   />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre del evento"   />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion"   />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha del evento"   />
                        <asp:BoundField DataField="NomCategoria" HeaderText="Categoria"   />
                    </Columns>
                </asp:GridView>
            </div>
            <div id="error" runat="server" style="width:80%; text-align:center; margin-top:40px" class="alert alert-danger container" >
                <asp:Label runat="server" Text="Selecciona algún campo para la busqueda"></asp:Label>
            </div>
            <div id="sinResult" runat="server" style="width:80%; text-align:center; margin-top:40px" class="alert alert-danger container" >
                <asp:Label runat="server" Text="No hay resultados para esa busqueda"></asp:Label>
            </div>
        </div>
    </form>
</asp:Content>
