<%@ Page Title="" Language="C#" MasterPageFile="~/adminTemplate.Master" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="kairos.estaciones.listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_estacion" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id_estacion" HeaderText="id_estacion" ReadOnly="True" SortExpression="id_estacion" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kairosappConnectionString %>" SelectCommand="SELECT [id_estacion], [nombre] FROM [estaciones]"></asp:SqlDataSource>
    </form>
</asp:Content>
