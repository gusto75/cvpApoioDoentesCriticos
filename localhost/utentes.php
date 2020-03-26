
<?php

$host="localhost";
$user="user";
$password="user";
$db="cvpapoiodoentes";

$link=mysqli_connect($host,$user,$password,$db);

$sql="SELECT nomeUtente,dataNascimento,contactoUtente,contactoAltUtente,freguesia,moradaCompleta,contactada,dataContacto FROM Utente";
$q=mysqli_query($link,$sql);


echo "<br></br>";
echo "<td><a href='visitas.php'>Visitas</a> | <td><a href='socorristas.php'>Socorristas</a>";
echo "<br></br>";

echo "<table border='2'>";
echo "<tr>";
echo "<th>Nome do Utente</th>";
echo "<th>Data de Nascimento</th>";
echo "<th>Contacto</th>";
echo "<th>Contacto 2</th>";
echo "<th>Freguesia</th>";
echo "<th>Morada</th>";
echo "<th>Contactada</th>";
echo "<th>Data de Contacto</th>";
echo "<th></th>";
echo "</tr>";
while($data=mysqli_fetch_row($q))
{
    echo "<tr>";
    echo "<td> $data[0]</td><td>$data[1]</td><td>$data[2]</td><td>$data[3]</td><td>$data[4]</td><td>$data[5]</td><td>$data[6]</td><td>$data[7]</td>";
    echo "<td><a href=''>Editar</a>";
    echo "</tr>";
}
echo "</table>";
echo "<br></br>";

?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Utentes</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: left;
            font-size: medium;
        }
    </style>
</head>
<body>
        <input type="submit" value="Adicionar Utente" onclick="location.href='adicionarUtente.php'">
</body>
</html>