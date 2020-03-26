<?php

$host="localhost";
$user="user";
$password="user";
$db="cvpapoiodoentes";

$link=mysqli_connect($host,$user,$password,$db);

if(isset($_POST['submit']))
{
    $username=$_POST['username'];
    $password=md5($_POST['password']);

    $sql="SELECT * FROM Socorrista WHERE username='".$username."' AND pass='".$password."'";

    if ($result=mysqli_query($link,$sql))
    {
        $rowcount=mysqli_num_rows($result);
    }
    if($rowcount>0)
        {
            echo "Sucesso!";
            //exit();
            header("location:visitas.php");

        }
        else
        {
            echo "Dados Incorretos";
        }
}

?>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" a href="text/css" href="style.css">
    </head>
    <body>
        <div class="container">
            <form method="POST" action="">
                <div class="form_input">
                    <input type="text" name="username" placeholder="Utilizador"/>
                </div>
                <div class="form_input">
                    <input type="password" name="password" placeholder="Password"/>
                </div>
                <input type="submit" name="submit" value="Iniciar Sessão" class="btn-login"/>
            </form>
        </div>
    </body>
</html>