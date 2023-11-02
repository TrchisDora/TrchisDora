<?php
function layLoai ($kn){
    $sql="select * from loai order by thuTu";
    return mysqli_query($kn,$sql);
}
function laySanPham ($kn,$n){
    $sql="select * from sanPham order by id desc limit ".$n;
    return mysqli_query($kn,$sql);
}
function laySP ($kn, $idLoai){
    $sql="select * from sanpham where Maloai = ".$idLoai;
    return mysqli_query($kn,$sql);
    
}
function laySPTuongTu($kn, $idLoai, $id) {
    $sql = "SELECT * FROM sanpham WHERE Maloai = ".$idLoai." AND MaSP != ".$id." LIMIT 5 ";
    return mysqli_query($kn,$sql);
}
function laySPNoiBat($kn,$n) {
    $sql = "SELECT * FROM sanpham WHERE noibat = 0 limit ".$n;
    return mysqli_query($kn,$sql);
}

function laySale ($kn,$n){
    $sql="select *, round(((GiaCu - GiaMoi) / GiaCu) * 100,1)as GiamGia from sanpham order by GiamGia desc limit ".$n;
    return mysqli_query($kn,$sql);
}
function lay2SP ($kn, $idLoai1, $idLoai2){
    $sql="select * from sanpham where Maloai = ".$idLoai1." or Maloai = ".$idLoai2." order by NoiBat desc";
    return mysqli_query($kn,$sql);
    
}
function layChiTietSanPham($conn, $MaSP){
    $layChiTietSanPham = "SELECT * FROM sanpham WHERE sanpham.MaSP = $MaSP";
    return mysqli_query($conn, $layChiTietSanPham);
}
function timkiemSP($conn,$search){
    $sql = "SELECT * FROM sanpham WHERE TenSP LIKE '%$search%'";
    return mysqli_query($conn, $sql);
}
function logIn($conn,$taikhoan,$matkhau){
    $sql = "SELECT * FROM account WHERE (user = '{$taikhoan}' OR email = '{$taikhoan}' OR sdt = '{$taikhoan}') AND pass = '{$matkhau}' LIMIT 1";
    return mysqli_query($conn,$sql);
}
function SignUp($conn,$user, $pass, $hoTen, $email, $sdt, $diaChi) {
    $sql = "INSERT INTO account (User, Pass, HoTen, Email, Sdt, DiaChi)
    VALUES ('$user', '$pass', '$hoTen', '$email', '$sdt', '$diaChi')";
    return mysqli_query($conn,$sql);
}
function layGio ($kn, $MaSP){
    $sql ="SELECT * FROM giohang WHERE MaSP= '$MaSP'";
    return mysqli_query($kn,$sql);
}
function UpdataGio ($kn,$SoLuong, $MaSP){
    $sql = "UPDATE giohang SET SoLuong='$SoLuong' WHERE MaSP='$MaSP'";
    return mysqli_query($kn,$sql);
}
function NhapGio ($kn,$TenSP,$MaSP,$GiaCu,$GiaMoi,$Hinh,$SoLuong){
    $sql = "INSERT INTO giohang(TenSP,MaSP,GiaCu,GiaMoi,Hinh,SoLuong) values ('$TenSP','$MaSP','$GiaCu','$GiaMoi','$Hinh','$SoLuong')";
    return mysqli_query($kn,$sql);
}
function XoaGio ($kn){
    $sql = "DELETE FROM giohang;";
    return mysqli_query($kn,$sql);
}
function XoaID_Gio ($kn,$MaGioHang){
    $sql = "DELETE FROM giohang WHERE MaGioHang='$MaGioHang'";
    return mysqli_query($kn,$sql);
}
function layHetGioHang ($kn){
    $sql ="SELECT * FROM giohang ORDER BY MaGioHang DESC";
    return mysqli_query($kn,$sql);
}
function XoaSP_Gio ($kn, $MaSP){
    $sql ="DELETE FROM giohang WHERE MaSP='$MaSP'";
    return mysqli_query($kn,$sql);
}
function layDonHang ($kn){
    $sql ="SELECT * FROM donhang ";
    return mysqli_query($kn,$sql);
}
function layDonHang_User ($kn,$User){
    $sql ="SELECT * FROM donhang WHERE User='$User'";
    return mysqli_query($kn,$sql);
}
function layDonHang_MaDH ($kn,$MaDH){
    $sql ="SELECT * FROM donhang WHERE MaDH='$MaDH'";
    return mysqli_query($kn,$sql);
}
function NhapDon ($kn,$MaDH, $TongSoLuong,$User,$TinhTrang,$TongHD){
    $sql = "INSERT INTO donhang (MaDH, TongSoLuong, User, TinhTrang,  TongHD) VALUES ('$MaDH', '$TongSoLuong', '$User', '$TinhTrang', '$TongHD')";
    return mysqli_query($kn,$sql);  
}
function layCTDH ($kn){
    $sql ="SELECT * FROM chitietdonhang ";
    return mysqli_query($kn,$sql);
}

function layCTDH_MaDH($kn,$MaDH){
    $sql ="SELECT * FROM chitietdonhang WHERE MaDH='$MaDH' ";
    return mysqli_query($kn,$sql);
}
function NhapChiTietDon ($kn, $MaDH, $MaSP, $SoLuong, $TenSP, $Hinh, $Gia){
    $sql = "INSERT INTO chitietdonhang(MaDH, MaSP, SoLuong, TenSP, Hinh, Gia) 
        VALUES ('$MaDH', '$MaSP', '$SoLuong','$TenSP','$Hinh','$Gia')";
    return mysqli_query($kn, $sql);
}
function layThongTin ($kn){
    $sql ="SELECT * FROM account";
    return mysqli_query($kn,$sql);
}
function layThongTin_User ($kn,$User){
    $sql ="SELECT * FROM account WHERE User='$User' ";
    return mysqli_query($kn,$sql);
}
function NhapComment($kn, $HoTen, $User, $Email, $Sdt, $Comment) {
    $sql = "INSERT INTO comment (HoTen, User, Email, Sdt, Comment) VALUES ('$HoTen', '$User', '$Email', '$Sdt', '$Comment')";
    return mysqli_query($kn, $sql);  
}
function NhapCommentProduct($kn, $HoTen, $User, $MaSP, $NoiDung) {
    $sql = "INSERT INTO comment_product (HoTen, User, MaSP, NoiDung) 
            VALUES ('$HoTen', '$User', '$MaSP', '$NoiDung')";
    return mysqli_query($kn, $sql);  
}
function layComment_ID ($kn,$ID){
    $sql =" SELECT * FROM comment_product WHERE MaSP='$ID' ORDER BY Date DESC";
    return mysqli_query($kn,$sql);
}
function XoaID_Cmt ($kn,$id){
    $sql = "DELETE FROM comment_product WHERE id='$id'";
    return mysqli_query($kn,$sql);
}
?>