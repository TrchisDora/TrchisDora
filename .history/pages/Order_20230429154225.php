<section class="slider-product-one">
    <div class="container">          
                <?php
                $re=lay2SP($conn,4,5);
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
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </li>
                        </div> 
                        </a>
                    </div> 
                    <?php
                    }
                    ?>
                </div>
                 
    </div>
</section>
    