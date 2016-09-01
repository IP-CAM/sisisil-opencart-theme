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
									<b><?php echo "Login Akun"; ?></b>
								</div>
							</div>
						</div>
					</div>
					<div class="column fixed" style="width:580px;">
						<div class="container" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;color:#5e3e1a;font-size:12px;"> 
							
							<div id="content">
							  <div class="login-content">
								<div>
								  <div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 900;font-size:14px;color:#a0d0b0;padding-bottom:10px;"><b>Daftar Akun</b></div>
								  <div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 900;font-size:11px;color:#666666;border-bottom: 1px solid #cccccc;padding-bottom:20px;">
									<p><b>Dengan membuat akun, Anda akan dapat berbelanja lebih cepat, up to date mengenai status pesanan, dan bisa meninjau ulang pesanan telah Anda buat sebelumnya.</b></p>
									<a href="<?php echo $register; ?>" class="ss-continue-button" style="display:block;" ></a>
								  </div>
								</div>
								<div style="padding-top:20px;">
								  <div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 900;font-size:14px;color:#a0d0b0;padding-bottom:10px;"><b>Pelanggan</b></div>
								  	<?php if ($success) { ?>
									<div class="success"><?php echo $success; ?></div>
									<?php } ?>
									<?php if ($error_warning) { ?>
									<div class="warning"><?php echo $error_warning; ?></div>
									<?php } ?>
								  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
									<div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:11px;color:#666666;border-bottom: 1px solid #cccccc;padding-bottom:20px;">
									  <p style="font-weight:900;"><b>Saya sudah Menjadi pelanggan Sisisil</b></p>
									  <div style="font-size:14px;">
									  &nbsp;Alamat Email <span class="required">*</span><br />
									  <input type="text" name="email" value="<?php echo $email; ?>" style="width:360px;" />
									  <br /><br />
									  &nbsp;Kata Sandi <span class="required">*</span><br />
									  <input type="password" name="password" value="<?php echo $password; ?>" style="width:360px;" />
									  </div>
									  <a href="<?php echo $forgotten; ?>" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:12px;color:#a0d0b0;">Lupa Kata Sandi</a><br /><br />
									  <br />
									  <input type="submit" value=""  class="ss-login-button" />
									  <?php if ($redirect) { ?>
									  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
									  <?php } ?>
									</div>
								  </form>
								</div>
							  </div>
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

<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>