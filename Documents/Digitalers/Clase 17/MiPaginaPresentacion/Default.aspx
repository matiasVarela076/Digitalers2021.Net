<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Sitio.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MiPaginaPresentacion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
     <div class="col -md-8"> <!--Md= cuando sea resolucion media cambia a una columna, y -8 es el tamaño de la columna-->
    
        <h5>¿Quien soy?</h5>
         <img class="img-fluid" src="imgs/messirve.jpg" />
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu turpis egestas pretium aenean pharetra magna ac placerat vestibulum. Lectus arcu bibendum at varius vel pharetra. Vulputate enim nulla aliquet porttitor lacus luctus accumsan. Enim facilisis gravida neque convallis a cras semper. Aenean vel elit scelerisque mauris pellentesque. Egestas dui id ornare arcu odio ut sem nulla pharetra. Leo duis ut diam quam nulla. Enim neque volutpat ac tincidunt vitae. Tempus urna et pharetra pharetra massa massa ultricies. Aliquam vestibulum morbi blandit cursus risus at ultrices. 
                Aenean euismod elementum nisi quis eleifend quam. Eget arcu dictum varius duis at.</p>
                <asp:Button runat="server" Text="Leer Mas" CssClass="btn btn-info" /> <!--boton asp para que genere un evento al tocar y meterle funcionalidad-->
                   <br />                                                     <!--CssClass = class de html css pero para asp, para que genere un evento-->
        </div>
        <div class="col-4">
            <h5>¿A que me dedico?</h5>
            
            <p>Dolor sit amet consectetur adipiscing elit ut aliquam. Mi proin sed libero enim sed faucibus turpis in. Ornare arcu odio ut sem nulla pharetra diam. Eget arcu dictum varius duis at consectetur lorem. Pulvinar etiam non quam lacus suspendisse. Nibh tortor id aliquet lectus proin. Vulputate ut pharetra sit amet aliquam id. Odio morbi quis commodo odio aenean sed adipiscing. Ultrices neque ornare aenean euismod elementum. Et malesuada fames ac turpis egestas sed tempus. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Turpis cursus in hac habitasse platea. A cras semper auctor neque vitae tempus quam pellentesque. Sit amet massa vitae tortor. Turpis massa tincidunt dui ut.</p>
            <asp:Button runat="server" Text="Leer Mas" CssClass="btn btn-info" />
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h5>¿Que experiencia tengo?</h5>
                <p>Semper viverra nam libero justo laoreet sit amet. Ut faucibus pulvinar elementum integer. Vulputate enim nulla aliquet porttitor lacus luctus accumsan. Morbi tincidunt ornare massa eget egestas. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. At erat pellentesque adipiscing commodo elit at. Et malesuada fames ac turpis egestas sed tempus. In nibh mauris cursus mattis. Purus faucibus ornare suspendisse sed nisi lacus. Scelerisque in dictum non consectetur a erat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent.</p>
                    <asp:Button runat="server" Text="Leer Mas" CssClass="btn btn-info" />    
            </div>
    </div>
    
    
</asp:Content>
