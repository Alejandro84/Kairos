<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>KAIROS APP | Login </title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="col-md-4 col-md-offset-4">
            
            <div class="loginHeader">
                <h2>Kairos APP - Panel de Control</h2>    
            </div>

            <% if (failLogin)
                { %>
            <div class="alert alert-danger">
                <strong>Error!</strong> nombre de usuario o contraseña incorrectos!
            </div>
            <% } %>

            <div class="form-group">
                <caption>Usuario</caption>
                <asp:TextBox ID="TextBoxUsuario" runat="server" CssClass="form-control"></asp:TextBox>                
            </div>

            <div class="form-group">
                <caption>Password</caption>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" CssClass="form-control"  ></asp:TextBox>                
            </div>

            <div class="form-group">
                <asp:Button ID="LoginButton" runat="server" Text="Iniciar Sesión" OnClick="LoginButton_Click" CssClass="btn btn-block btn-success" />
            </div>
            
        </div>
    </div>
        
    </form>
</body>
</html>
