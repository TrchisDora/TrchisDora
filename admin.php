<?php
if (session_status() == PHP_SESSION_NONE)
session_start();
if (!isset($_SESSION["User"])) {
    header("location:index.php");
}
else if (isset($_SESSION["LoaiTK"]) && $_SESSION["LoaiTK"] != 1)
    header("location:index.php");


if (isset($_POST['dangxuat'])) {
    header("Location:index.php");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="Css/tgdd.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="../css/index.css">
</head>

<body>
<header>
        <a href="index.php"><img src="Image/Icon/Logo.png" alt="lOGO"></a>
        <span>
            <H1>NC STORE</H1>
        </span>
        <span>Pleasure to serve</span>
    </header>
<div>
    <div class="event">
        <ul>
            <li>
            <form class="hello" method="POST">
                <div>
                    Xin chào, <?php echo $_SESSION['User'] ?> đã đến với trang web sỡ hữu bởi ban quản lý NCStore <i class="fa-sharp fa-solid fa-caret-down"></i>
                </div>
                <div>
                <div class="child_event">
                    <ul>   
                    <li><input class="info_Admin_button" type="submit" name="dangxuat" value="Thoát"></li>
                    </ul> 
                </div>
            </div>
            </form>
                    </li>
                </ul>
            </div>
    
</div>
</body>
</html>