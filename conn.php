<?php
$link = "localhost";
$db= "testweb";
$user = "root";
$pass ="";
$conn= mysqli_connect($link, $user, $pass, $db);
if(!$conn){
    echo "Kết nối lỗi";
}
?>