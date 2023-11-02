<?php
require "pages/func.php";
require "conn.php";
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="Css/tgdd.css">
    <link rel="stylesheet" href="Css/ShowRoom.css">
    <link rel="stylesheet" href="Css/footer.css">
    <link rel="stylesheet" href="Css/product.css">
    <link rel="stylesheet" href="Css/sign-up.css">
    <link rel="stylesheet" href="Css/cart.css">
    <link rel="stylesheet" href="Css/donhang.css">
    <link rel="stylesheet" href="Css/cmt.css">
    <link rel="icon" type="image/x-icon" href="Image/Icon/Icon.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>NC STORE</title>
</head>

<body>
    <!-- --------------header---------------------- -->
    <header>
        <a href="index.php"><img src="Image/Icon/Logo.png" alt="lOGO"></a>
        <span>
            <H1>NC STORE</H1>
        </span>
        <span>Pleasure to serve</span>
    </header>
    <section>
        <div class="event">
            <?php
            require "pages/event.php";
            ?>
        </div>
        <div class="Panner">
            <a href="http://localhost/NCStore/#slider-product-one"><img src="Image/collection_main_banner.png"
                    alt=".slider-product-one"></a>
        </div>
        <div class="menubar">
            <div class="container">
                <?php
            require "pages/menubar.php";
            ?>
            </div>

    </section>
    <!-- -----------------Body-Slider-Procduce--------------------- -->
    <section class="body">
        <?php
                if(isset($_GET["url"]))
                {
                    $p=$_GET["url"];//pages/$p.".php"
                    require "pages/".$p.".php";
                }
                else{
                    require "pages/home.php";
                }
            ?>
    </section>


    <!-- footer -->
    <footer class="footer">
        <section class="container footer-top">
            <div class="footer-col">
                <ul class="footer-list">
                    <li>
                        <a href="">Tích điểm Quà tặng VIP</a>
                    </li>
                    <li>
                        <a href="">Lịch sử mua hàng</a>
                    </li>
                    <li>
                        <a href="">Tìm hiểu về mua trả góp</a>
                    </li>
                    <li>
                        <a href="">Chính sách bảo hành</a>
                    </li>
                    <li>
                        <a href="">Chính sách đổi trả</a>
                    </li>
                </ul>
            </div>
            <div class="footer-col">
                <ul class="footer-list">
                    <li>
                        <a href="">Giới thiệu công ty</a>
                    </li>
                    <li>
                        <a href="">Tuyển dụng</a>
                    </li>
                    <li>
                        <a href="">Gửi góp ý, khiếu nại</a>
                    </li>
                    <li>
                        <a href="">Tìm siêu thị (3 shop)</a>
                    </li>
                    <li>
                        <a href="">Xem bản mobile</a>
                    </li>
                </ul>
            </div>
            <div class="footer-col">
                <ul class="footer-list">
                    <li>
                        <span class="support">Tổng đài hỗ trợ</span>
                        (Miễn phí gọi)
                    </li>
                    <li>
                        <span>Gọi mua:</span>
                        <a class="call" href="tel:0328804416">0328804416</a>
                        (7:30 - 22:00)
                    </li>
                    <li>
                        <span>Khiếu nại:</span>
                        <a class="call" href="tel:0788781116">0788781116</a>
                        (8:00 - 21:30)
                    </li>
                    <li>
                        <span>Bảo hành:</span>
                        <a class="call" href="tel:0704834555">0704834555</a>
                        (8:00 - 21:00)
                    </li>
                </ul>
            </div>
            <div class="footer-col">
                <ul class="footer-media">
                    <li>
                        <a class="link_fb" href="">
                            <i class="fa-brands fa-facebook" style="color: #2c74f2;"></i>
                            3805.2k Fan</a>
                        <a class="link_ytb" href="">
                            <i class="fa-brands fa-youtube" style="color: #f21818;"></i>
                            1tr Đăng ký</a>
                        <a class="link_ig" href="">
                            <i class="fa-brands fa-instagram" style="color: #8414b8;"></i>
                            IG NC Store</a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="footer-bottom">
            <div class="footer-bottom-address">
                <p>
                    © 2018. Công ty cổ phần Ngà Cầm. GPDKKD: 0303217354 do sở KH & ĐT TP.Cần Thơ cấp ngày 02/01/2007.
                    GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020.
                    <br>
                    Địa chỉ: 128 Trần Quang Khải, P. Tân Định, Q.Ninh Kiều, TP.Cần Thơ. Điện thoại: 0788781116. Email:
                    cskh@vithanhnga.com. Chịu trách nhiệm nội dung: Vi Thanh Ngà.
                    <a href="">Xem chính sách sử dụng</a>
                </p>
            </div>
        </section>
    </footer>
    <script src="Js/tgdd.js"></script>
    </div>
</body>

</html>