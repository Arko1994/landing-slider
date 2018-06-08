<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/responsive.css" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common2.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--Polianna js-->

<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/custom.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/menu_script.js"></script> 
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/enquire.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.tinycarousel.min.js"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.tipsy.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/scroll/scrolltopcontrol.js" type="text/javascript"></script>

<?php if( $this->config->get('polianna_himage') == 1){	?>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.gpCarousel.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.masonry.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/rotationbox.js"></script>
<?php } ?>
<?php if( $this->config->get('polianna_fastorder') == 1){	?>

<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/fastorder/fast_order.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/fast_order.css" />
<?php } ?>
<?php if( $this->config->get('polianna_fixedmenu') == 1){	?>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/fixmenu.js"></script>
<?php } ?>
<!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->




<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/polianna/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/polianna/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<?php if($this->config->get('polianna_title_font')!='' || $this->config->get('polianna_body_font')!='' || $this->config->get('polianna_anime_font')!='') {
		
		$regfonts = array('Arial', 'Verdana', 'Helvetica', 'Lucida Grande', 'Trebuchet MS', 'Times New Roman', 'Tahoma', 'Georgia' );
		
		// Titles font
		if (in_array($this->config->get('polianna_title_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('polianna_title_font') ?>:300,400,600&subset=latin,cyrillic&v1' rel='stylesheet' type='text/css'><?php 
		} 
        // Body font
		if (in_array($this->config->get('polianna_body_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('polianna_body_font') ?>:300,400,600&subset=latin,cyrillic&v1' rel='stylesheet' type='text/css'><?php 
		} 
        // Showtext font
		if (in_array($this->config->get('polianna_anime_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('polianna_anime_font') ?>:300,400,600&subset=latin,cyrillic&v1' rel='stylesheet' type='text/css'><?php 
		} 
?>
<?php } ?>
	<style type="text/css">
 
			body {
			<?php if($this->config->get('polianna_backgr_color')!='') { ?>
				background-color: <?php echo $this->config->get('polianna_backgr_color'); ?>;
			<?php 
			} 

		    if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = $this->config->get('config_ssl');
			else $path_image = $this->config->get('config_url');

			if($this->config->get('polianna_custom_pattern')!='') { ?>
				background-image: url("<?php echo $path_image . 'image/' .$this->config->get('polianna_custom_pattern') ?>"); 
				
				<?php if($this->config->get('repeat_bg')!='') { ?>
				background-repeat:<?php echo $this->config->get('repeat_bg'); ?>;
			   <?php } ?>
			   <?php if($this->config->get('position_bg')!='') { ?>
				background-position:<?php echo $this->config->get('position_bg'); ?>;
			   <?php } ?>
			   <?php if($this->config->get('attach_bg')!='') { ?>
				background-attachment:<?php echo $this->config->get('attach_bg'); ?>;
			   <?php } ?>
				
			<?php } 
			else if($this->config->get('polianna_pattern_overlay')!='none') { ?>
				background-image: url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/pattern/overlay<?php echo $this->config->get('polianna_pattern_overlay'); ?>.png");
			<?php } else { ?>
				background-image: none;
			<?php } ?>
			

		}
		<?php if($this->config->get('polianna_topbackgr_color')!='') { ?>
			#header, .breadcrumb, #topfooter, .main {background-color: <?php echo $this->config->get('polianna_topbackgr_color'); ?>;}
			<?php } 

		 if($this->config->get('polianna_bar_color')!='') { ?>
			.colormenu {background-color: <?php echo $this->config->get('polianna_bar_color'); ?>;}
			<?php } 
			
          if($this->config->get('polianna_menulink_color')!='') { ?>
			.menuResp > li > a, .navbar .btn-navbar div, .menu1 .mobilemenu a,
			.menu1 .mobilemenu li.customlink div, .btn-navbar div   {color: <?php echo $this->config->get('polianna_menulink_color'); ?>;}				
		<?php }
		
		if($this->config->get('polianna_hover_color')!='') { ?>
			.menu .menuResp > li:hover > a, .menu1 .mobilemenu a:hover {
				color: <?php echo $this->config->get('polianna_hover_color'); ?>;}
								
		<?php }	
		if($this->config->get('polianna_line1_color')!='') { ?>
			.menu .menuResp > li:hover, .menu1 .mobilemenu a:hover {
				background-color: <?php echo $this->config->get('polianna_line1_color'); ?>;}
				
		<?php }	
				
		if($this->config->get('polianna_subbar_color')!='') { ?>
			.menu .menuResp > li > div {background-color: <?php echo $this->config->get('polianna_subbar_color'); ?>;}
			<?php } 
		
		 if($this->config->get('polianna_menulink2_color')!='') { ?>
			.menu .menuResp ul li a, .menu .menuResp > li > div > ul > li > a span, .menu .menuResp > li > div > a, #topbrand .column_brand span {
				color: <?php echo $this->config->get('polianna_menulink2_color'); ?>;}				
		<?php }
		
		if($this->config->get('polianna_hover2_color')!='') { ?>
			.menu .menuResp ul li a:hover, .menu .menuResp > li > div > a:hover, .menu .menuResp > li > div > ul > li > a:hover span,
			#topbrand .column_brand a:hover span{
				color: <?php echo $this->config->get('polianna_hover2_color'); ?>;}				
		<?php }	
		
		if($this->config->get('polianna_fonlink2_color')!='') { ?>
			.menu .menuResp > li > div > ul > li > a span, #topbrand .column_brand span{
				background-color: <?php echo $this->config->get('polianna_fonlink2_color'); ?>;}				
		<?php }		 	
		
		if($this->config->get('polianna_categ_color')!='') { ?>
			.box-category > li > a, .box-account > li > a, .vtabs li a {
				color: <?php echo $this->config->get('polianna_categ_color'); ?>;}				
			
		<?php }	
		if($this->config->get('polianna_hovercateg_color')!='') { ?>
			.box-category li a:hover, .box-category > li > a.active, .box-account li a:hover,
			.vtabs li a:hover, .vtabs li a.selected  {
				color: <?php echo $this->config->get('polianna_hovercateg_color'); ?>;}
			.box-category li  a:hover, .box-category > li > a.active, .vtabs li a.selected,
		    .box-account li a:hover, .vtabs a:hover, .box-account li:hover{
			  border-color:<?php echo $this->config->get('polianna_hovercateg_color'); ?>;}			
		<?php }	
			
		
		if($this->config->get('polianna_footertitle_color')!='') { ?>
			#footer h3 {color: <?php echo $this->config->get('polianna_footertitle_color'); ?>;}				
			
		<?php }	
			
		if($this->config->get('polianna_footer_color')!='') { ?>
			#footer .column a{color: <?php echo $this->config->get('polianna_footer_color'); ?>;}				
		<?php }	
		
		if($this->config->get('polianna_footerhover_color')!='') { ?>
			#footer .column a:hover {
				color: <?php echo $this->config->get('polianna_footerhover_color'); ?>;}				
		<?php }	
		
				if($this->config->get('polianna_footerfon_color')!='') { ?>
			#footer .column a:hover {background-color: <?php echo $this->config->get('polianna_footerfon_color'); ?>;}				
		<?php }	
		
		if($this->config->get('polianna_footertext_color')!='') { ?>
			#footer, #powered, #powered a {color: <?php echo $this->config->get('polianna_footertext_color'); ?>;}				
		<?php }				
		
		if($this->config->get('polianna_alllink_color')!='') { ?>
			a, a b, .product-compare a{
				color: <?php echo $this->config->get('polianna_alllink_color'); ?>;}				
		<?php }	
		
		if($this->config->get('polianna_allactive_color')!='') { ?>
			a:hover, .breadcrumb a:hover, .product-compare a:hover, .boxfeatured .name a:hover, .product-grid .name a:hover, .product-list .name a:hover, .boxfeatured .description a:hover,
			.product-list .description a:hover, .checkout-heading a:hover, .st-accordion ul li > a:hover, .top-nav .topbox > a:hover,
			.verticaltab .name a:hover, .product-grid .description a:hover, .box-news h4 a:hover, .htabs a.selected, .htabs a:hover, #topbrand .column_brand li>div
			{color: <?php echo $this->config->get('polianna_allactive_color'); ?>;}
			
			.block:hover{border-color: <?php echo $this->config->get('polianna_allactive_color'); ?>;}
			.htabs a.selected, .htabs a:hover  {border-top-color: <?php echo $this->config->get('polianna_allactive_color'); ?>;}

         <?php }	
		
		if($this->config->get('polianna_bigtitle_color')!='') { ?>
			h1, h2, h4, .welcome #title, .product-info #opname, .verticaltab .name_categ a{color: <?php echo $this->config->get('polianna_bigtitle_color'); ?>;}				
		<?php }	

		
		if($this->config->get('polianna_titleitem_color')!='') { ?>
		.boxfeatured .name a, .product-grid .name a, .product-list .name a, .verticaltab .name a{color: <?php echo $this->config->get('polianna_titleitem_color'); ?>;}				
		<?php }
		
		if($this->config->get('polianna_smalltitle_color')!='') { ?>
			#column-left .box .box-heading, #column-right .box .box-heading, .manufacturer-heading{
				color: <?php echo $this->config->get('polianna_smalltitle_color'); ?>;}				
		<?php }
		
		
		if($this->config->get('polianna_activ_color')!='') { ?>
			.box .box-heading, #fast_order_form .fast_order_center{
				color: <?php echo $this->config->get('polianna_activ_color'); ?>;}				
		<?php }
		
		if($this->config->get('polianna_btext_color')!='') { ?>
			body, .boxfeatured .description a, .product-info .price-tax, .product-info .price .reward,
			.product-info .price .discount, .cart-total td b{
				color: <?php echo $this->config->get('polianna_btext_color'); ?>;}				
		<?php }
		if($this->config->get('polianna_topcart')!='') { ?>
		#cart > a{ background-color: <?php echo $this->config->get('polianna_topcart'); ?>;}				
		<?php }
		
		if($this->config->get('polianna_allprice_color')!='') { ?>
			.boxfeatured .price, .product-grid .price,  .product-list .price, .product-info .price, .verticaltab .price, .compare-info .price{
				color: <?php echo $this->config->get('polianna_allprice_color'); ?>;}				
		<?php }	
		
		if($this->config->get('polianna_oprice_color')!='') { ?>
			.boxfeatured .price-old, .product-grid .price-old, .product-list .price-old, .product-info .price-old, .verticaltab .price-old, .compare-info .price-old  {
				color: <?php echo $this->config->get('polianna_oprice_color'); ?>;}				
		<?php }	
		
		if($this->config->get('polianna_nprice_color')!='') { ?>
		.boxfeatured .price-new, .product-grid .price-new, .product-list .price-new, .product-info .price-new, .verticaltab .price-new, .compare-info .price-new{
				color: <?php echo $this->config->get('polianna_nprice_color'); ?>;}				
		<?php }	
		if($this->config->get('polianna_savemoney')!='') { ?>
		.savemoney{ background-color: <?php echo $this->config->get('polianna_savemoney'); ?>;}				
		<?php }
		
		if($this->config->get('polianna_button_color')!='') { ?>
			.boxfeatured .cart a.button, .product-grid .cart a.button, .product-list .cart a.button, .cart input.button,
			.verticaltab .cart a.button, a.button, input.button, a.checkbut, a.redbutton, button, .box-news .readmore {
				background-color: <?php echo $this->config->get('polianna_button_color'); ?>;}				
		<?php }
		if($this->config->get('polianna_buttonhov_color')!='') { ?>
			.boxfeatured .cart a.button:hover, .product-grid .cart a.button:hover, .product-list .cart a.button:hover, .verticaltab .cart a.button:hover, .colorbox div#plus,
			.wishlist a:hover, .compare a:hover, .singleclick_wrapper a:hover, .cart input.button:hover, a.button:hover, input.button:hover, a.checkbut:hover, button:hover,  a.redbutton:hover, .box-news .readmore:hover,
			 a#arrow_left:hover, a#arrow_right:hover, .fon_slider_button:hover ,#control:hover{
				background-color: <?php echo $this->config->get('polianna_buttonhov_color'); ?>;}				
		<?php }
		
		if($this->config->get('polianna_buttonlink_color')!='') { ?>
			.cart input.button, .product-list .cart a.button, .wishlist a:hover,  .compare a:hover, .singleclick_wrapper a:hover, .product-info .compare a:hover, .product-info .wishlist a:hover,
			a.button, input.button, a.checkbut, a.redbutton, button, .box-news .readmore {
				color: <?php echo $this->config->get('polianna_buttonlink_color'); ?>;}				
		<?php }

		
		if ($this->config->get('polianna_body_font') != '' ) {
			$fontpre =  $this->config->get('polianna_body_font');
			$font = str_replace("+", " ", $fontpre);
		?>

		body, input, textarea, select, .product-info .price-tax, .product-info .price .reward, .product-info .price .discount { font-family:<?php echo $font ?>; }

		<?php } 
			if($this->config->get('polianna_title_font')!='') {
			$fontpre =  $this->config->get('polianna_title_font');
			$font = str_replace("+", " ", $fontpre);
		?>

		h1, h2, h3, h4, .welcome,  .welcome #title,
		table.list thead td, .htabs a, .htabs a.selected ,
		.box .box-heading, #column-left .box .box-heading, #column-right .box .box-heading, #categorytab .name_categ a, 
		.menuResp > li > a, .menu1 .mobilemenu a, .menuResp > li > div > ul > li > a, .verticaltab .name a,
		.boxfeatured .name a, .product-grid .name a, .product-list .name a, .attribute thead td, .attribute thead tr td:first-child,
		.compare-info thead td, .compare-info thead tr td:first-child, .wishlist-info thead td, #fast_order_form .fast_order_center,
		.cart-info thead td, .checkout-heading, .checkout-product thead td, #footer h3, .product-info #opname, .st-accordion ul li > a, .navbar .textmenu   
		 {font-family:<?php echo $font ?>;}
		<?php }	
		
		
		
		if($this->config->get('polianna_title_h1')!='') { ?>
			 h1, .product-info .price,  .welcome #title, .verticaltab .name_categ a{
				font-size: <?php echo $this->config->get('polianna_title_h1'); ?>px;}				
		<?php }	
		
				if($this->config->get('polianna_title_h2')!='') { ?>
			 h2{
				font-size: <?php echo $this->config->get('polianna_title_h2'); ?>px;}				
		<?php }	
		
		if($this->config->get('polianna_title_h3')!='') { ?>
			 h3, #footer h3, .product-info #opname{
				font-size: <?php echo $this->config->get('polianna_title_h3'); ?>px;}				
		<?php }	
		
				if($this->config->get('polianna_title_h4')!='') { ?>
			 h4, .box-news h4 a{
				font-size: <?php echo $this->config->get('polianna_title_h4'); ?>px;}				
		<?php }	
		
		if($this->config->get('polianna_title_box')!='') { ?>
			.box .box-heading, #fast_order_form .fast_order_center {
				font-size: <?php echo $this->config->get('polianna_title_box'); ?>px;}				
		<?php }	
		
		if($this->config->get('polianna_title_column')!='') { ?>
			#column-left .box .box-heading, #column-right .box .box-heading {
				font-size: <?php echo $this->config->get('polianna_title_column'); ?>px;}				
		<?php }
		
		if($this->config->get('polianna_title_product')!='') { ?>
			.boxfeatured .name a, .product-grid .name a, .product-list .name a, .verticaltab .name a{font-size: <?php echo $this->config->get('polianna_title_product'); ?>px;}				
		<?php }	
		
		if($this->config->get('polianna_bodysize')!='') { ?>
			body, input, textarea, select, .product-info .price-tax, .product-info .price .reward, .product-info .price .discount, .menuResp ul li a{
				font-size: <?php echo $this->config->get('polianna_bodysize'); ?>px;}				
		<?php }	
		
		if($this->config->get('polianna_pricesize')!='') { ?>
          .boxfeatured .price, .product-grid .price, .product-list .price, .verticaltab .price {
				font-size: <?php echo $this->config->get('polianna_pricesize'); ?>px;}				
		<?php }	
		
		if($this->config->get('polianna_toplinksize')!='') { ?>
			.menuResp > li > a, .menu1 .mobilemenu a, .navbar .textmenu {font-size: <?php echo $this->config->get('polianna_toplinksize'); ?>px;}				
		<?php }	
		if($this->config->get('polianna_toplinksize2')!='') { ?>
		.menuResp > li > div > ul > li > a, .mobilemenu ul a{font-size: <?php echo $this->config->get('polianna_toplinksize2'); ?>px;}				
		<?php }		
		
		if($this->config->get('polianna_categorysize')!='') { ?>
			.box-category > li > a, .box-account > li > a, .vtabs li a 
			{font-size: <?php echo $this->config->get('polianna_categorysize'); ?>px;}				
		<?php }	
			if($this->config->get('polianna_widthmenu')== 1)  { ?>
			.colormenu{width:1170px;}
			.topnote{width:1170px;}
			@media only screen and (max-width: 1200px){
			.colormenu{ min-width:270px; width: auto;}
			.topnote{ min-width:270px; width: auto;}
			}			
		<?php }	
		if($this->config->get('polianna_himage')== 1) { ?>
			.product-filter .display{display:none;}

			@media only screen and (max-width: 980px){
				.product-compare a{ clear: none;}
			}
			
		<?php }	
	   
	   		if($this->config->get('polianna_descr_enable')== 1)  { ?>
			.product-grid .description{display:block;}			
		<?php }	
		
		if($this->config->get('polianna_slideshow')== 2)  { ?>
			.image_slider{ 
			position:fixed; top:0;
			-moz-background-size: cover;
            -webkit-background-size:cover;
            -o-background-size:cover;
           -khtml-background-size:cover;
             background-size:cover;
			 height:100%;
	        overflow:hidden;
	        width:100%;}	
		<?php }	
		if($this->config->get('polianna_slideshow')== 3)  { ?>
			.image_slider{ 	
			-moz-background-size: 100%;
            -webkit-background-size:100% auto;
            -o-background-size:100% auto;
           -khtml-background-size:100%;
             background-size:100%;}	
		<?php }	
		if($this->config->get('polianna_slideshow')== 1)  { ?>
			.camera_wrap{
				max-width:1170px;
				margin:20px auto 0;}	
		<?php }		 
							 
																
		?>

   	</style>     


<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>


</head>
<body>
<div id="container">
 
<div id="header">
 <div class="top-header">
 <div class="prapper">
 
   <?php  if (($this->config->get('polianna_search') != '2') && ($this->config->get('polianna_search') != '3')) { ?>
   <div id="search">
   <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
   </div>
  <?php } ?>

<?php
$this->language->load('module/polianna');
$text_news = $this->language->get('text_news');
$text_menu = $this->language->get('text_menu');
$text_brand2 = $this->language->get('text_brand2');
$text_account2 = $this->language->get('text_account2');
$text_check2 = $this->language->get('text_check2');
$text_info2 = $this->language->get('text_info2');
$text_cart2 = $this->language->get('text_cart2');
?>

   <div class="top-nav">  
     
  <!--Cart-->  
     <?php echo $cart; ?>
  <!--End cart--> 
<div id="mobile-welcome">
    <?php if (!$logged) { ?>
      <?php echo $text_welcome; ?>
      <?php } else { ?>
      <?php echo $text_logged; ?>
      <?php } ?>
    </div>
  
  <!--Account-->  
    <div class="topbox topaccount">
    
   <a href="<?php echo $account; ?>"><?php echo $text_account2; ?></a>
    <?php if (isset($entry_email)) { ?>
  <div class="dropdown_fullwidth">
   <div>
   <ul>
     <li id="welcome">
      <?php if (!$logged) { ?>
      <?php echo $text_welcome; ?>
      <?php } else { ?>
      <?php echo $text_logged; ?>
      <?php } ?>
      </li>
   
   <?php if (!$this->customer->isLogged()) { ?>
      <li id="loginform">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <div><input type="text" name="email" value="<?php echo $entry_email; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /> </div>
          <div><input type="password" name="password" value="<?php echo $entry_password; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /></div>
          <div><input type="submit" value="<?php echo $button_login; ?>" class="button" /></div>
          <div><a href="<?php echo $forgotten; ?>" ><?php echo $text_forgotten; ?></a></div>
        </form> </li>   
         
          <?php } ?>
    </ul>
    </div>
   </div>
 <?php } ?>
</div>

 <!--End account-->
 
 <?php if (isset($text_contact)){ ?>
 <!--Information-->  
    <div class="topbox topaccount">
    <a href="#"><?php echo $text_info2; ?></a>
   
     <div class="dropdown_fullwidth">
      <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
    </ul>

     </div>
         
    </div>
     <!--End Information-->  
     <?php } ?> 
     
      <div class="topbox topmobile"><a href="<?php echo $shopping_cart; ?>"><?php echo $text_cart2; ?></a></div>
  <div class="topbox topmobile"><a href="<?php echo $checkout; ?>"><?php echo $text_check2; ?></a></div>
     <!--News--> 
     <?php if ( $this->config->get('polianna_blog_enable') == '1'){	?> 
    <div class="topbox topmobile">
        <a href="<?php echo $base; ?>index.php?route=information/allnews"><?php echo $text_news; ?></a>
      </div>
     <?php } ?>
     <!--End news--> 
     
       <!--Mobile select-->  
   <div id="mobile-menu">

	<select id="mobile-menu-select" onchange="location = this.value">
         <option value=""><?php echo $text_info2; ?></option> 
          <?php if ($this->config->get('polianna_wishlist') == '1') {?> 
         <option value="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></option>
         <?php } ?>
       <?php if ( $this->config->get('polianna_blog_enable') == '1'){	?> 
         <option value="<?php echo $base; ?>index.php?route=information/allnews"><?php echo $text_news; ?></option>
         <?php } ?>
         <option value="<?php echo $checkout; ?>"><?php echo $text_check2; ?></option> 
         <option value="<?php echo $shopping_cart; ?>"><?php echo $text_cart2; ?></option>
         <option value="<?php echo $account; ?>"><?php echo $text_account2; ?></option>

         <?php if (isset($text_contact)){ ?>
         <option value="<?php echo $contact; ?>"><?php echo $text_contact; ?></option>
         <option value="<?php echo $return; ?>"><?php echo $text_return; ?></option>
         <option value="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></option>
          <?php foreach ($informations as $information) { ?>
          <option value="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></option>
          <?php } ?>
          <?php } ?>


      </select>
</div>
<!--End mobile select--> 
      <?php if ($this->config->get('polianna_wishlist') == '1') {?> 
    <div class="topbox wishlist-tot topmobile"><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></div>
    <?php } ?>
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div class="ctr"></div>

 </div>
 </div>

 
  </div>  


 <div class="relat prapper">
 <!--logo-->
  <?php if ($logo) { ?>
  <div class="top_logo">
  <?php if ($home == $og_url) { ?>
  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
  <?php } else { ?>
  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" ></a>
  <?php } ?>
  </div>
  <?php } ?>
 <!--end logo-->
  
             <div class="top_info">
              <?php  if ($this->config->get('polianna_search') == '2') { ?>
    <!--search position2-->
   <div id="search">
   <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
   </div>
   <!--end search-->
  <?php } ?>
     
              
               <?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = $this->config->get('config_ssl');
			    else $path_image = $this->config->get('config_url');?>
                
                <?php if (($this->config->get('polianna_custom_icon1')!='') || ( $this->config->get('polianna_custom_topinfo1') != '')) { ?> 
                 <div class="topinfo1">
			    <?php if($this->config->get('polianna_custom_icon1')!='') { ?>
				   <img src="<?php echo $path_image .'image/' . $this->config->get('polianna_custom_icon1') ?>" alt="clock">
                <?php } ?>
               
               <?php if ( $this->config->get('polianna_custom_topinfo1') != ''){	?>
                  <?php echo html_entity_decode($this->config->get('polianna_custom_topinfo1')); ?>  
                 <?php } ?>
                 </div> 
                <?php } ?> 
                
                <?php if (($this->config->get('polianna_custom_icon2')!='') || ( $this->config->get('polianna_custom_topinfo2') != '')) { ?>               
                <div class="topinfo2">
                <?php if($this->config->get('polianna_custom_icon2')!='') { ?>
				   <img src="<?php echo $path_image .'image/' . $this->config->get('polianna_custom_icon2') ?>" alt="phone" >
                <?php } ?>
                
               <?php if ( $this->config->get('polianna_custom_topinfo2') != ''){	?>
                <?php echo html_entity_decode($this->config->get('polianna_custom_topinfo2')); ?>  
               <?php } ?> 
               </div> 
               <?php } ?>
               
             </div>  

           

 <div class="ctr"></div>

 </div> 



 <!--Menu-->  
<div class="colormenu default">
<div class="prapper">

  <?php  if ($this->config->get('polianna_search') == '3') { ?>
    <!--search position3-->
   <div id="search">
   <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
   </div>
   <!--end search-->
  <?php } ?>   
    
<div id="navbar-inner" class="navbar-inner navbar-inactive">
                                
                                     <a class="btn btn-navbar"><div><?php echo $text_menu; ?></div>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </a>
                                    
                              
                                 
                                   
 <div id="menu" class="menu">
  <ul  id="ma-mobilemenu" class="mobilemenu menuResp">
                                        <li class="home active">
                                             <a href="index.php"><span><?php echo $this->language->get('text_home'); ?></span></a>
                                        </li>
                                         <?php if ($categories) { ?>
                                        <?php foreach ($categories as $category) { ?>
                                        <li <?php if ($category['children']) { ?> class="level-top parent" <?php }?> ><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span></a>
                                            <?php if ($category['children']) { ?>
                                            <div class="topmenu"> 
    <?php if($this->config->get('polianna_img1_menu')!= 0) { ?>  
      <div class="categ_image">
       <?php if (isset($category['img'])) { ?>
         <img src="<?php echo $category['img']; ?>" alt="<?php echo $category['name']; ?>"/>
       <?php } ?> 
       
         <?php if (isset($category['description'])){ ?> 
          <a href="<?php echo $category['href']; ?>"><?php echo $category['description']; ?></a>
          <?php } ?>
      </div>
     <?php } ?> 
     
     <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if ((isset($category['children'][$i])) && ($category['children'][$i])) { ?>
          
          
         <li class="subcategory  <?php if(!empty($category['children'][$i]['children'] )) { ?>parent <?php } ?>">  
       
         <a href="<?php echo $category['children'][$i]['href']; ?>">
         
         <?php if ((!empty($category['children'][$i]['image_src'])) && ($this->config->get('polianna_img2_menu')!= 0)) { ?>
         <div class="sub_image"> <img src="<?php echo $category['children'][$i]['image_src']; ?>" alt="<?php echo $category['children'][$i]['name']; ?>"></div>
        <?php } ?> 
        
          <span><?php echo $category['children'][$i]['name']; ?></span>
         
           </a>
            <?php if(!empty( $category['children'][$i]['children'] )) { ?>
            <div>
              <ul>
              <?php foreach( $category['children'][$i]['children'] as $menu3item ) { ?>
              <li><a href="<?php echo $menu3item['href']; ?>"><?php echo $menu3item['name']; ?></a></li>
              <?php } ?>
              </ul>
            </div>
            <?php } ?>
            
           
            
          </li>
          <?php } ?>
          <?php } ?>
       
        </ul>
        <?php } ?>
                                            </div>
                                            <?php } ?>
                                        </li>
                                    <?php } ?>
                                     <?php } ?>
                                     
     <?php if(( $this->config->get('polianna_specials_link') == '1')&& (isset($special))){	?>
     <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
     <?php } ?>
                                          
    
         <?php if (($this->config->get('polianna_brands') == '1') && (isset($brands))) {  ?>
          <!--Link Brand-->  
          <li><a href="<?php echo $href_manufacturer; ?>"><?php echo $text_brand2; ?></a>
          
          <?php $k = ceil(count($brands)/3); ?>
           <div class="topmenu br_<?php echo $k; ?>" id="topbrand">
           
              <?php foreach ($brands as $brand) { ?>
                <ul>
                <li><div><?php echo $brand['name']; ?></div>
                <?php if ($brand['manufacturer']) { ?>

                <?php foreach ($brand['manufacturer'] as $letter) { ?>
                <a href="<?php echo $letter['href']; ?>">
                <?php if (isset($letter['img'])) { ?>
                <div class="sub_image">
                <img src="<?php echo $letter['img']; ?>" title=" <?php echo $letter['name']; ?>" alt=" <?php echo $letter['name']; ?>">
                </div>
                <?php } ?>
                <span><?php echo $letter['name']; ?></span></a>
                <?php } ?>

                <?php } ?>
               </li>
                </ul>

              <?php } ?>
      
            </div>
           </li>
          <!--end Link Brand-->
           <?php }?>
                                      
                                       
        <?php 
       $Top_m_link = $this->registry->get('Top_m_link'); 
        if ((isset($Top_m_link)) && ($Top_m_link)) { ?>
        <!--custom link-->  
        <?php 	

       $l_id = $this->config->get('config_language_id');

       foreach ($Top_m_link as $item) { 
       if (array_key_exists($l_id, $item['namelink'])){ ?>
        <li><a href="<?php echo $item['url']; ?>" title="<?php echo $item['namelink'][$l_id]; ?>" class="top-lvl"><?php echo $item['namelink'][$l_id]; ?></a></li>
        <?php } 
        } ?>
        <!--end custom link-->  
       <?php } ?>
                                       
       <?php  
      $htmlmenu_t1 = $this->registry->get('htmlmenu_t1');
      $htmlmenu_t2 = $this->registry->get('htmlmenu_t2');
      if (($htmlmenu_t1) && (isset($htmlmenu_t1))&& ($htmlmenu_t1 != '') ){ ?>
     <!--custom block-->  

    
    <li class="customlink parent">
	<a class="top-lvl"><?php echo $htmlmenu_t1; ?></a>

     <?php  if((isset($htmlmenu_t2)) && ($htmlmenu_t2 != '')){?>
    
		<div><?php echo $htmlmenu_t2; ?></div>
        
    <?php } ?>
    
</li>

   <!--end custom block-->  
<?php } ?> 
                                     
                                       
   </ul>

</div>  
</div>
</div>
 <!--End Menu-->
  
  <div class="ctr"></div>

</div>  
</div>
 
<div class="main"><div class="topnote"><div id="notification"></div></div></div>

