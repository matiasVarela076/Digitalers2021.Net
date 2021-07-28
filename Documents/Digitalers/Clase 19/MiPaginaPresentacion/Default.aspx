<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Sitio.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MiPaginaPresentacion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
     <div class="col -md-8"> <!--Md= cuando sea resolucion media cambia a una columna, y -8 es el tamaño de la columna-->
        <h5>¿Quien soy?</h5>
            <div class="row">             
                    <div class="col-md-6">
                 <img class="img-fluid" src="imgs/messirve.jpg" />
                     </div>
                 <div class="col-md-6">     
                        <p>Semper viverra nam libero justo laoreet sit amet. Ut faucibus pulvinar elementum integer. Vulputate enim nulla aliquet porttitor lacus luctus accumsan. Morbi tincidunt ornare massa eget egestas. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. At erat pellentesque adipiscing commodo elit at. Et malesuada fames ac turpis egestas sed tempus. In nibh mauris cursus mattis. Purus faucibus ornare suspendisse sed nisi lacus. Scelerisque in dictum non consectetur a erat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent.</p>
                        <!--<--a href="MasInfo/QuienSoy.aspx" class="btn btn-info">Leer Más</a>-->
                           <asp:Button runat="server" Text="Leer Mas" ID="redirigirQuienSoy" CssClass="btn btn-info" OnClick="redirigirQuienSoy_Click" />

         </div>      
      </div>
                                                                   <!--CssClass = class de html css pero para asp, para que genere un evento-->
   </div>
                                                            <!--Clase btn info se parece a un boton pero es un link
                                                            <!--boton asp para que genere un evento al tocar y meterle funcionalidad-->                                                                          
        <div class="col-md-4">
            <h5>¿A que me dedico?</h5>
            
            <p>Dolor sit amet consectetur adipiscing elit ut aliquam. Mi proin sed libero enim sed faucibus turpis in. Ornare arcu odio ut sem nulla pharetra diam. Eget arcu dictum varius duis at consectetur lorem. Pulvinar etiam non quam lacus suspendisse. Nibh tortor id aliquet lectus proin. Vulputate ut pharetra sit amet aliquam id. Odio morbi quis commodo odio aenean sed adipiscing. Ultrices neque ornare aenean euismod elementum. Et malesuada fames ac turpis egestas sed tempus. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Turpis cursus in hac habitasse platea. A cras semper auctor neque vitae tempus quam pellentesque. Sit amet massa vitae tortor. Turpis massa tincidunt dui ut.</p>
            <a href="MasInfo/Ocupacion/Default.aspx" class="btn btn-info">Leer Mas</a>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h5>¿Que experiencia tengo?</h5>
                <p>Semper viverra nam libero justo laoreet sit amet. Ut faucibus pulvinar elementum integer. Vulputate enim nulla aliquet porttitor lacus luctus accumsan. Morbi tincidunt ornare massa eget egestas. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. At erat pellentesque adipiscing commodo elit at. Et malesuada fames ac turpis egestas sed tempus. In nibh mauris cursus mattis. Purus faucibus ornare suspendisse sed nisi lacus. Scelerisque in dictum non consectetur a erat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent.</p>
                    <asp:Button runat="server" Text="Leer Mas" CssClass="btn btn-info" />    
            </div>
        <div class="col">
             <h5>¿En que proyetos participe?</h5>
            <asp:ListView runat="server" ID="lstProyectos">
            <LayoutTemplate>
                <ul>
                  <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>

                </ul>
            </LayoutTemplate> 
                
                <ItemTemplate>
                   
                       <li><%# Container.DataItem %></li>
                   
             </ItemTemplate>

        </asp:ListView>
      </div>
    </div>
    
    
</asp:Content>
