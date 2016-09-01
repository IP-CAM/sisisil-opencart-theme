<?php echo $header; $this->load->model('catalog/information'); $this->load->model('tool/image'); ?>


<div class="unit horizontal-center" style="width:1020px;margin-top:50px;padding-bottom:50px;" >
	
	<div class="columns">
		<div class="column fixed" style="width:780px;">
			<div class="container"> 
				
				<div class="columns" style="padding-bottom:13px;border-bottom: 1px solid #cccccc;">
					<div class="column fixed" style="width:200px;">
						<div class="container"> 
							<?php
								$pesanSisisil = $this->model_catalog_information->getInformation(9);
							?>
							<div style="background:url('catalog/view/theme/sisisil/image/bg-pesan-sisisil-center.png') repeat-y;width:182;min-height:180px;margin-left:13px;">
								<div style="width:160px;text-align:center;padding-top:20px;font-family:Pasifico;font-size:26px;color:#5e3e1a;" >											
									<?php echo $pesanSisisil['title']; ?>
								</div>
								<div style="width:160px;text-align:center;padding:10px;font-family:'HelveticaNeue-Light','Helvetica Neue Light','Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif;font-weight:300;font-size:12px;color:#5e3e1a;" >											
									<?php echo html_entity_decode($pesanSisisil['description']); ?>
								</div>
							</div>
							<div style="background:url('catalog/view/theme/sisisil/image/bg-pesan-sisisil-bottom.png') repeat-y;width:182;height:31px;margin-left:13px;">
								
							</div>
						</div>
					</div>
					<div class="column fixed" style="width:580px;">
						<div class="container" style="font-family:'HelveticaNeue-Light','Helvetica Neue Light','Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif;font-weight:300;color:#5e3e1a;font-size:17px;"> 
							<?php
							$selamatDatang = $this->model_catalog_information->getInformation(8);
							echo html_entity_decode($selamatDatang['description']) ;
							?>
						</div>
					</div>
				</div>
				
				<div class="columns" style="padding-top:10px;">
					<div class="column fixed" style="width:200px;">
						<div class="container"> 
							<div style="width:182px;height:100px;margin-left:13px;">
								<a href="index.php?route=information/information&information_id=6"><img src="catalog/view/theme/sisisil/image/how-order.png" alt="Cara Memesan" /></a>
							</div>
							
						</div>
					</div>
					<div class="column fixed" style="width:580px;">
						<div class="container" > 
							
							
							<?php $x = 0;
							foreach ($categories as $category) { 
								$x += 1;
								$image = $this->model_tool_image->resize($category['image'], 190, 214, 'w');
								if ($x % 3 == 0) { ?>
									<div style="width:190px;height:214px;float:left;padding-bottom:5px;position:relative;">
								<?php } else { ?>
									<div style="width:190px;height:214px;float:left;padding-bottom:5px;padding-right:5px;position:relative;">
								<?php } ?>
										<a href="<?php echo $category['hrefProduct']; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $category['name']; ?>" />
										<div style="width:177px;height:34px;background:url('catalog/view/theme/sisisil/image/bg-home-text-category.png') no-repeat;position:absolute;left:7px;top:172px;text-align:center;padding-top:7px;color:#5e3e1a;font-size:14px;font-family:'HelveticaNeue-Light','Helvetica Neue Light','Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif;font-weight:300;">
											<?php echo $category['name']; ?>
										</div></a>
										</div>
							<?php } ?>
							
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
	
<?php echo $footer; ?>