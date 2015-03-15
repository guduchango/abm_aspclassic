<%@ Language="VBScript" %>
<%
    dim per_id
    per_id = request.querystring("per_id")

    set conn = CreateObject("ADODB.Connection") 
    conn.open Application("strconn") 
    set rs = conn.execute("select * from personas where per_id="&per_id)  
%>
<!-- #include virtual ="layouts/principal/pri_head.asp" -->
<h1>Crear persona</h1>
<form method="post" action="<%= Application("base_url") %>/admin/personas/per_action.asp">
  <div class="form-group">
    <label for="per_apellido">Apellido</label>
    <input type="text" class="form-control" value="<%= rs("per_apellido")%>" name="per_apellido" id="per_apellido" >
  </div>
  <div class="form-group">
    <label for="per_nombre">Nombre</label>
    <input type="text" class="form-control" value="<%= rs("per_nombre")%>" name="per_nombre" id="per_nombre" >
  </div>
  <div class="form-group">
    <label for="per_dni">DNI</label>
    <input type="text" class="form-control" value="<%= rs("per_dni")%>" name="per_dni" id="per_dni" >
  </div>
    <div class="form-group">
    <label for="per_fecha_nacimiento">Fecha nacimiento</label>
    <input type="text" class="form-control" value="<%= rs("per_fecha_nacimiento")%>" name="per_fecha_nacimiento" id="per_fecha_nacimiento">
  </div>
  <button type="submit" class="btn btn-default">Guardar</button>
    <input type="hidden" name="per_id" value="<%= per_id %>"> 
</form>
<div class="pull-right">
   <a  href="<%= Application("base_url")&"/admin/personas/per_list.asp"%>" class="btn btn-info btn-sm pull-rigth">Volver</a>
</div>
<br>
<br>
<!-- #include virtual ="layouts/principal/pri_footer.asp" -->
