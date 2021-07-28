<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Sitio.Master" AutoEventWireup="true" CodeBehind="QuienSoy.aspx.cs" Inherits="MiPaginaPresentacion.MasterPages.MasInfo.QuienSoy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col">

    <h5>¿Quien soy</h5>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit duis tristique sollicitudin nibh sit amet commodo nulla. Rhoncus mattis rhoncus urna neque viverra. Montes nascetur ridiculus mus mauris. Eu facilisis sed odio morbi quis commodo odio aenean sed. Tincidunt ornare massa eget egestas purus viverra accumsan in. Dignissim sodales ut eu sem integer vitae justo. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Eget mi proin sed libero enim. Quis auctor elit sed vulputate. Vestibulum sed arcu non odio euismod lacinia at quis. Id cursus metus aliquam eleifend mi in nulla. Turpis egestas pretium aenean pharetra. Et tortor at risus viverra.</p>
    
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas pretium aenean pharetra magna ac. Purus viverra accumsan in nisl nisi. Sociis natoque penatibus et magnis dis parturient. Integer quis auctor elit sed vulputate mi sit. Leo integer malesuada nunc vel. Orci nulla pellentesque dignissim enim sit amet venenatis. Vitae et leo duis ut diam quam nulla porttitor. Quis hendrerit dolor magna eget est. Mauris vitae ultricies leo integer malesuada nunc vel risus. Elit eget gravida cum sociis. Placerat in egestas erat imperdiet. Mauris cursus mattis molestie a iaculis.</p>

    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas pretium aenean pharetra magna ac. Purus viverra accumsan in nisl nisi. Sociis natoque penatibus et magnis dis parturient. Integer quis auctor elit sed vulputate mi sit. Leo integer malesuada nunc vel. Orci nulla pellentesque dignissim enim sit amet venenatis. Vitae et leo duis ut diam quam nulla porttitor. Quis hendrerit dolor magna eget est. Mauris vitae ultricies leo integer malesuada nunc vel risus. Elit eget gravida cum sociis. Placerat in egestas erat imperdiet. Mauris cursus mattis molestie a iaculis.</p>

        </div>
    </div>
    
    <hr />

    <div class="row">
        <div class="col">
    <asp:ListView runat="server" ID="lstComentarios">
      
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
        
        </LayoutTemplate>
        
        <ItemTemplate>
            <div class="card" style="width: 18rem;">
                  <div class="card-body">
                    <h5 class="card-title"><%#Eval("Nombre") %></h5>             
                    <p class="card-text"><%#Eval("Texto") %></p>                 
  </div>
</div>
        </ItemTemplate>
    </asp:ListView>
  
        </div>
    </div>

    <hr /> <!--linea-->
    <div class="row">
        <div class="col">
            <!--Tarea: ver como hacer para que los formularios no aberquen
                todo el ancho. pista: usar las capacidades de las grillas(rows,col) -->
            <div class="form-group">
                <label>Nombre</label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control"></asp:TextBox>
                </div>
                
                <div class="form-group">
                    <label>Comentario</label>
                    <asp:TextBox runat="server" ID="txtComentario" CssClass="form-control" TextMode="Multiline" Rows="5"></asp:TextBox>
                    <asp:Button runat="server" ID="btnGuardar" CssClass="btn btn-success" text="agregar Comentario" OnClick="btnGuardar_Click" /> 
                                                                                    <!--con onclick crear un evento en el codigo(metodo al hacer click en el boton)-->
            </div>
        </div>
    </div>

</asp:Content>
