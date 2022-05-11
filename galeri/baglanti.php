<?php
$servername = "localhost";
$username = "EnsarYKN";
$password = "EnsarYKN01";

try {
  $conn = new PDO("mysql:host=$servername;dbname=galerici", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  //echo "Bağlantı Başarılı";
} catch(PDOException $e) {
  echo "Bağlantı Kurulamadı: " . $e->getMessage();
}
?>