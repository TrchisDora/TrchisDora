<?php 
if (session_status() == PHP_SESSION_NONE)
session_start();

    $id = $_GET['id'];
    $chitietsanpham = layChiTietSanPham($conn, $id);
    $rsp = mysqli_fetch_array($chitietsanpham);
?>

<body>
    <div class="container">
        <form action="index.php?url=giohang" method="post">
            <div class="Ten"><?php echo $rsp['TenSP']?></div>
            <div class="info">
                <div class="Hinh"><img src='Image/<?php echo $rsp['Hinh']?>'></div>
                <div class="NoiDung">
                    <div class="Gia">
                        <div class="GiaMoi"><?php echo $rsp["GiaMoi"]=number_format($rsp["GiaMoi"],0); ?><sup>đ</sup>
                        </div>
                        <div class="GiaCu"><?php echo $rsp["GiaCu"]=number_format($rsp["GiaCu"],0); ?><sup>đ</sup></div>
                    </div>
                    <div class="Noidung_Mota">
                        <ul class="Mota">
                            <?php
                            $noiDung = $rsp['NoiDung'];
                            $noiDung = str_replace("\n","</li><li>", $noiDung);
                            echo "<li>" . $noiDung . "</li>";
                            ?>
                        </ul>
                    </div>
                </div>

            </div>
            <div class="buy-product">
                <button id="addtocard" name="addtocard">
                    <div>
                        <strong>Mua ngay</strong>
                    </div>
                    <p>Giao hàng tận nơi khi mua ngay hoặc mua tại cửa hàng</p>
                </button>
            </div>
            <input type="hidden" value="<?php echo $rsp['MaSP']; ?>" name="MaSP">
            <input type="hidden" value="<?php echo $rsp['TenSP']; ?>" name="TenSP">
            <input type="hidden" value="<?php echo $rsp['Hinh']; ?>" name="Hinh">
            <input type="hidden" value="<?php echo $rsp["GiaMoi"]; ?>" name="GiaMoi">
            <input type="hidden" value="<?php echo $rsp["GiaCu"]; ?>" name="GiaCu">
            <input type="hidden" name="SoLuong" value="1">
        </form>
        <form method="POST">
        <div class="cmt-produce">
                <label for="comment">Để lại đánh giá của bạn về sản phẩm tại đây:</label>
                <textarea class="comment" id="cmt" name="NoiDung"></textarea>
                <?php
     if (isset($_POST['Gui-cmt'])) {
        if (isset($_SESSION['User'])) {
            $User = $_SESSION['User'];
            $NoiDung = $_POST['NoiDung'];
            $MaSP = $_GET['id'];
            if (empty($NoiDung)) {
                echo "<div class='ThongBao'>Vui lòng viết bình luận!</div>";
            } else {
            $re = layThongTin_User($conn,$User);
            while($r=mysqli_fetch_array($re)){
            $HoTen=$r['HoTen'];}
            echo "<div class='ThongBao'>Gửi bình luận thành công!</div>";
            $re_nhapcmt= NhapCommentProduct($conn, $HoTen, $User, $MaSP, $NoiDung);
        }
    }
        else{
            echo'<script>document.querySelector(\'.login\').style.display ="flex";</script>';  
        }
    }
    elseif(isset($_POST['delete_cmt'])){
        $id = $_POST['delete_cmt'];
        $re_Delete = XoaID_Cmt($conn,$id);
        echo "<div class='ThongBao'>Đã xóa bình luận thành công!";
        ?>
        <a href="index.php?url=ShowRoom&id=<?php echo $rsp['MaSP']?>">Yêu cầu làm mới bình luận tại đây.</a>
        </div> <?php
    }
    ?>
                <button name="Gui-cmt">Gửi</button>
            </div>
            <div class="Show-cmt">
                <p class="cmt-heading">Đánh giá của khách hàng</p>
                <?php
                   $showCMT = layComment_ID($conn,$id);
                   while ($comm = mysqli_fetch_array($showCMT)) {
                   ?>
                       <div class="User-comment">
                           <img src="Image/Icon/icon-cmt.png" alt="CmtIcon">
                           <div class="info-user">
                               <h4><?php echo $comm['HoTen']; ?></h4>
                               <p><?php echo $comm['Date']; ?></p>
                           </div>
                       </div>
                       <div class="text-comment">
                           <p><?php echo $comm['NoiDung']; ?></p>
                       </div>
                   <?php
                           if(isset($_SESSION['User'])){
                               $re = layThongTin_User($conn,$User);
                               $r = mysqli_fetch_array($re);
                               if ($r['LoaiTK'] == 1 || $r['User'] == $comm['User']) {
                   ?>
                                   <div>
                                       <button type="submit" name='delete_cmt' value="<?php echo $comm['id'] ?>">Xóa</button>
                                   </div>
                   <?php
                               }
                           }
                       }
       
            ?>
            </div>
        </form>
        <section class="slider-product-one">
            <div class="slider-product-one-content-title">
                <h2>Sản phẩm tương tự</h2>
            </div>
            <div class="container margin-top">
                <?php
                $idloai = $rsp['MaLoai'];
                $re=laySPTuongTu($conn,$idloai,$id);
                echo '<div style="display: flex; flex-wrap: wrap;">'; 
                    while($r=mysqli_fetch_array($re))
                    {
                    ?>
                <div class="slider-product-one-content-item">
                    <a href="index.php?url=ShowRoom&id=<?php echo $r['MaSP']?>">
                        <div class="slider-product-one-content-item-img">
                            <img class="phone-img" src="Image/<?php echo $r["Hinh"]; ?>">
                        </div>
                        <div class="slider-product-one-content-item-text">
                            <li><?php echo $r["TenSP"]; ?></li>
                            <li><?php echo $r["GiaCu"]=number_format($r["GiaCu"],0); ?><sup>đ</sup></li>
                            <li><?php echo $r["GiaMoi"]=number_format($r["GiaMoi"],0); ?><sup>đ</sup></li>
                            <li>
                                <p>Yêu thích:</p>
                                <div class="icon">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </li>
                        </div>
                    </a>
                </div>
                <?php
                    }
                    ?>
            </div>
    </div>
    </div>
    </section>
    </div>
</body>