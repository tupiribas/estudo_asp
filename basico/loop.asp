<% 
    i = 0
    While (i < 10) 
        response.write(i & "<br>")
        i = i + 1
    Wend

    response.write("<br>")
    for i = 0 to 5
        response.write(i & "<br>")
    next
%>
