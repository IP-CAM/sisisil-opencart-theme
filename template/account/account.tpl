<?php echo $header; ?>

<div class="unit horizontal-center" style="width:1020px;padding-bottom:30px;margin-top:50px;" >
			
	<div class="columns">
		<div class="column fixed" style="width:780px;">
			<div class="container"> 
				
				<div class="columns" style="padding-bottom:13px;">
					<div class="column fixed" style="width:200px;">
						<div class="container"> 
							<div style="width:182;min-height:100px;margin-left:13px;">
								<div style="width:160px;text-align:center;padding:10px;padding-top:40px;font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:20px;color:#a0d0b0;" >											
									<b><?php echo $heading_title; ?></b>
								</div>
							</div>
						</div>
					</div>
					<div class="column fixed" style="width:580px;">
						<div class="container" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;color:#5e3e1a;font-size:12px;"> 
							
							  <?php if ($success) { ?>
								<div class="success"><?php echo $success; ?></div>
								<?php } ?>
								<div id="content"><?php echo $content_top; ?>
								 
								  <h2><?php echo $text_my_account; ?></h2>
								  <div class="content">
									<ul>
									  <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
									  <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
									  <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
									  <!--<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>-->
									</ul>
								  </div>
								  <h2><?php echo $text_my_orders; ?></h2>
								  <div class="content">
									<ul>
									  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									  <!--<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
									  <?php if ($reward) { ?>
									  <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
									  <?php } ?>
									  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
									  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>-->
									</ul>
								  </div>
								  <!--
								  <h2><?php echo $text_my_newsletter; ?></h2>
								  <div class="content">
									<ul>
									  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
									</ul>
								  </div>-->
								</div>
							
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