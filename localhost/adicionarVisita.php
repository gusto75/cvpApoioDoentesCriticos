<?php
     $host="localhost";
     $user="user";
     $password="user";
     $db="cvpapoiodoentes";

     $link=mysqli_connect($host,$user,$password,$db);

     $query1="SELECT * FROM socorrista";
     $result1=mysqli_query($link,$query1);

     $query2="SELECT * FROM utente";
     $result2=mysqli_query($link,$query2);

     $query3="SELECT * FROM motivo";
     $result3=mysqli_query($link,$query3);
     


     if (isset($_POST['add']))
     {
        $idSocorrista=$_POST['socorristaSelect'];
        //$socorrista=$_POST['socorristaSelect'];
        //$sql1="SELECT idSocorrista FROM socorrista WHERE nomeSocorrista='$socorrista'";
        //$idSocorrista=mysqli_query($link,$sql1);
        

        $idUtente=$_POST['utenteSelect'];
        //$utente=$_POST['utenteSelect'];
        //$sql2="SELECT idUtente FROM utente WHERE nomeUtente='$utente'";
        //$idUtente=mysqli_query($link,$sql2);

        $idMotivo=$_POST['motivoSelect'];
        //$motivo=$_POST['motivoSelect'];
        //$sql3="SELECT idMotivo FROM motivo WHERE descricaoMotivo='$motivo'";
        //$idMotivo=mysqli_query($link,$sql3);

        $anoVisita=$_POST["anoVisita"];
        $mesVisita=$_POST["mesVisita"];
        $diaVisita=$_POST["diaVisita"];
        $dataVisitastr=$anoVisita . "-" . $mesVisita . "-" . $diaVisita;
        $dataVisita=date('Y-m-d',strtotime($dataVisitastr));
        $observacoes=$_POST["observacoes"];
        echo "$idSocorrista";
        echo "$idUtente";
        echo "$idMotivo";
        echo "$dataVisita";

        mysqli_query($link, "INSERT INTO visita(idUtente,idSocorrista,dataVisita,idMotivo,observacoes) VALUES ('$idUtente','$idSocorrista','$dataVisita','$idMotivo','$observacoes')");
        //header("location:visitas.php");
     }     
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Adicionar Visita</title>
    </head>
    <body>
        <br><br>
        <form method="POST" action="">
    <label>Socorrista: </label>
        <select name="socorristaSelect">
            <?php while($row1=mysqli_fetch_array($result1)):;?>
            <option><?php echo $row1[1];?></option>
            <?php endwhile;?>
        </select><br><br>
        <label>Utente: </label>
        <select name="utenteSelect">
            <?php while($row1=mysqli_fetch_array($result2)):;?>
            <option><?php echo $row1[1];?></option>
            <?php endwhile;?>
        </select><br><br>
        <label>Motivo: </label>
        <select name="motivoSelect">
            <?php while($row1=mysqli_fetch_array($result3)):;?>
            <option><?php echo $row1[1];?></option>
            <?php endwhile;?>
        </select><br><br>
        <label>Data de Visita: </label><br>
        <!--<input type="text" name="dataNascimento" placeholder="AAAA-MM-DD"><br><br>-->
        <label>Dia: </label>
        <input type="text" name="diaVisita" placeholder="Dia">
        <label>Mês: </label>
        <input type="text" name="mesVisita" placeholder="Mes">
        <label>Ano: </label>
        <input type="text" name="anoVisita" placeholder="Ano"><br><br>
        <label>Observações: </label>
        <input type="text" name="observacoes" placeholder="Observações"><br><br>
        <input type="submit" name="add" value="Adicionar Visita"><br><br>
    </form>
    </body>