<%@ Language="VBScript" %>
<!-- #include virtual ="layouts/principal/pri_head.asp" -->
<h1>Crear persona</h1>
<form method="post" action="<%= Application("base_url") %>/admin/personas/per_action.asp">
  <div class="form-group">
    <label for="per_apellido">Apellido</label>
    <input type="text" class="form-control" name="per_apellido" id="per_apellido" placeholder="Ej. Fernandez">
  </div>
  <div class="form-group">
    <label for="per_nombre">Nombre</label>
    <input type="text" class="form-control" name="per_nombre" id="per_nombre" placeholder="Ej. Lucas">
  </div>
  <div class="form-group">
    <label for="per_dni">DNI</label>
    <input type="text" class="form-control" name="per_dni" id="per_dni" placeholder="Ej. 32793622">
  </div>
    <div class="form-group">
    <label for="per_fecha_nacimiento">Fecha nacimiento</label>
    <input type="text" class="form-control" name="per_fecha_nacimiento" id="per_fecha_nacimiento" placeholder="Ej. 19-07-1987">
  </div>
  <button type="submit" class="btn btn-default">Guardar</button>
    <input type="hidden" value="0" name="per_id">
</form>
<div class="pull-right">
    <a  href="<%= Application("base_url")&"/admin/personas/per_list.asp"%>" class="btn btn-info btn-sm pull-rigth">Volver</a>
</div>
<br>
<br>
<!-- #include virtual ="layouts/principal/pri_footer.asp" -->
