<?php echo $header; ?>
<div class="unit horizontal-center" style="width:1020px;padding-bottom:13px;margin-top:-45px;" >
	<div class="columns">
		<div class="column fixed" style="width:1020px;">
			<div class="container"> 
				<div class="columns" style="padding-bottom:13px;">
					<div class="column fixed" style="width:200px;">
						<div class="container"> 
							<div style="width:182;height:50px;margin-left:13px;"></div>
							<div style="width:182;min-height:100px;margin-left:13px;">
								<div style="width:160px;text-align:center;padding:10px;padding-top:40px;font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:20px;color:#a0d0b0;" >											
									<b><?php echo "Produk Kami" ?></b>
								</div>
								<?php echo $column_left; ?>
							</div>
						</div>
					</div>
					<div class="column fixed" style="width:36px;">
						<div class="container"> 
							&nbsp;
						</div>
					</div>
					<div class="column fixed" style="width:784px;">
						<div class="container">
							<div style="width:777;height:50px;">
								<div id="notification"></div>
							</div>
							<div style="width:777px;height:347px;float:left;border-bottom: 1px solid #cccccc;"> 
								<?php 
								$image = $this->model_tool_image->resize($fullImage, 777, 337, 'w');
								?>
								<img src="<?php echo $image; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
							</div>
							<div style="width:777px;float:left;"> 
							
								<div class="columns" style="min-height:100px;padding-bottom:10px;">
									<div class="column fixed" style="width:309px;">
										<div class="container"> 
											<div class="ss-breadcrumb">
												<?php foreach ($breadcrumbs as $breadcrumb) { 
														if ($breadcrumb['href'] == null) {
															echo $breadcrumb['separator']; echo "<span class='current-product'>".$breadcrumb['text']."</span>"; 
														} else {
															echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
												<?php 
														}
													} ?>
											</div>
											<?php if ($category_info['parent_id'] != 0) { ?>
											
											<?php $other_products_info = $this->model_catalog_product->getProducts(array('filter_category_id' => $category_info['category_id'])); 
											$other_product_info_total = 0;
											foreach ($other_products_info as $other_product_info) {  
												$other_product_info_total += 1;
											} 
											if ($other_product_info_total > 1) {
											?>
											<div class="ss-other-product">
												<?php echo $category_info['name']; ?>
												<ul style="padding-top:10px;">
													<?php foreach ($other_products_info as $other_product_info) {  ?>
														<li>
														<?php
															if ($product_id == $other_product_info['product_id']) {
																$currentProduct = $other_product_info['name'];
																$currentHref = $this->url->link('product/product', 'path=' . $category_info['category_id'].'&'.'product_id=' . $other_product_info['product_id']);
																echo "<span class='current-product'>"."• ".$other_product_info['name']."</span>";
															} else {
															?>
															<a href="<?php echo $this->url->link('product/product', 'path=' . $category_info['category_id'].'&'.'product_id=' . $other_product_info['product_id']); ?>"><?php echo "• ".$other_product_info['name']; ?></a>
															<?php
															}
														?>
														</li>
													<?php } ?>
												</ul>
											</div>
											<?php } } ?>
										</div>
									</div>
									<div class="column fixed" style="width:15px;background:url('catalog/view/theme/sisisil/image/bg-gap-detail-product.png') no-repeat;height:220px;">
										<div class="container"> 
											
										</div>
									</div>
									<div class="column fixed" style="width:453px;">
										<div class="container">
											<div class="ss-attribute-product">
													<div class="columns">
														<div class="column fixed" style="width:150px;">Waktu Pemesanan</div>
														<div class="column fixed" style="width:10px;">:</div>
														<div class="column fixed" style="width:200px;"><?php echo $sku; ?></div>
													</div> <br />
													<div class="columns">
														<div class="column fixed" style="width:150px;">Kategori</div>
														<div class="column fixed" style="width:10px;">:</div>
														<div class="column fixed" style="width:200px;">
															<?php 
															if ($category_info['parent_id'] != 0) {
																$parent_category_info = $this->model_catalog_category->getCategory($category_info['parent_id']);
																echo $parent_category_info['name']; 
															} else {
																echo $category_info['name']; 
															}
															?>
														</div>
													</div> <br /> 
													<div class="columns">
														<div class="column fixed" style="width:150px;">Minimum Order</div>
														<div class="column fixed" style="width:10px;">:</div>
														<div class="column fixed" style="width:200px;"><?php echo $minimum; ?> <?php echo $model; ?></div>
													</div> <br /> 
													<div class="columns">
														<div class="column fixed" style="width:150px;">Harga</div>
														<div class="column fixed" style="width:10px;">:</div>
														<div class="column fixed" style="width:200px;"><?php echo $price.",-"; ?></div>
													</div> <br /> <br /> 
													<div class="columns">
														<div class="column fixed" style="width:200px;padding-top:7px;">
															<?php echo $text_qty; ?>
													  		<input type="text" name="quantity" size="2" value="<?php echo $minimum; ?> " />
													  		<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
														</div>
														<div class="column fixed" style="width:200px;"><input type="button" value="" id="button-cart" class="ss-button" /></div>
													</div> 
											</div>
										</div>
									</div>
								</div>
								
								<div class="columns" style="min-height:100px;border-top: 1px solid #ccc;">
									<div class="columns">
										<div class="column fixed" style="width:142px;height:103px;font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;font-size:14px;color:#666666;text-align:center;">
										  <br /><br />Pilih Yang <br /> Anda Suka
										</div>
										<div class="column fixed" style="width:25px;text-align:center;padding-top:30px;">
										 	<a class="prev" id="foo2s_prev" href="#"> < </a>
										</div>
										<div class="column fixed" style="width:585px;">
											<script type="text/javascript" src="catalog/view/theme/sisisil/js/jquery.carouFredSel-6.2.1-packed.js"></script>
											<div class="image_carousel">
												<div id="foo2">
													<!--
													<?php
													if ($category_info['parent_id'] != 0) {
														$main_category = $category_info['parent_id'];
													} else {
														$main_category = $category_info['category_id'];
													}
													
													$children = $this->model_catalog_category->getCategories($main_category);
													if ($children) {
														foreach ($children as $children_category) {
															$child_products = $this->model_catalog_product->getProducts(array('filter_category_id' => $children_category['category_id']));
															foreach ($child_products as $child_product) {	
																$child_image = $this->model_tool_image->resize($child_product['image'], 101, 86, 'h');
																$child_href = $this->url->link('product/product', 'path=' . $children_category['category_id'] . '&product_id='  . $child_product['product_id']);
															?>
																<a href="<?php echo $child_href; ?>"><img src="<?php echo $child_image; ?>" alt="<?php echo $child_product['name']; ?>" width="101" height="86" /> </a>
															<?php
															}				
														}
													}
													
													$products = $this->model_catalog_product->getProducts(array('filter_category_id' => $main_category));
													foreach ($products as $product) {	
														$image = $this->model_tool_image->resize($product['image'], 101, 86, 'h');
														$href = $this->url->link('product/product', 'path=' . $main_category . '&product_id='  . $product['product_id']);
													?>
															<a href="<?php echo $href; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $product['name']; ?>" width="101" height="86" /> </a>	
													<?php
													}
													?>
													-->
													<?php
													foreach ($categories as $category) { 
														$image = $this->model_tool_image->resize($category['image'], 101, 86, 'w');
													?>	
														<a href="<?php echo $category['hrefProduct']; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $category['name']; ?>" width="101" height="86" /></a>
													<?php } ?>
												</div>
											</div>
										</div>
										<div class="column fixed" style="width:25px;text-align:center;padding-top:30px;">
										 	<a class="next" id="foo2s_next" href="#"> > </a>
										</div>
										<script type="text/javascript">
										$("#foo2").carouFredSel({
											circular: false,
											infinite: false,
											auto 	: false,
											prev	: {	
												button	: "#foo2s_prev",
												key		: "left"
											},
											next	: { 
												button	: "#foo2s_next",
												key		: "right"
											}
										});
										</script>
									</div> 
									
									
									
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>
  
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('input[type=\'text\'], input[type=\'hidden\'], input[type=\'radio\']:checked, input[type=\'checkbox\']:checked, select, textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display:none;width:730px;">'+json['success']+'<img src="catalog/view/theme/sisisil/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>

<?php echo $footer; ?>