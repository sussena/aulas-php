<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Consulta Cliente</title>
</head>
<body>
<h1>Consulta cliente</h1>
<hr>
	<form action = "" method="post">
	Nome..:<br>
    <input type="text" name="nome"/>
    <br><br>
    <input type="submit" value="buscar">
    </form>
    <?php
        echo"resultado da busca";
        $nome = $_POST["nome"];
        $sql = "select * from cliente where nome like '".$nome."%' ";
        $con = mysqli_connect("localhost","root","","aula5");
        $rs = mysqli_query($con,$sql);
        if(mysqli_num_rows($rs) > 0){
           
            while($registro = mysqli_fetch_array($rs)){
                echo $registro["nome"]."/".$registro["email"]."/".$registro["idade"]."/".$registro["estadocivil"];
            }
           
           
        }else{
            echo"nenhum cliente encontrado";
        }
    ?>
</body>
</html>