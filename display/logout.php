<?php
   
    if(isset($_SESSION['login_member']))
    {
        $username = $_GET["tendangnhap"];
        $updatestatus = "update khachhang set trangthai = 0  where tendangnhap='".$username."'";
        $db->query($updatestatus);
        unset($_SESSION['login_member']);


    }
    header("location:?page=login");
?>
