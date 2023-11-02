
<div class="container">
<h3 class="sign-up-now">Đăng Ký Tài Khoản Ngay</h3>

  <form class="sign-up-form" method="POST">

  <div class="name-acc">
        <label for="hoten"><i class="fa-solid fa-person"></i></label>
        <input type="text" id="hoten" name="HoTen" placeholder="Họ và tên" value="<?php if(isset($_POST['HoTen'])) echo $_POST['HoTen']; ?>">
    </div>

    <div class="user-acc">
        <label for="user"><i class="fa-solid fa-user"></i></label>
        <input type="text" id="user" name="User" placeholder="Tài khoản" value="<?php if(isset($_POST['User'])) echo $_POST['User']; ?>">
    </div>

    <div class="password-acc">
        <label for="pass"><i class="fa-solid fa-lock"></i></label>
        <input type="password" id="pass" name="Pass" placeholder="Password" value="<?php if(isset($_POST['Pass'])) echo $_POST['Pass']; ?>">
    </div>

    <div class="email-user">
        <label for="email"><i class="fa-solid fa-envelope"></i></label>
        <input type="email" name="Email" id="email" placeholder="Nhập email" value="<?php if(isset($_POST['Email'])) echo $_POST['Email']; ?>">
    </div>

    <div class="phone">
        <label for="sdt"><i class="fa-solid fa-phone"></i></label>
        <input type="tel" name="Sdt" id="sdt" placeholder="Nhập số điện thoại" value="<?php if(isset($_POST['Sdt'])) echo $_POST['Sdt']; ?>">
    </div>

    <div class="address">
        <label for="DiaChi"><i class="fa-solid fa-location-dot"></i></label>
        <input id="Dc" name="DiaChi" placeholder="Nhập địa chỉ của bạn" value="<?php if(isset($_POST['DiaChi'])) echo $_POST['DiaChi']; ?>"></input>
    </div>
    
    <div class="body-thong-bao">
      
<?php
if (isset($_POST['DangKy'])) {
    $Ht = $_POST['HoTen'];
    $Us = trim($_POST['User']);
    $Pa = ($_POST['Pass']);
    $Em = $_POST['Email'];
    $Sd = $_POST['Sdt'];
    $Dc = $_POST['DiaChi'];  
    if (empty($Ht) || empty($Us) || empty($Pa) || empty($Em) || empty($Sd) || empty($Dc)) {
        echo "Vui lòng điền đầy đủ thông tin.";
      }elseif(!preg_match("/^[a-zA-Z0-9_]+$/", $Us)) {
          echo "Tên tài khoản không hợp lệ!!!";
        }else{
          $re = layThongTin($conn);
          while($r=mysqli_fetch_array($re)){
            if($Us==$r['User'] || $Em==$r['Email'] || $Sd==$r['Sdt'])
            {
              echo "Tên đăng nhâp, Email Hoặc Số điện thoại đã được sử dụng!!!";
              break;
            }
          }
          // Tiếp tục xử lý khi tất cả các giá trị đều hợp lệ
          $result = SignUp($conn,$Us,$Pa,$Ht,$Em,$Sd,$Dc);
          if ($result) {
            echo "Đăng kí tài khoản thành công";
          }
        }
}
?>
    </div>
        
    <input type="submit" id="sub" name="DangKy" value="Đăng ký">

</form>

</div>