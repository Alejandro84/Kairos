

<%@ Page Title="" Language="C#" MasterPageFile="~/adminTemplate.Master" AutoEventWireup="true" CodeBehind="nueva.aspx.cs" Inherits="kairos.sectores.nueva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container" style="padding-top:60px;">
        <h1>Agregar Sector</h1>
        <hr />

        <form runat="server">
            <div class="form-group">
                <label for="id_sector">ID Sector</label>
                <asp:TextBox ID="id_sector" runat="server"></asp:TextBox>

                 <label for="punto_inicio">Punto Inicio</label>
                <asp:TextBox ID="punto_inicio" runat="server"></asp:TextBox>

                <label for="punto_fin">Punto Fin</label>
                <asp:TextBox ID="punto_fin" runat="server"></asp:TextBox>

                <label for="distancia">Distancia</label>
                <asp:TextBox ID="distancia" runat="server"></asp:TextBox>

                <label for="accidentabilidad">Accidentabilidad</label>
                <asp:TextBox ID="accidentabilidad" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="AgregarSector" runat="server" Text="Button" OnClick="AgregarSector_Click" />
            </div>
        </form>
    </div>
</asp:Content>
