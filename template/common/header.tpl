<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sisisil/stylesheet/elastic.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sisisil/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/sisisil/js/elastic.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
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
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1&appId=228536120500237";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="unit horizontal-center" id="ss-wrapper">
	<div id="ss-top-header" class="unit horizontal-center">
		<div class="columns">
			<div class="column fixed" style="width:430px;">
				<div class="container"> 
					&nbsp;
				</div>
			</div>
			<div class="column fixed" style="width:590px;">
				
				<div class="columns">
					<div class="column fixed" style="width:200px;">
						<div class="container"> 
							<?php echo $cart; ?>
						</div>
					</div>
					<div class="column fixed" style="width:390px;">
						<div class="container ss-top-menu"> 
							<ul>
								<?php if (!$logged) { ?>
								<li><a href="index.php?route=account/login">Login</a></li>
								<li><a href="index.php?route=account/register">Signup</a></li>
								<?php } else { 
									echo "<div class=\"text-logged\">".$text_logged."</div>"; 
								} ?>
								<li><a href="<?php echo $shopping_cart; ?>">Pesanan saya</a></li>
								<li><a href="<?php echo $account; ?>">Akun Saya</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
	<div id="ss-header" class="unit horizontal-center">
		<div class="columns" >
			<div class="column fixed" style="width:350px;">
				<div id="ss-logo" class="container" style="padding:13px 0 0 5px;"> 
					<a href=""><img src="catalog/view/theme/sisisil/image/logo-sisisil.png" alt="logo"/></a>
				</div>
			</div>			

			<div class="column fixed" style="width:670px;"> 
				<div id="search">
					<div class="button-search"></div>
					<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
				</div>
				<div class="container ss-menu"> 
					<ul>
						<li><a href="<?php echo $home; ?>" <?php if ($title=="Sisisil - Home") { echo "class=\"current\""; } ?>><?php echo $text_home; ?></a></li>
						<li><a href="index.php?route=information/information&information_id=4" <?php if ($title=="Sisisil - Tentang Kami") { echo "class=\"current\""; } ?>><?php echo "Tentang Kami"; ?></a></li>
						<li><a href="index.php?route=common/product" 
						<?php if ($title=="Sisisil - Produk Kami") { echo "class=\"current\""; } if (isset($_GET['route'])) { if ($title=="Sisisil - Produk Kami" || substr($_GET['route'], 0, 7)=="product") { echo "class=\"current\""; }	} ?>><?php echo "Produk Kami"; ?></a></li>
						<li><a href="index.php?route=information/information&information_id=6" <?php if ($title=="Sisisil - Cara Memesan") { echo "class=\"current\""; } ?>><?php echo "Cara Memesan"; ?></a></li>
						<li><a href="index.php?route=information/contact" <?php if ($title=="Sisisil - Hubungi Kami") { echo "class=\"current\""; } ?>><?php echo "Hubungi Kami"; ?></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div id="ss-bottom-header" class="unit horizontal-center">
		<?php if ($title=="Sisisil - Home") { ?>
			<div style="background:url('catalog/view/theme/sisisil/image/bg-pesan-sisisil-top.png') left bottom no-repeat;height:95px;margin-left:13px;"></div>
		<?php } ?>
	</div>
