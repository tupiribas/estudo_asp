<!--Calcular a quantidade de dias-->
<form method="POST" action="funcao.asp">
    <label>Data</label><br>
    <input type="date" name="data-completa"><br>
    <label>Numero</label><br>
    <input type="number" name="valor"><br>

    <input type="submit" value="Enviar">
</form>

<%
    data = Request.Form("data-completa")
    valor = Request.Form("valor")

    ' Cdata converte o tipo para data
    data = CDate(data)

    function mostrarDiaDaSemana(dataDaSemana)
        ' Cdata converte o tipo para data
        dataDaSemana = Weekday(dataDaSemana)
        Select Case dataDaSemana
        Case "1" 
            diaDaSemana = "Domingo"
        Case "2"
            diaDaSemana = "Segunda-Feira"
        Case "3" 
            diaDaSemana = "Terca-Feira"
        Case "4" 
            diaDaSemana = "Quarta-Feira"
        Case "5"
            diaDaSemana = "Quinta-Feira"
        Case "6"
            diaDaSemana = "Sexta-Feira"
        Case "7"
            diaDaSemana = "Sabado"
        End Select
        response.write(diaDaSemana)
    End Function
%>

<p>Data: <%=(data)%><p>
<p>Data: <%=(mostrarDiaDaSemana(dataV))%><p>
<p>Resultado: <%=(data + valor)%><p>
