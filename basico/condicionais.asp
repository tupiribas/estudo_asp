<%
    hora = hour(now)
    if (hora <= 12) then
        response.write("Bom dia")
    elseif (hora >= 12 and hora <= 18) then
        response.write("Boa tarde")
    else 
        response.write("Boa noite")
    end if
%>