<?php 
session_start();
require '../config/database.php';

$db = new Database();
$con = $db->conectar();

if($_POST["inicio"])
{   
    $doc = $_POST["documento"];
    $contra = $_POST["contrasena"];
 
    $sql = $con->prepare("SELECT * FROM usuario WHERE documento ='$doc' AND contrasena = '$contra'");
    $sql->execute();
    $fila = $sql->fetch();
    
    if ($fila) {

        $_SESSION['documento'] = $fila['documento'];
        $_SESSION['tip_usu'] = $fila['id_tipo'];
  
  
        if ($_SESSION['tip_usu'] == 1) {
           header("");
           exit();
        }
  
        if ($_SESSION['tip_usu'] == 2) {
           header("");
           exit();
        }
  
        if ($_SESSION['tip_usu'] == 3) {
           header("Location: ../model/gerente.php");
           exit();
        }
}
else
{
 echo"<script>alert('Credenciales invalidas o usuario inactivo.')</script>";
 echo"<script>window.location='/index.php'</script>";
 exit();

}
}

?>