<div class="motopress-wrapper content-holder clearfix">
<div class="container">
<div class="row">
<div class="span12" data-motopress-wrapper-file="page-fullwidth.php" data-motopress-wrapper-type="content">
<div class="row">
<div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
<section class="title-section">
<h1 class="title-header">
Liên hệ </h1>
 
<ul class="breadcrumb breadcrumb__t"><li><a href="index.php">Home</a>
    </li><li class="divider"></li><li class="active">Liên hệ</li></ul>  
</section>  </div>
</div>
    
<div id="content" class="row">
<div class="span12" data-motopress-type="loop" data-motopress-loop-file="loop/loop-page.php">
<div id="post-14" class="post-14 page type-page status-publish hentry page instock">
<div class="row">
<div class="span12"><div class="google-map">
        <div style="overflow:hidden;width: 100%;position: relative;"><iframe width="100%" height="500" src="https://maps.google.com/maps?width=700&amp;height=440&amp;hl=en&amp;q=Ton%20Duc%20Thang%20University%2C%2098%20%C4%90%C6%B0%E1%BB%9Dng%20Ng%C3%B4%20T%E1%BA%A5t%20T%E1%BB%91%2C%20Ph%C6%B0%E1%BB%9Dng%2019%2C%20B%C3%ACnh%20Th%E1%BA%A1nh%2C%20H%E1%BB%93%20Ch%C3%AD%20Minh+(Ton%20Duc%20Thang%20University)&amp;ie=UTF8&amp;t=&amp;z=16&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><div style="position: absolute;width: 80%;bottom: 10px;left: 0;right: 0;margin-left: auto;margin-right: auto;color: #000;text-align: center;"><small style="line-height: 1.8;font-size: 2px;background: #fff;">Powered by <a href="https://embedgooglemaps.com/it/">Embedgooglemaps.com/it/</a> & <a href="http://merrymobiles.co.uk/">loadonline ph</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><br /></div></div>
<div class="span4"><h2>Thông tin liên hệ</h2>
<div class="span8"><h2>Thông tin</h2>
<div class="wpcf7" id="wpcf7-f208-p14-o1">
    <?php
        if ($_SERVER["REQUEST_METHOD"]=='POST')
        {
            $ten=$_POST['ten'];
            $email=$_POST['email'];
            $noidung=$_POST['noidung'];
            $query="insert into phanhoi(hoten, email, noidung, ngayph) values('$ten', '$email', '$noidung', now())";
            $rows=$db->exec($query);
            if($rows>0)
            {
                echo "<script>alert('Cảm ơn bạn đã phản hồi với chúng tôi, chúc bạn online vui vẻ')</script>";
            }
        }
        ?>
    
    <form action="" method="post" class="wpcf7-form" novalidate="novalidate">
<div style="display: none;">
<input type="hidden" name="_wpcf7" value="208"/>
<input type="hidden" name="_wpcf7_version" value="3.5.3"/>
<input type="hidden" name="_wpcf7_locale" value=""/>
<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f208-p14-o1"/>
<input type="hidden" name="_wpnonce" value="c0021f0448"/>
</div>
       
<div class="row-fluid">
<p class="span4 field"><span class="wpcf7-form-control-wrap your-name"><input type="text" name="ten" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" placeholder="Tên:"/></span> </p>
<p class="span4 field"><span class="wpcf7-form-control-wrap your-email"><input type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" placeholder="E-mail:"/></span> </p>
</div>
<p class="field"><span class="wpcf7-form-control-wrap your-message"><textarea name="noidung" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" placeholder="Nội dung:"></textarea></span> </p>
<p class="submit-wrap"><input type="reset" value="Xóa" style="text-transform: uppercase !important;" class="btn btn-primary"/><input type="submit" style="text-transform: uppercase !important;" value="Gửi" class="wpcf7-form-control wpcf7-submit btn btn-primary"/></p>
<div class="wpcf7-response-output wpcf7-display-none"></div>
    </form></div></div>
</div> 
<div class="clear"></div>
 
</div> 
</div>
</div>
</div>
</div>
</div>
</div>
