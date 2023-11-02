<?php
if (session_status() == PHP_SESSION_NONE)
session_start();


if (isset($_POST['logout'])) {
    unset($_SESSION['User']);
    if(isset($_GET["url"]))
    {
        $p=$_GET["url"];//pages/$p.".php"
        $p=$_GET["url"];//pages/$p.".php"
        if ($p == "ShowRoom") {
            $id = $_GET["id"]; // lấy biến id từ url
            header("Location:index.php?url=".$p."&id=".$id);
        } else 
        {
            header("Location:index.php?url=".$p);
        }
    }
}
?>

<div class="container">
<ul>
<form class="search" action="index.php" method="GET">
    <li>
    <input type="hidden" name="url" value="search">
        <div>
            <input type="text" name="Key" placeholder="Tìm kiếm..." required>
            <button class="fa-solid fa-magnifying-glass" type="submit"></button>
        </div>
    </li>   
</form>
    <li><a href="index.php?url=giohang"><button><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</button></a></li>

    <div class="login">
        <div class="login-content">
        <h2>Vui lòng đăng nhập <span><button id="close1">X</button></span></h2>
            <div class="form">
            <form method="post">
                <div class="user">
                    <label for="user">Tên tài khoản: </label>
                    <input type="text" id="user" name="username">
                </div>
                <div class="pass">
                    <label for="pass">Mật khẩu: </label>
                    <input type="password" id="pass" name="password">
                </div>

                
                <?php
                if (isset($_POST['login'])) {
                    $taikhoan = $_POST['username'];
                    $matkhau = ($_POST['password']);
                    $re = logIn($conn,$taikhoan,$matkhau);
                        if (mysqli_num_rows($re) > 0) {
                            $r = mysqli_fetch_array($re);
                            $_SESSION["User"] = $r["User"];
                            $_SESSION["LoaiTK"] = $r["LoaiTK"];
                            if ($r['LoaiTK'] == 0) {
                                $_SESSION['login'] = $taikhoan;
                                if(isset($_GET["url"]))
                                {
                                    $p=$_GET["url"];//pages/$p.".php"
                                    if ($p == "ShowRoom") {
                                        $id = $_GET["id"]; // lấy biến id từ url
                                        header("Location:index.php?url=".$p."&id=".$id);
                                    } else {
                                        header("Location:index.php?url=".$p);
                                    }
                                }
                                
                            } else if ($r['LoaiTK'] == 1) {
                                $_SESSION['login'] = $taikhoan;
                                header("Location:../NCStore/admin.php");
                            }
                            
                        }
                        else{
                            echo "<div class='ThongBao'>Tài khoản hoặc mật khẩu không hợp lệ vui lòng thử lại :((</div>";
                            echo '<script>
                            document.querySelector(\'.login\').style.display = "flex";
                            </script>';
                        }
                }
                
                ?>
                <a href="index.php?url=SignUp"><div>Bạn chưa có tài khoản?</div></a>
                <div class="sub">
                <input type="submit" id="sub" name="login" value="Đăng nhập">
                </div>
            </form>
            </div>
        </div>
    </div>
   
    <?php
if (isset($_SESSION['User'])) {
    $re = layThongTin($conn);
    $User = $_SESSION['User'];
    while($r=mysqli_fetch_array($re)){
        if($User==$r['User'])
        {
            break;
        }
    }
   

    ?>
    <li>
    <form class="hello" method="POST">
        <div>
             Xin chào, <?php echo $r['HoTen']; ?>  <i class="fa-sharp fa-solid fa-caret-down"></i>
        </div>
        <div>
        <div class="child_event">
            <ul>   
            <li> <a href="index.php?url=ctdh">Đơn hàng của bạn</a></li>
            <li><input style="cursor: pointer;" type="submit" name="logout" value="Đăng xuất"></li>
            </ul> 
        </div>
    </div>
    </form>
    </li>
    <?php
    } else{
?>
    <li style="cursor: pointer;" id="login">Đăng Nhập</li>
    <?php
    echo'<script>const logintbtn = document.querySelector(\'#login\');
    logintbtn.addEventListener("click", function(){
        document.querySelector(\'.login\').style.display ="flex";
    });
    const close1 = document.querySelector(\'#close1\');
    close1.addEventListener("click", function(){
        document.querySelector(\'.login\').style.display ="none";
    });</script>';
    }  
    ?>

    <form method="post">
    <li style="cursor: pointer;" id="contact">Liên hệ cộng tác viên </li>
    <div class="contact">
        <div class="contact-content">
            <h2>
                Liên hệ cộng tác viên 
                <span>
                    <button id="close2">X</button>
                </span>
            </h2>
            <p>
                Xin chào mừng Quý khách đến với dịch vụ hỗ trợ khách hàng, Quí khách có những phàn nàn về dịch vụ của chúng tôi xin hãy góp ý. Những ý kiến này sẽ làm chúng hoàn thiện hơn.
            </p>
            <div class="form">
                <?php

                    if (isset($_SESSION['User'])) {
                        
                        $User = $_SESSION['User'];
                        $re = layThongTin_User($conn,$User);
               
                        while($r=mysqli_fetch_array($re)){
                        ?>
                            <div class="name">
                                <label for="HoTen">Họ và Tên:</label>
                                <input type="text" id="HoTen" name="HoTen" value="<?php echo $r['HoTen'] ?>" >
                            </div>
                            </div>
                            <div class="email">
                                <label for="email">Email: </label>
                                <input type="email" name="Email" id="email"  value="<?php echo $r['Email'] ?>">
                            </div>
                            <div class="sdt">
                                <label for="sdt">Số điện thoại: </label>
                                <input type="tel" name="Sdt" id="sdt"  value="<?php echo $r['Sdt'] ?>">
                            </div>
                            <div class="cmt">
                                <label for="comment">Comment:</label>
                                <textarea class="comment" id="cmt" name="cmt"></textarea>
                            </div>
                    <?php
                }
            }else{
                    ?>
                        <div class="name">
                                <label for="HoTen">Họ và Tên:</label>
                                <input type="text" id="HoTen" name="HoTen" placeholder="Nhập họ và tên">
                        </div>
                        <div class="email">
                            <label for="email">Email: </label>
                            <input type="email" name="Email" id="email" placeholder="Nhập email">
                        </div>
                        <div class="sdt">
                            <label for="sdt">Số điện thoại: </label>
                            <input type="tel" name="Sdt" id="sdt" placeholder="Nhập số điện thoại">
                        </div>
                        <div class="cmt">
                            <label for="comment">Comment:</label>
                            <textarea class="comment" id="cmt" name="cmt"></textarea>
                        </div>
                    <?php 
                }
                if (isset($_POST['Gui'])) {
                    $HoTen = $_POST['HoTen'];
                    $Email = $_POST['Email'];
                    $Sdt = $_POST['Sdt'];
                    $Comment = $_POST['cmt'];
                    $User ='';
                
                   
                    if (isset($_SESSION['User'])) {
                        $User = $_SESSION['User'];
                    }
                
                
                    if (empty($HoTen) || empty($Email) || empty($Sdt) || empty($Comment)) {
                        echo "<div class='ThongBao'>Vui lòng điền đầy đủ thông tin!</div>";
                    } else {
                       
                        if (!empty($User)) {
                            $result = NhapComment($conn, $HoTen, $User, $Email, $Sdt, $Comment);
                            if ($result) {
                                echo "<div class='ThongBao'>Nhập comment thành công!</div>";
                            }
                        }
                    
                        else {
                            $re = layThongTin($conn);
                            $trung = false;
                            while ($r = mysqli_fetch_array($re)) {
                                if ($Email == $r['Email'] || $Sdt == $r['Sdt']) {
                                    $trung = true;
                                    break;
                                }
                            }
                            if ($trung) {
                                echo "<div class='ThongBao'>Email hoặc số điện thoại đã được sử dụng.</div>";
                            } else {
                                $result = NhapComment($conn, $HoTen, $User, $Email, $Sdt, $Comment);
                                if ($result) {
                                    echo "<div class='ThongBao'>Nhập comment thành công!</div>";
                                }
                            }
                        }
                    }
                    echo'<script>document.querySelector(\'.contact\').style.display ="flex";</script>';    
                } 
                ?>
                
                <div class="sub">
                <input type="submit" id="sub" name="Gui" value="Gửi">
                </div>
            </div>  
        </div>
    </div>
     </form>
</ul>
</div>
                
<?php