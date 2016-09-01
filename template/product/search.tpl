<?php echo $header; ?>

<div class="unit horizontal-center" style="width:1020px;padding-bottom:30px;margin-top:50px;" >
			
	<div class="columns">
		<div class="column fixed" style="width:780px;">
			<div class="container"> 
				
				<div class="columns" style="padding-bottom:13px;">
					<div class="column fixed" style="width:200px;">
						<div class="container"> 
							<div style="width:182;min-height:100px;margin-left:13px;margin-top:2px;">
								<div style="width:160px;text-align:center;padding:10px;padding-top:40px;font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:20px;color:#a0d0b0;" >											
									<b><?php echo "Hasil Pencarian" ?></b>
								</div>
								<?php echo $column_left; ?>
							</div>
						</div>
					</div>
					<div class="column fixed" style="width:580px;">
						<div class="container" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;color:#5e3e1a;font-size:12px;"> 
							
							<?php
							if ($page <= $pages_total) {
							?>
								
								<div style="float:left;width:430px;height:70px;">
							  Pencarian <b><?php echo $search; ?></b> hasil pencarian <b><?php echo $product_total; ?></b><br /><br />
							  Menampilkan <b><?php 
							  
							  if ($page == 1) {
							  	$product_from = 1;
							  } else {
							  	$product_from = (($page - 1) * $limit) + 1;
							  }
							  
							  if ($page != $pages_total) {
							  	echo $product_from." - ".($product_from + ($limit-1));
							  } else {
							    if ($product_total == 10) {
							    	echo $product_from." - "."10";
							    } else {
							    	echo $product_from." - ".($product_from + (($product_total%$limit)-1));
							    }
							  }
							
							  ?> </b> dari <b><?php echo $product_total; ?></b>
							</div>
							<div style="float:left;width:150px;height:70px;padding-top:10px;">
								<br />
								<div style="float:right;width:27px;height:27px;">
									<?php
									if ($page != $pages_total) {
									?>
										<a href="index.php?route=product/search&search=<?php echo $search; ?>&page=<?php echo $page+1; ?>"><img src="catalog/view/theme/sisisil/image/btn_next_paging.png" title="Button Prev Paging" alt="Button Prev Paging" /></a>
									<?php
									}
									?>
								
								</div>
								
								<div style="float:right;min-width:27px;height:27px;text-align:center;padding-left:10px;padding-right:10px;padding-top:5px;">
									<?php
									if ($pages_total != 1) {
									?>
										<?php echo $page; ?> - <?php echo $pages_total ?>
									<?php
									}
									?>
								</div>
								
								<div style="float:right;width:27px;height:27px;">
									<?php
									if ($page != 1) {
									?>
										<a href="index.php?route=product/search&search=<?php echo $search; ?>&page=<?php echo $page-1; ?>"><img src="catalog/view/theme/sisisil/image/btn_prev_paging.png" title="Button Prev Paging" alt="Button Prev Paging" /></a>
									<?php
									}
									?>
								</div>
							
							</div>
								
							<?php
							}
							?>
							
						
							  <!--<div class="pagination"><?php echo $pagination; ?></div>-->
							
							  <?php if ($products) { ?>
							  <div class="product-list" >
								<?php foreach ($products as $product) { ?>
								<div style="width:110px;text-align:center;margin-right:3px;">
								  <?php if ($product['thumb']) { ?>
								  <div class="img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" style="border: 1px solid #dddddd;" /></a></div>
								  <?php } ?>
								  <div class="name"><a href="<?php echo $product['href']; ?>" style="color:#666666;"><?php echo $product['name']; ?></a></div>
								  <!--<div class="description"><?php echo $product['description']; ?></div>-->
								  <!--
								  <?php if ($product['price']) { ?>
								  <div class="price">
									<?php if (!$product['special']) { ?>
									<?php echo $product['price']; ?>
									<?php } else { ?>
									<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
									<?php } ?>
									<?php if ($product['tax']) { ?>
									<br />
									<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
									<?php } ?>
								  </div>
								  <?php } ?>
								  <?php if ($product['rating']) { ?>
								  <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
								  <?php } ?>
								  <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
								  <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
								  <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
									-->
								</div>
								<?php } ?>
							  </div>
							  <?php } else { ?>
							  <div class="content"><?php echo $text_empty; ?></div>
							  <?php }?>
							  <?php echo $content_bottom; ?>
							
						</div>
					</div>
				</div>
				
				
				
			</div>
		</div>
		<div class="column fixed" style="width:10px;">
			<div class="container" > 
				&nbsp;
			</div>
		</div>
		<div class="column fixed" style="width:230px;">
			<div class="container" > 
				<div style="width:230px;height:37px;">
				<div style="width:80px;float:left;">
					<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
				</div>
				<div style="width:150px;float:left;">
					<div class="fb-like" data-send="true" data-layout="button_count" data-width="100" data-show-faces="true"></div>
				</div>
				</div>
				<?php echo $column_right; ?>
			</div>
		</div>
	</div>
	
</div>



<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			//html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			//html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			//html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.img').html();
			
			if (image != null) { 
				html += '<div class="img">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
						
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.img').html();
			
			if (image != null) {
				html += '<div class="img">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}	
					
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			//html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			//html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			//html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}

display('grid');

//--></script> 
<?php echo $footer; ?>