<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="kairos.login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <input id="txtUsuario" type="text" /><br />
        <input id="txtClave" type="password" /></div>
        <asp:Button ID="ingresar" runat="server" Text="Ingresar" OnClick="ingresar_Click" />
    </form>
</body>
</html>
