<?php echo $header; $this->load->model('tool/image'); ?>

<div class="unit horizontal-center" style="width:1020px;padding-bottom:30px;margin-top:50px;" >
			
	<div class="columns">
		<div class="column fixed" style="width:780px;">
			<div class="container"> 
				
				<div class="columns" style="padding-bottom:13px;">
					<div class="column fixed" style="width:200px;">
						<div class="container"> 
							<div style="width:182;min-height:100px;margin-left:13px;margin-top:2px;">
								<div style="width:160px;text-align:center;padding:10px;padding-top:40px;font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:20px;color:#a0d0b0;" >											
									<b><?php echo "Produk Kami" ?></b>
								</div>
								<?php echo $column_left; ?>
							</div>
						</div>
					</div>
					<div class="column fixed" style="width:580px;">
						<div class="container" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;color:#5e3e1a;font-size:12px;"> 
						
							<?php $x = 0;
							foreach ($categories as $category) { 
								$x += 1;
								$image = $this->model_tool_image->resize($category['image'], 190, 214, 'w');
								if ($x % 3 == 0) { ?>
									<div style="width:190px;height:214px;float:left;padding-bottom:5px;position:relative;">
								<?php } else { ?>
									<div style="width:190px;height:214px;float:left;padding-bottom:5px;padding-right:5px;position:relative;">
								<?php } ?>
										<a href="<?php echo $category['hrefProduct']; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $category['name'];?>" style="border:1px solid #999999;" />
										<div style="width:177px;height:103px;background:url('catalog/view/theme/sisisil/image/bg-all-products-text-category.png') no-repeat;position:absolute;left:0px;top:0px;text-align:center;padding-top:7px;color:#5e3e1a;font-size:14px;font-family:'HelveticaNeue-Light','Helvetica Neue Light','Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif;font-weight:300;">
											<div style="width:150px;margin-left:-10px;margin-top:30px;-webkit-transform: rotate(-31deg);-moz-transform: rotate(-31deg);-ms-transform: rotate(-31deg);-o-transform: rotate(-31deg);-ms-filter:progid:DXImageTransform.Microsoft.Matrix(M11=0.8571673007021123, M12=0.515038074910054, M21=-0.515038074910054, M22=0.8571673007021123, SizingMethod='auto expand');filter: progid:DXImageTransform.Microsoft.Matrix(M11=0.8571673007021123,M12=0.515038074910054,M21=-0.515038074910054,M22=0.8571673007021123,SizingMethod='auto expand');"><?php echo $category['name']; ?></div>
										</div>
										</a> </div>
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