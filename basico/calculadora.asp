<form method="POST" action="calculadora.asp">
    <label>Calculadora</label><br>
    <input type="text" name="val1"><br><br>
    <select name="operacao">
        <option>SOMA</option>
        <option>SUBTRACAO</option>
        <option>MULTIPLICACAO</option>
        <option>DIVISAO</option>
    </select><br><br>
    <input type="text" name="val2">
    <input type="submit" value="=">
</form>

<%
    valor1 = CInt(Request.Form("val1"))
    valor2 = CInt(Request.Form("val2"))

    if (Request.Form("operacao") = "SOMA") then
        total = valor1 + valor2
    elseIf (Request.Form("operacao") = "SUBTRACAO") then
        total = valor1 - valor2
    elseIf (Request.Form("operacao") = "MULTIPLICACAO") then
        total = valor1 * valor2
    else 
        total = valor1 / valor2
    End If
%>

<b>Resposta: </b><%=(total)%>
