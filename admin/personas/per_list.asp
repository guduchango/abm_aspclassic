<%@ Language="VBScript" %>
<%
    set conn = CreateObject("ADODB.Connection") 
    conn.open Application("strconn") 
    set rs = conn.execute("select * from personas")  
%>
<!-- #include virtual ="layouts/principal/pri_head.asp" -->
<h1>Listado personas</h1>
<div class="pull-right">
    <a href="<%= Application("url_base")%>/admin/personas/per_create.asp" class="btn btn-primary btn-sm">Crear persona</a>
    <br>
    <br>
</div>

<table class="table">
    <tr><th>Id</th><th>Nombre</th><th>Apellido</th><th>DNI</th><th>Edad</th><th>Acción</th></tr>
    <% do while not rs.eof %>
    <tr>
        <td><%= rs("per_id")%></td>
        <td><%= rs("per_apellido") %></td>
        <td><%= rs("per_nombre") %></td>
        <td><%= rs("per_dni") %></td>
        <td><%= rs("per_fecha_nacimiento") %></td>
        <td>
            <a href="<%= Application("base_url")&"/admin/personas/per_edit.asp?per_id="&rs("per_id") %>" title="editar" class="glyphicon glyphicon-pencil"></a>&nbsp; 
            <a href="<%= Application("base_url")&"/admin/personas/per_action.asp?per_id="&rs("per_id") %>"  title="borrar" class="glyphicon glyphicon-trash"></a>&nbsp; 
        </td>
    </tr>
    <% rs.movenext %>
    <% loop %>
    <% rs.close: set rs = nothing  %>
    <% conn.close: set conn = nothing   %>
</table>
<div class="pull-right">
    <a  href="<%= Application("base_url")&"/inicio.asp"%>" class="btn btn-info btn-sm pull-rigth">Volver</a>
</div>
<br>
<br>

<!-- #include virtual ="layouts/principal/pri_footer.asp" -->
