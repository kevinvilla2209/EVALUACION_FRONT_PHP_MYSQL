<?php
session_start();
require_once("../config/database.php");
$db = new Database();
$con = $db->conectar();




$doc = $_SESSION['documento'];
$sql = $con->prepare("SELECT * FROM usuario
 INNER JOIN tipo_usu
 ON usuario.id_tipo = tipo_usu.id_tipo
 WHERE usuario.documento = $doc");

$sql->execute();
$fila = $sql->fetch();


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <h1>Bienvenido señor@ <?php echo $fila['nombres']; ?> Usted es, <?php echo $fila['tipo']; ?></h1>
</body>

</html>