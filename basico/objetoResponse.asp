<!--Não precisa tipar uma variável instanciada-->
<%
    texto = "Curso ASP"
    texto2 = "Curso ASP para dois"

    response.write(texto &" "& texto2)
    response.write("</br>" & texto &" </br> "& texto2)
    response.write("</br>Data:" & date())
%>