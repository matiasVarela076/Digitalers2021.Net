<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pruebaWebASP1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <h1>Estas en mi pagina guacho</h1>
        
        <div>
        <% int i = 100;
                Response.Write(i);%>
            <br />   
        <!--response es para mostrar algo -->
            <asp:Label runat="server" ID="lblSaludo"></asp:Label>
            <hr />

            <asp:Textbox runat="server" ID="txtNombre"></asp:Textbox><br/>
            <asp:Button runat="server" ID="btnSaludar" Text="Saludar" OnClick="btnSaludar_Click" /> <br/>
            <asp:Label runat="server" ID="saludoPersona"></asp:Label>
        </div>
    </form>
</body>
</html>
