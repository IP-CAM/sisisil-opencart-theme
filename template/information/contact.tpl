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
						<div class="container" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;color:#5e3e1a;font-size:12px;width:400px;"> 
							
							<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<!--<h2><?php echo $text_location; ?></h2>-->
								<div class="contact-info" style="font-size:11px;border-bottom: 1px solid #cccccc;">
								  Pastikan Anda telah mengisi setiap kolom, sehingga kami dapat memberikan Anda pelayanan terbaik.<br /><br />
								</div><br />
								<div class="content">
								&nbsp;&nbsp;Nama <span class="required">*</span><br />
								<input type="text" name="name" value="<?php echo $name; ?>" />
								<br />
								<?php if ($error_name) { ?>
								<span class="error"><?php echo $error_name; ?></span>
								<?php } ?>
								<br />
								&nbsp;&nbsp;Alamat Email <span class="required">*</span><br />
								<input type="text" name="email" value="<?php echo $email; ?>" />
								<br />
								<?php if ($error_email) { ?>
								<span class="error"><?php echo $error_email; ?></span>
								<?php } ?>
								<br />
								&nbsp;&nbsp;Message <span class="required">*</span><br />
								<textarea name="enquiry" cols="40" rows="10" style="width: 99%;resize:none;"><?php echo $enquiry; ?></textarea>
								<br />
								<?php if ($error_enquiry) { ?>
								<span class="error"><?php echo $error_enquiry; ?></span>
								<?php } ?>
								<br />
								<div style="color:#000"><b><?php echo $entry_captcha; ?></b></div>
								<input type="text" name="captcha" value="<?php echo $captcha; ?>" style="width:80px;" />
								<br />
								<img src="index.php?route=information/contact/captcha" alt="" />
								<?php if ($error_captcha) { ?>
								<span class="error"><?php echo $error_captcha; ?></span>
								<?php } ?>
								</div>
								<br />
								<div class="buttons">
								  <div class="right"><input type="submit" value=""  class="ss-continue-button" /></div>
								</div>
							</form>
							
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