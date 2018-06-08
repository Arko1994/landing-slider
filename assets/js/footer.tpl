</div> 

 <?php 
 if($this->config->get('polianna_facebook_lenta') != '') $column_f1 = 1; else $column_f1 = 0;
 if($this->config->get('polianna_vcom_lenta') != '') $column_f2 = 1; else $column_f2 = 0;
 if($this->config->get('polianna_odn_lenta') != '') $column_f3 = 1; else $column_f3 = 0;
  if (($this->config->get('polianna_tw_lenta') != '') && ($this->config->get('polianna_tw_lenta2') != '')) $column_f4 = 1; else $column_f4 = 0;
$column_f = $column_f1 + $column_f2 + $column_f3 + $column_f4;
  ?>



  <div id="topfooter">
    <div class="prapper">
   
     <div class="part  <?php if ($this->config->get('polianna_footerinfo_enable') == 0) { ?>topfooter-info <?php }?>"> 
     <!--custom text-->
 <?php 
 $cusom_f = $this->registry->get('cusom_f');
 if ((isset($cusom_f)) && ($cusom_f)){ ?>
         <?php echo $cusom_f; ?>
         <?php } ?>
       <!--end custom text-->  
       

        
                        
    <?php 
     $cusom_network = $this->registry->get('cusom_network');
    if(isset($cusom_network)) { ?>
 <!--Network icons--> 
 <div class="socset">
  <ul>
 
     <?php foreach ($cusom_network as $item) { ?>
        <li><a href="<?php echo $item['href']; ?>" style="background-image:url('<?php echo $item['image']; ?>');" title="<?php echo $item['title']; ?>" target="_blank"></a></li>
      <?php }?>

          </ul>
                     </div> 
    <!--end Network icons-->  
    <?php }?>                       
                      

   </div> 
   
 <?php if ($this->config->get('polianna_footerinfo_enable')!= 0) { ?>               
   <div class="part">  
            
   <!--contact-->
   
    <ul class="footercontact">
     <?php if($this->config->get('polianna_footer_phone') != '') { ?>
      <li class="phone_f"><?php echo $this->config->get('polianna_footer_phone')?></li>
     <?php } ?>
     
     <?php if($this->config->get('polianna_footer_clock') != '') { ?>
      <li class="clock_f"><?php echo $this->config->get('polianna_footer_clock')?></li>
     <?php } ?>
     
       <?php if($this->config->get('polianna_footer_address') != '') { ?>
      <li class="address_f"><?php echo $this->config->get('polianna_footer_address')?></li>
     <?php } ?>
      
      
      <?php if($this->config->get('polianna_footer_email') != '') { ?> 
      <li class="email_f"><a href="mailto:<?php echo $this->config->get('polianna_footer_email')?>"><?php echo $this->config->get('polianna_footer_email')?></a></li>
      <?php } ?>
      
      <?php if($this->config->get('polianna_footer_skype') != '') { ?>
      <li class="skype_f"><a href="skype://<?php echo $this->config->get('polianna_footer_skype')?>"><?php echo $this->config->get('polianna_footer_skype')?></a></li>
     <?php } ?>

    </ul>
   
    <!--end contact-->        
           
     </div>
 <?php } ?> 
   
 </div>
</div>


 
<div id="footer">
    <div class="prapper part<?php echo $column_f; ?>">
     
<div class="part">
   <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>

  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  
     <?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?> 
  
  
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <?php if ($this->config->get('polianna_wishlist') == '1') {?> <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li><?php } ?>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>


  
  
 </div> 
   	
         
        <?php if($this->config->get('polianna_facebook_lenta') != '') { ?>
        <!--FACEBOOK-->
      <div class="vcomcolumn">
        <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ru_RU/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

        
       <h3>Facebook</h3>
       <div class="fb-like-box" data-href="https://www.facebook.com/<?php echo $this->config->get('polianna_facebook_lenta')?>" data-width="235" data-height="210" data-show-faces="true" data-colorscheme="dark" data-stream="false" data-show-border="false" data-header="false"></div>

      
     </div> 
     <!--end FACEBOOK--> 
        <?php } ?>

        <?php if($this->config->get('polianna_vcom_lenta') != '') { ?>   
        <!--VCOM-->	

<div class="vcomcolumn">
<h3>ВКонтакте</h3>
<script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>

<!-- VK Widget -->
<div id="vk_groups"></div>
<script type="text/javascript">
VK.Widgets.Group("vk_groups", {mode: 0, width: "250", height: "220", color1: 'FFFFFF', color2: '2B587A', color3: '5B7FA6'}, <?php echo $this->config->get('polianna_vcom_lenta'); ?>);
</script>
</div>
<!--end vk-->
        <?php } ?>


 <?php if($this->config->get('polianna_odn_lenta') != '') { ?>
<!--odnoklassniki-->
<div class="vcomcolumn">
<h3>Одноклассники</h3>
<div id="ok_group_widget"></div>
<script>
!function (d, id, did, st) {
  var js = d.createElement("script");
  js.src = "http://connect.ok.ru/connect.js";
  js.onload = js.onreadystatechange = function () {
  if (!this.readyState || this.readyState == "loaded" || this.readyState == "complete") {
    if (!this.executed) {
      this.executed = true;
      setTimeout(function () {
        OK.CONNECT.insertGroupWidget(id,did,st);
      }, 0);
    }
  }}
  d.documentElement.appendChild(js);
}(document,"ok_group_widget","<?php echo $this->config->get('polianna_odn_lenta')?>","{width:250,height:220}");
</script>
</div>
<!--end odnoklassniki-->
<?php } ?>
 <?php if (($this->config->get('polianna_tw_lenta') != '') && ($this->config->get('polianna_tw_lenta2') != '')) { ?>
<!--TWITTER-->
<div class="vcomcolumn">
<h3>Twitter</h3>
<a class="twitter-timeline" height="220" width="250" data-link-color="#aaa" href="https://twitter.com/<?php echo $this->config->get('polianna_tw_lenta'); ?>" data-chrome="noheader nofooter noborders  noscrollbar" data-theme="light"  data-related="twitterapi,twitter" data-aria-polite="assertive" data-widget-id="<?php echo $this->config->get('polianna_tw_lenta2'); ?>">Tweets by @<?php echo $this->config->get('polianna_tw_lenta'); ?></a>
		<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
		
</div>
<!--end twitter-->
<?php } ?>

   </div>
</div>

<div id="powered">
    <div class="prapper">
   <!--Paymetod-->	

   <div class="paymetod">
   <ul>
      <?php if($this->config->get('polianna_master')== 1) { ?> 
     <li id="master"></li>
      <?php } ?>
     <?php if($this->config->get('polianna_visa')== 1) { ?> 
     <li id="visa"></li>
     <?php } ?>
     <?php if($this->config->get('polianna_moneybookers')== 1) { ?> 
     <li id="moneybookers"></li>
     <?php } ?>
     <?php if($this->config->get('polianna_paypal')== 1) { ?> 
     <li id="paypal"></li>
     <?php } ?>
     <?php if($this->config->get('polianna_american')== 1) { ?> 
     <li id="american"></li>
     <?php } ?>
     <?php if($this->config->get('polianna_discover')== 1) { ?> 
     <li id="discover"></li>
     <?php } ?>
     <?php if($this->config->get('polianna_cirrus')== 1) { ?> 
      <li id="cirrus"></li>
      <?php } ?>
     <?php if($this->config->get('polianna_egold')== 1) { ?> 
       <li id="egold"></li>
       <?php } ?>
     <?php if($this->config->get('polianna_delta')== 1) { ?> 
            <li id="delta"></li>
            <?php } ?>
     <?php if($this->config->get('polianna_western')== 1) { ?> 
      <li id="western"></li>
      <?php } ?>
     <?php if($this->config->get('polianna_direct')== 1) { ?> 
       <li id="direct"></li>
       <?php } ?>
     <?php if($this->config->get('polianna_2checkout')== 1) { ?> 
            <li id="two_checkout"></li>
            <?php } ?>
     <?php if($this->config->get('polianna_sage')== 1) { ?> 
      <li id="sage"></li>
      <?php } ?>
     <?php if($this->config->get('polianna_solo')== 1) { ?> 
       <li id="solo"></li>
       <?php } ?>
     <?php if($this->config->get('polianna_switch')== 1) { ?> 
            <li id="switch"></li>
            <?php } ?>
     <?php if($this->config->get('polianna_electron')== 1) { ?> 
      <li id="electron"></li>
      <?php } ?>
     <?php if($this->config->get('polianna_maestro')== 1) { ?> 
       <li id="maestro"></li>
       <?php } ?>
     <?php if($this->config->get('polianna_google')== 1) { ?> 
      <li id="google"></li>
       <?php } ?>
   </ul>
   
   </div>

   <!--End Paymetod-->	
   
   
<!--copyright-->	
   
             <div id="copy">
					<?php if($this->config->get('polianna_copyright') != '') { ?>
						<div><?php echo $this->config->get('polianna_copyright'); ?></div>
					<?php } else { ?>
						
						<div><?php echo $this->config->get('config_name'); ?> &copy;2013. Powered by <a href="http://www.opencart.com">OpenCart</a></div>
					<?php } ?>
                    
                    </div>


   <!--end copyright-->	
   </div>


</div>
</div>
 <?php if( $this->config->get('polianna_fastorder') == '1'){
require 'catalog/view/theme/polianna/template/module/singleclick.tpl';
} ?>
 <script type="text/javascript">
$(document).ready(function() {
	$('.select1').customStyle1();
  });
 </script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.accordion.js"></script>
</body></html>