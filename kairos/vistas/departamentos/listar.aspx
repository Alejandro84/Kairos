<%@ Page Title="" Language="C#" MasterPageFile="~/adminTemplate.Master" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="kairos.Views.departamentos.listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_departamento" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id_departamento" HeaderText="id_departamento" ReadOnly="True" SortExpression="id_departamento" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="id_sector" HeaderText="id_sector" SortExpression="id_sector" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kairosappConnectionString %>" SelectCommand="SELECT [id_departamento], [nombre], [id_sector] FROM [departamentos]"></asp:SqlDataSource>
    </form>
</asp:Content>
