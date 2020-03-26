<?php

$host="localhost";
$user="user";
$password="user";
$db="cvpapoiodoentes";

$link=mysqli_connect($host,$user,$password,$db);

if (isset($_POST['add']))
{
    $nomeUtente=$_POST["nomeUtente"];
    //$dataNascimentostr=$_POST["dataNascimento"];
    //$dataNascimento=date('Y-m-d',$dataNascimentostr);

    $anoNascimento=$_POST["anoNascimento"];
    $mesNascimento=$_POST["mesNascimento"];
    $diaNascimento=$_POST["diaNascimento"];
    $dataNascimentostr=$anoNascimento . "-" . $mesNascimento . "-" . $diaNascimento;
    $dataNascimento=date('Y-m-d',strtotime($dataNascimentostr));

    $contactoUtente=$_POST["contactoUtente"];
    $contactoAltUtente=$_POST["contactoAltUtente"];
    $freguesia=$_POST["freguesia"];
    $moradaCompleta=$_POST["moradaCompleta"];

    $anoContacto=$_POST["anoContacto"];
    $mesContacto=$_POST["mesContacto"];
    $diaContacto=$_POST["DiaContacto"];
    $dataContactostr=$anoContacto . "-" . $mesContacto . "-" . $diaContacto;
    $dataContacto=date('Y-m-d',strtotime($dataContactostr));

    //$dataContactostr=$_POST["dataContacto"];
    //$dataContacto=date('Y-m-d',$dataContactostr);

    if(isset($_POST['contactada']))
    {
        $contactada=1;
        mysqli_query($link, "INSERT INTO utente(nomeUtente,dataNascimento,contactoUtente,contactoAltUtente,freguesia,moradaCompleta,contactada,dataContacto) VALUES ('$nomeUtente','$dataNascimento','$contactoUtente','$contactoAltUtente','$freguesia','$moradaCompleta','SIM','$dataContacto')");
        echo "<h3>Inserido com sucesso!</h3>";
    }
    else
    {
        $contactada=0;
        mysqli_query($link, "INSERT INTO utente(nomeUtente,dataNascimento,contactoUtente,contactoAltUtente,freguesia,moradaCompleta,contactada,dataContacto) VALUES ('$nomeUtente','$dataNascimento','$contactoUtente','$contactoAltUtente','$freguesia','$moradaCompleta','NAO',NULL)");
        echo "<h3>Inserido com sucesso!</h3>";
    }

    header("location:utentes.php");
}  

?>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Adicionar Utente</title>
</head>
<body>
    <h1>Adicionar Novo Utente</h1>
    <form method="POST" action="">
        <label>Nome do Utente: </label>
        <input type="text" name="nomeUtente" placeholder="Nome do Utente"><br><br>
        <label>Data de Nascimento: </label><br>
        <!--<input type="text" name="dataNascimento" placeholder="AAAA-MM-DD"><br><br>-->
        <label>Dia: </label>
        <input type="text" name="diaNascimento" placeholder="Dia">
        <label>Mês: </label>
        <input type="text" name="mesNascimento" placeholder="Mes">
        <label>Ano Nascimento: </label>
        <input type="text" name="anoNascimento" placeholder="Ano"><br><br>
        <label>Contacto: </label>
        <input type="text" name="contactoUtente" placeholder="Contacto"><br><br>
        <label>Contacto Secundário: </label>
        <input type="text" name="contactoAltUtente" placeholder="Contacto"><br><br>
        <label>Freguesia: </label>
        <input type="text" name="freguesia" placeholder="Freguesia"><br><br>
        <label>Morada Completa: </label>
        <input type="text" name="moradaCompleta" placeholder="Morada Completa"><br><br>
        <label>Contactada: </label>
        <input type="checkbox" name="contactada" value=on><br><br>
        <label>Data de Contacto: </label><br>
        <!--<input type="text" name="dataContacto" placeholder="AAAA-MM-DD"><br><br>-->
        <label>Dia: </label>
        <input type="text" name="diaContacto" placeholder="Dia">
        <label>Mês: </label>
        <input type="text" name="mesContacto" placeholder="Mes">
        <label>Ano: </label>
        <input type="text" name="anoContacto" placeholder="Ano"><br><br>

        <input type="submit" name="add" value="Adicionar Utente">
    </form>
</body>
</html>
