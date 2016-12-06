<%@ Page Title="" Language="C#" MasterPageFile="~/adminTemplate.Master" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="kairos.indumentarias.listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_indumentaria" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_indumentaria" HeaderText="id_indumentaria" ReadOnly="True" SortExpression="id_indumentaria" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="valor_riesgo" HeaderText="valor_riesgo" SortExpression="valor_riesgo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kairosappConnectionString %>" SelectCommand="SELECT [id_indumentaria], [nombre], [valor_riesgo] FROM [indumentarias]"></asp:SqlDataSource>
    </form>
</asp:Content>
