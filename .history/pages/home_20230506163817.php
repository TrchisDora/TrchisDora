<section class="Slider">
    <div class="container">
        <div class="Slider-content-container">
            <div class="Slider-content">
                <a href="http://localhost/NCStore/index.php?url=Mobile"><img src="Image/Ip.png" alt=""></a>
                <a href="http://localhost/NCStore/index.php?url=LapTop"><img src="Image/Mac.png" alt=""></a>
                <a href="http://localhost/NCStore/index.php?url=Tablet"><img src="Image/Ipad.png" alt=""></a>
                <a href="http://localhost/NCStore/index.php?url=Iwatch"><img src="Image/Iw.png" alt=""></a>
                <a href="http://localhost/NCStore/index.php?url=Airpod"><img src="Image/Ap.png" alt=""></a>
            </div>
            <div class="dh">
                <i class="fa-solid fa-circle-arrow-left"></i>
                <i class="fa-solid fa-circle-arrow-right"></i>
            </div>
        </div>
        <div class="Slider-content-bot">
            <li class="active">Iphone</li>
            <li>MacBook</li>
            <li>Ipad</li>
            <li>IWatch</li>
            <li>Airpod</li>
        </div>
    </div>
</section>
<section class="baner-one">
    <div class="container">
        <img class="baner1 " src="Image/baner1.png" alt="">
    </div>
</section>
<section id="slider-product-one" class="slider-product-one">
    <div class="container">
        <div class="slider-product-one-content">
            <div class="slider-product-one-content-title">
                <h2>Săn Sale Online</h2>
            </div>
            <div class="slider-product-one-content-container">
                <div class="slider-product-one-content-items-content">
                    <?php                       
                            $re=laySale($conn,15);
                            $count = 0;
                            $Number_Sp = 5;
                            while($r=mysqli_fetch_array($re))
                            {
                                if ($count % $Number_Sp == 0) {
                                    echo '<div class="slider-product-one-content-items">';
                                }
                                ?>
                    <div class="slider-product-one-content-item">

                        <a href="index.php?url=ShowRoom&id=<?php echo $r['MaSP']?>">

                            <div class="slider-product-one-content-item-img">
                                <img class="phone-img" src="Image/<?php echo $r["Hinh"]; ?>">
                            </div>
                            <div class="slider-product-one-content-item-text">
                                <li><?php echo $r["TenSP"]; ?></li>
                                <li><?php echo $r["GiaCu"]=number_format($r["GiaCu"],0); ?><sup>đ</sup></li>
                                <li><?php echo $r["GiaMoi"]=number_format($r["GiaMoi"],0); ?><sup>đ</sup>
                                    <div> Giảm: <?php echo $r["GiamGia"];?></span<sup>%</sup></div>
                                </li>
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
                                $count++;
                                if ($count % $Number_Sp == 0) {
                                    echo '</div>';
                                }
                            }
                        ?>
                </div>
                <div class="slider-product-one-content-btn">
                    <i class="fa-solid fa-circle-arrow-left fa-circle-arrow-left-two"></i>
                    <i class="fa-solid fa-circle-arrow-right fa-circle-arrow-right-two"></i>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="slider-product-one-bg">
    <div class="container">
        <div class="slider-product-one-content-title">
            <h2>Sản phẩm nổi bật</h2>
        </div>
        <div class="container margin-top">
            <?php
                $re=laySPNoiBat($conn);
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
    </div>
</section>