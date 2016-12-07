<%@ Page Title="" Language="C#" MasterPageFile="~/adminTemplate.Master" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="kairos.sectores.listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <br />
        <br />

    <div class="container">
        <div class="row">
            <div class="col-md-12">

            
    <form id="form1" runat="server">
        <h2>Sectores en el sistema
        <asp:Button ID="Button1" runat="server" Text="Nuevo sector" OnClick="Button1_Click" CssClass="btn btn-success pull-right"/>
        </h2>
        <hr />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_sector" DataSourceID="ObjectDataSource1" CssClass="table table-striped table-bordered">
            <Columns>
                
                <asp:BoundField DataField="id_sector" HeaderText="id_sector" ReadOnly="True" SortExpression="id_sector" />
                <asp:BoundField DataField="punto_inicio" HeaderText="punto_inicio" SortExpression="punto_inicio" />
                <asp:BoundField DataField="punto_fin" HeaderText="punto_fin" SortExpression="punto_fin" />
                <asp:BoundField DataField="distancia" HeaderText="distancia" SortExpression="distancia" />
                <asp:BoundField DataField="accidentabilidad" HeaderText="accidentabilidad" SortExpression="accidentabilidad" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn btn-primary btn-xs" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="kairos.KairosdsTableAdapters.sectoresTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id_sector" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_sector" Type="Int32" />
                <asp:Parameter Name="punto_inicio" Type="String" />
                <asp:Parameter Name="punto_fin" Type="String" />
                <asp:Parameter Name="distancia" Type="String" />
                <asp:Parameter Name="accidentabilidad" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="punto_inicio" Type="String" />
                <asp:Parameter Name="punto_fin" Type="String" />
                <asp:Parameter Name="distancia" Type="String" />
                <asp:Parameter Name="accidentabilidad" Type="Int32" />
                <asp:Parameter Name="Original_id_sector" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
                </div>
        </div>
        </div>
</asp:Content>
