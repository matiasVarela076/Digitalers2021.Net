<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormularioContacto.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>nombre</label>
            <asp:textbox runat="server" ID="txtNombre"></asp:textbox> <br />

            <label>Apellido</label>
            <asp:textbox runat="server" ID="txtApellido"></asp:textbox> <br />
            
            <label>Email</label>
            <asp:textbox runat="server" ID="txtMail"></asp:textbox> <br />

            <asp:Button runat="server" ID="btnGuardar"  OnClick="btnGuardar_Click" Text="enviar datos"></asp:Button> <br />

            
        </div>
    </form>
</body>
</html>
