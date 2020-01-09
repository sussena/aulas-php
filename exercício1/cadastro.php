<!DOCTYPE html>
<html>
	<head>
	<meta http-equip="content-type" content="text/html;charset=UTF-">
	<title>Cadastro</title>
	</head>
	<body>
	<h3>Cadastro de produto</h3>
	<form action = "gravar.php" method="post">
	Código:
	<br>
	<input type ="number" name = "código"/>
	<br><br>
	Nome:
	<br>
	<input type ="text" name = "nome"/>
	<br><br>
	Descrição:
	<br>
	<input type ="text" name = "descrição"/>
	<br><br>
	Perecível: 
	<input type="radio" name="color" value="sim">Sim
	<input type="radio" name="color" value="não">Não
	<br><br>
	Valor:
	<br>
	<input type ="text" name = "valor"/>
	<br><br>
	Quantidade:
	<br>
	<input type ="text" name = "quantidade"/>
	</select>
	<br><br>
	<input type= "submit" value ="Cadastrar">
	<input type= "reset" value ="Limpar campo">
	
	</form>
	</body>
	
</html>
