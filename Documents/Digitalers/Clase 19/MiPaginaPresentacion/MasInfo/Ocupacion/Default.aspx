<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Sitio.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MiPaginaPresentacion.MasInfo.Ocupacion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>programo muy duro como un exclavos</p> <br />
    
    <h5>Contador con datos del viewState</h5>
    <asp:Label runat="server" ID="lblContadorViewState">0</asp:Label> <br />
    <asp:Button runat="server" ID="btnContarViewState" CssClass="btn btn-primary"  Text="Incrementar(viewState) " OnClick="btnContarViewState_Click" />
    
    <hr />
     <h5>Contador con datos en session</h5>
    <asp:Label runat="server" ID="lblContadorSession">0</asp:Label> <br />
    <asp:Button runat="server" ID="btnContarSession" CssClass="btn btn-primary"  Text="Incrementar(Session) " OnClick="btnContarSession_Click" /> 

     <hr />
     <h5>Contador con datos con cookies</h5>
    <asp:Label runat="server" ID="lblContadorCookies">0</asp:Label> <br />
    <asp:Button runat="server" ID="btnContarCookies" CssClass="btn btn-primary"  Text="Incrementar(Cookies) " OnClick="btnContarCookies_Click"   /> 

</asp:Content>
