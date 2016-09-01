
	<ul id="mega-1" class="mega-menu" onMouseOut="fadeOutAll();" >
		<?php foreach ($categories as $category) { ?>
		<li><?php if ($category['category_id'] == $category_id) { ?>
			<a id="<?php echo $category['category_id']; ?>" href="<?php echo $category['hrefProduct']; ?>" class="active" ><?php echo $category['name']; ?></a>
			<?php } else { ?>
			<a id="<?php echo $category['category_id']; ?>" href="<?php echo $category['hrefProduct']; ?>" onMouseOver="fadeIn(<?php echo $category['category_id']; ?>)" ><?php echo $category['name']; ?></a>
			<?php } ?>
			<div id="ul-<?php echo $category['category_id']; ?>" class="sub-container" style="display:none;margin-left:160px;" onMouseOver="fadeInFast(<?php echo $category['category_id']; ?>);$('#'+<?php echo $category['category_id']; ?>).addClass('hightlight');"  onMouseOut="$('#'+<?php echo $category['category_id']; ?>).removeClass('hightlight');" >
				<?php
				$totalRow = 0;
				if (isset($_GET['path'])) { 
					$cat_id = $_GET['path'];
				} else {
					if (isset($_GET['product_id'])) { 
						$ctgries = $this->model_catalog_product->getCategories($this->request->get['product_id']);
						$ctgries_info = $this->model_catalog_category->getCategory($ctgries[0]['category_id']);
						$cat_id = $ctgries_info['category_id'];
					} else {
						$cat_id = 0;
					}
				}
				?>
				<?php if ($category['children']) { ?>
				  <?php foreach ($category['children'] as $child) { $totalRow += 1; 
				  	if ($totalRow%15 == 1) {
				  	?>
				  		<div class="col">
				  	<?php
				  	}
				  ?>
					<?php if ($cat_id) { ?>
						<?php if ($child['category_id'] == $cat_id)  { ?>
						<a id="<?php echo $child['category_id']; ?>" href="<?php echo $child['href']; ?>" class="active" ><?php echo $child['name']; ?></a>
							<?php
							$category_info = $this->model_catalog_category->getCategory($cat_id); 
							if ($category_info) { ?>
								<script type="text/javascript">
									var categ = document.getElementById("<?php echo $category_info['parent_id']; ?>");
									categ.className = categ.className + " active";
									<?php if (!isset($_GET['from_product'])) { ?>
									var catul = document.getElementById("ul-<?php echo $category['category_id']; ?>");
									catul.style.display = 'inline'; 
									<?php } ?>
								</script>
							<?php } ?>
						<?php } else { ?>
						<a id="<?php echo $child['category_id']; ?>" href="<?php echo $child['href']; ?>" ><?php echo $child['name']; ?></a>
						<?php } ?>
					<? } else { ?>
						<a id="<?php echo $child['category_id']; ?>" href="<?php echo $child['href']; ?>" ><?php echo $child['name']; ?></a>
					<?php } ?>
				  <?php 
				  	if ($totalRow%15 == 0) {
				  	echo "</div>";
					} } ?>
				<?php } ?>
				
				<?php if ($category['product']) { ?>
				  <?php foreach ($category['product'] as $product) { $totalRow += 1; 
				  if ($totalRow%15 == 1) {
				  ?>
				  		<div class="col">
				  <?php
				  }
				  ?>
					<?php if (isset($_GET['product_id'])) { ?>
						<?php if ($product['product_id'] == $_GET["product_id"])  { ?>
						<a href="<?php echo $product['href']; ?>" class="active"><?php echo $product['name']; ?></a>
						<?php $categoriesFromProduct = $this->model_catalog_product->getCategories($product['product_id']);
							  $x = 0;
							  foreach ($categoriesFromProduct as $categoryFromProduct) {
							  $x += 1;
							  ?>
										  <script type="text/javascript">
											var cat<?php echo $x; ?> = document.getElementById("<?php echo $categoryFromProduct['category_id']; ?>");
											cat<?php echo $x; ?>.className = cat<?php echo $x; ?>.className + " active";
											<?php if (!isset($_GET['from_product'])) { ?>
											var catul = document.getElementById("ul-<?php echo $category['category_id']; ?>");
											catul.style.display = 'inline'; 
											<?php } ?>
										  </script>
									<?php 							  
							  }
						?>
						<?php } else { ?>
						<a href="<?php echo $product['href']; ?>" ><?php echo $product['name']; ?></a>
						<?php } ?>
					<? } else { ?>
						<a href="<?php echo $product['href']; ?>" ><?php echo $product['name']; ?></a>
					<?php } ?>
				  <?php 
				  	if ($totalRow%15 == 0) {
				  	echo "</div>";
					} } ?>
				<?php } ?>
				
				<?php 
				if ($totalRow%15 != 0) {
				  	echo "</div>";
				} ?>
				
			</div>
			
		</li>
		<?php } ?>
	</ul>
	
	
	
	<script>
	function fadeIn(id)
	{
		$(".sub-container").fadeOut(0);
		$("#ul-"+id).fadeIn(0);
	}	
	function fadeInFast(id)
	{
		$("#ul-"+id).fadeIn(0);
	}	
	function fadeOut(id)
	{
		$("#ul-"+id).fadeOut(0);
	}	
	function fadeOutAll()
	{
		$(".sub-container").fadeOut(0);
	}	
	fadeOutAll();
	</script>


