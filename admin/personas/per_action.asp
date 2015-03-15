<%
    dim per_id,per_nombre, per_apellido, per_dni, per_fecha_nacimiento, sql    

    'si viene por post
    if(request.form()<>"") then
    per_id = request.form("per_id")
    per_nombre = trim(request.form("per_apellido"))
    per_apellido = trim(request.form("per_nombre"))
    per_dni = trim(request.form("per_dni"))
    per_fecha_nacimiento = trim(request.form("per_fecha_nacimiento"))

    if(per_id<>0) then
    sql = "update personas set"
		sql = sql & " per_apellido = '" & per_apellido & "'"
		sql = sql & ", per_nombre = '" & per_nombre & "'"
		sql = sql & ", per_dni = '" & per_dni & "'"
		sql = sql & ", per_fecha_nacimiento = '" & per_fecha_nacimiento & "'"
		sql = sql & " where per_id = " & per_id 
    else
    sql = "insert into personas ("
		sql = sql & "per_apellido "
		sql = sql & ", per_nombre"
		sql = sql & ", per_dni"
		sql = sql & ", per_fecha_nacimiento"																							
		sql = sql & ") VALUES ("
		sql = sql & "'" & per_nombre & "'"
		sql = sql & ", '" & per_apellido & "'"
		sql = sql & ", '" & per_dni & "'"
		sql = sql & ", '" & per_fecha_nacimiento & "'"						
		sql = sql & ")"
    end if

    set conn = CreateObject("ADODB.Connection") 
    conn.open Application("strconn") 
    conn.execute(sql)  
    conn.close: set conn = nothing 

    end if
    
    'si viene por get
    if (request.querystring()<>"") then
    per_id = request.querystring("per_id")
    sql = "delete from personas where per_id="&per_id
    set conn = CreateObject("ADODB.Connection") 
    conn.open Application("strconn") 
    conn.execute(sql)  
    conn.close: set conn = nothing 
    end if

    response.redirect (Application("base_url")&"/admin/personas/per_list.asp")
%>