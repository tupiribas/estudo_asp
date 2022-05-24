<!--O método post é a melhor opção pois os dados salvos não ficam salvos no histórico-->
<form method="POST" action="objectRequest03.asp">
    <label>Nome</label><br>
    <input type="text" name="nome"><br>
    <label>Email</label><br>
    <input type="text" name="email"><br><br>

    <select name="cliente">
        <option>Maria</option>
        <option>Joao</option>
        <option>Pedro</option>
    </select><br><br>

    <input type="radio" name="sexo" value="Masculino">Masculino<br>
    <input type="radio" name="sexo" value="Feminino">Feminino<br>

    <input type="submit" value="Enviar">
</form>

<%
    nome = Request.Form("nome")
    email = Request.Form("email")
    sexo = Request.Form("sexo")
    cliente = Request.Form("cliente")

    response.write("<br>Nome do Funcionario: " & nome & "<br>Email: " & email & "<br>Sexo: " & sexo & "<br>Cliente: " & cliente)
%>