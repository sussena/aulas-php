<!DOCTYPE html>
<html>
	<head>
	<meta http-equip="content-type" content="text/html;charset=UTF-">
	<title> Cadastro de cliente</title>
	</head>
	<body>
	<h3>Sistema de cliente</h3>
	<a href="consulta.php">Consulta Cliente</a>
	<form action = "gravar.php" method="post">
	Nome..:
	<br>
	<input type ="text" name = "nome"/>
	<br><br>
	E-mail..:
	<br>
	<input type ="text" name = "email"/>
	<br><br>
	Idade..:
	<br>
	<input type ="text" name = "idade"/>
	<br><br>
	Estado Civil
	<select name = "estado">
	<option value = "">selecione --</option>
	<option value = "casado">casado</option>
	<option value = "solteiro">solteiro</option>
	<option value = "divorciado">divorciado</option>
	<option value = "viuvo">viuvo</option>
	</select>
	<br><br>
	<input type= "submit" value ="Cadastrar cliente">
	<input type= "reset" value ="limpar ">
	
	</form>
	</body>
	
</html>
