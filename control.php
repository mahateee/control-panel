<?php

error_reporting(0);
$servername = "localhost";
$username = "root";

try{
  $conn = new PDO("mysql:host=$servername;dbname=smartmethod", $username);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
 $conn->beginTransaction();

 if(isset($_POST['forward'])){
  $conn->exec("INSERT INTO directions (forward) VALUES ('forward')");
 }

elseif(isset($_POST['leftvalue']))
{
 $conn->exec("INSERT INTO directions (leftvalue) VALUES ('left')");
}
elseif (isset($_POST['stopvalue'])){
    $conn->exec("INSERT INTO directions (stopvalue) VALUES ('stop')");
}
elseif (isset($_POST['rightvalue'])){
    $conn->exec("INSERT INTO directions (rightvalue) VALUES ('right')");
}
elseif (isset($_POST['backward'])){
    $conn->exec("INSERT INTO directions (backward) VALUES ('backward')");
}
else {
    echo "No values";
}

  $conn->commit();
  echo "New records created successfully";
} catch(PDOException $e) {
  $conn->rollback();
  echo "Error: " . $e->getMessage();
}

$conn = null;

?>
