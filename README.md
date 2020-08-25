
//db.php
<?php
$dns = ‘mysql:host=localhost;dbname=Finance App’;
$user = ‘aryamaan9@localhost’;
$pass = ‘arty1999A!’;
try{
 $db = new PDO ($dns, $user, $pass);
 echo 'connected';
}catch( PDOException $e){
 $error = $e->getMessage();
 echo $error;
}



//get.php
<?php
require_once('db.php');
$query = 'SELECT * FROM User-Details';
$stm = $db->prepare($query);
$stm->execute();
$row = $stm->fetch(PDO::FETCH_ASSOC);
echo json_encode($row);
