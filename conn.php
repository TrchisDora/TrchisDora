<?php
$link = "https://github.com/TrchisDora/TrchisDora";
$db= "testweb";
$user = "root";
$pass ="";
$conn= mysqli_connect($link, $user, $pass, $db);
if(!$conn){
    echo "Kết nối lỗi";
}
?>
