<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="EstructuraPagina.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                                                 <!--ContenPlaceHolderID es la master, el esqueleto de la pagina--> 
    esta es mi pagina de contacto
    <!--Forma 1 de linkear entre paginas -->
    
    <!--<a href="Contacto.aspx"></a>-->
    
    <!--forma 2-->
    <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx.cs">Ir al inicio</asp:HyperLink>

</asp:Content>
