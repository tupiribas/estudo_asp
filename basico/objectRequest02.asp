<br>
<a href="objectRequest02.asp?Curso=Curso ASP&Modulo=Curso ASP">Link Teste</a>

<%
    curso = Request.QueryString("Curso")
    modulo = Request.QueryString("Modulo")

    Response.write("<br>Curso:" & curso & "<br>Modulo: " & modulo)
%>