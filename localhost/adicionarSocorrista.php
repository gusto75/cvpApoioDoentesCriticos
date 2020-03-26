<?php

$host="localhost";
$user="user";
$password="user";
$db="cvpapoiodoentes";

$link=mysqli_connect($host,$user,$password,$db);

if (isset($_POST['add']))
{
    $nomeSocorrista=$_POST["nomeSocorrista"];
    $numeroSocorrista=$_POST["numeroSocorrista"];
    $contactoSocorrista=$_POST["contactoSocorrista"];
    $username=$_POST["username"];
    $password=md5($_POST["password"]);
    
     mysqli_query($link, "INSERT INTO socorrista(nomeSocorrista,username,pass,numeroSocorrista,contactoSocorrista) VALUES ('$nomeSocorrista','$username','$password','$numeroSocorrista','$contactoSocorrista')");
     echo "<h3>Inserido com sucesso!</h3>";
    header("location:socorristas.php");
}  

?>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Adicionar Socorrista</title>
</head>
<body>
    <h1>Adicionar Novo Socorrista</h1>
    <form method="POST" action="">
        <label>Nome: </label>
        <input type="text" name="nomeSocorrista" placeholder="Nome do Socorrista"><br><br>
        <label>Número do Socorrista: </label>
        <input type="text" name="numeroSocorrista" placeholder="Numero de Socorrista"><br><br>
        <label>Contacto: </label>
        <input type="text" name="contactoSocorrista" placeholder="Número de Telefone"><br><br>
        <label>Username: </label>
        <input type="text" name="username" placeholder="Username"><br><br>
        <label>Password</label>
        <input type="password" name="password" placeholder="Password"><br><br>
        <input type="submit" name="add" value="Adicionar Socorrista">
    </form>
</body>
</html>