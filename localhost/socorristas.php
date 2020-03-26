
<?php

$host="localhost";
$user="user";
$password="user";
$db="cvpapoiodoentes";

$link=mysqli_connect($host,$user,$password,$db);

$sql="SELECT numeroSocorrista, nomeSocorrista,contactoSocorrista FROM Socorrista";
$q=mysqli_query($link,$sql);

echo "<br></br>";
echo "<td><a href='utentes.php'>Utentes</a> | <td><a href='visitas.php'>Visitas</a>";
echo "<br></br>";

echo "<table border='2'>";
echo "<tr>";
echo "<th>Número de Socorrista</th>";
echo "<th>Nome do Socorrista</th>";
echo "<th>Contacto</th>";
echo "<th></th>";
echo "</tr>";
while($data=mysqli_fetch_row($q))
{
    echo "<tr>";
    echo "<td> $data[0]</td><td>$data[1]</td><td>$data[2]</td>";
    echo "<td><a href=''>Editar</a>";
    echo "</tr>";
}
echo "</table>";
echo "<br></br>";

?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Socorristas</title>
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
        <input type="submit" value="Adicionar Socorrista" onclick="location.href='adicionarSocorrista.php'">
</body>
</html>