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
									<b><?php echo "Registrasi"; ?></b>
								</div>
							</div>
						</div>
					</div>
					<div class="column fixed" style="width:580px;">
						<div class="container" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;color:#5e3e1a;font-size:12px;"> 
							
							<?php if ($error_warning) { ?>
							<div class="warning"><?php echo $error_warning; ?></div>
							<?php } ?>
							<div id="content"><?php echo $content_top; ?>
							  <div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 900;font-size:14px;color:#a0d0b0;"><b>Registrasi Akun</b></div><br />
							  <div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 900;font-size:11px;color:#666666;"><b>Jika Anda sudah memiliki akun dengan kami, silahkan login di halaman <a href="index.php?route=account/login" style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 900;font-size:12px;color:#a0d0b0;text-decoration:none;">login akun</a>.</b></div><br />
							  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:14px;color:#000000;padding-top:10px;padding-bottom:5px;"><b>Data Pribadi Anda</b></div>
								<div>
								  <table class="form">
									<tr>
									  <td valign="top">Nama Depan <span class="required">*</span></td>
									 	 <td valign="top"><input type="text" name="firstname" value="<?php echo $firstname; ?>" style="width:350px;" />
											<?php if ($error_firstname) { ?>
											<span class="error"><?php echo $error_firstname; ?></span>
											<?php } ?>
										</td>
									</tr>
									<tr>
									  <td valign="top">Nama Belakang <span class="required">*</span></td>
									  <td valign="top"><input type="text" name="lastname" value="<?php echo $lastname; ?>" style="width:350px;" />
										<?php if ($error_lastname) { ?>
										<span class="error"><?php echo $error_lastname; ?></span>
										<?php } ?></td>
									</tr>
									<tr>
									  <td valign="top">Email <span class="required">*</span></td>
									  <td valign="top"><input type="text" name="email" value="<?php echo $email; ?>" style="width:350px;" />
										<?php if ($error_email) { ?>
										<span class="error"><?php echo $error_email; ?></span>
										<?php } ?></td>
									</tr>
									<tr>
									  <td valign="top">Telepon <span class="required">*</span></td>
									  <td valign="top"><input type="text" name="telephone" value="<?php echo $telephone; ?>" style="width:350px;" />
										<?php if ($error_telephone) { ?>
										<span class="error"><?php echo $error_telephone; ?></span>
										<?php } ?></td>
									</tr>
									<tr>
									  <td valign="top"><?php echo $entry_fax; ?></td>
									  <td valign="top"><input type="text" name="fax" value="<?php echo $fax; ?>" style="width:350px;" /></td>
									</tr>
								  </table>
								</div>
								<div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:14px;color:#000000;padding-top:10px;padding-bottom:5px;"><b>Alamat Anda</b></div>
								<div>
								  <table class="form">
									<!--<tr>
									  <td><?php echo $entry_company; ?></td>
									  <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
									</tr>-->
									<input type="text" name="company" value="<?php echo $company; ?>" hidden="hidden" /> 
									<tr style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
									  <td><?php echo $entry_customer_group; ?></td>
									  <td><?php foreach ($customer_groups as $customer_group) { ?>
										<?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
										<input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
										<label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
										<br />
										<?php } else { ?>
										<input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
										<label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
										<br />
										<?php } ?>
										<?php } ?></td>
									</tr>
									<!--<tr id="company-id-display">
									  <td><span id="company-id-required" class="required">*</span> <?php echo $entry_company_id; ?></td>
									  <td><input type="text" name="company_id" value="<?php echo $company_id; ?>" />
										<?php if ($error_company_id) { ?>
										<span class="error"><?php echo $error_company_id; ?></span>
										<?php } ?></td>
									</tr>-->
									<input type="text" name="company_id" value="<?php echo $company_id; ?>" hidden="hidden" />
										<?php if ($error_company_id) { ?>
										<span class="error"><?php echo $error_company_id; ?></span>
										<?php } ?>
									<!--<tr id="tax-id-display">
									  <td><span id="tax-id-required" class="required">*</span> <?php echo $entry_tax_id; ?></td>
									  <td><input type="text" name="tax_id" value="<?php echo $tax_id; ?>" />
										<?php if ($error_tax_id) { ?>
										<span class="error"><?php echo $error_tax_id; ?></span>
										<?php } ?></td>
									</tr>-->
									<input type="text" name="tax_id" value="<?php echo $tax_id; ?>" hidden="hidden" />
										<?php if ($error_tax_id) { ?>
										<span class="error"><?php echo $error_tax_id; ?></span>
										<?php } ?>
									<tr>
									  <td valign="top">Alamat <span class="required">*</span></td>
									  <td valign="top"><input type="text" name="address_1" value="<?php echo $address_1; ?>" style="width:350px;" />
										<?php if ($error_address_1) { ?>
										<span class="error"><?php echo $error_address_1; ?></span>
										<?php } ?></td>
									</tr>
									<!--<tr>
									  <td><?php echo $entry_address_2; ?></td>
									  <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
									</tr>-->
									<input type="text" name="address_2" value="<?php echo $address_2; ?>" hidden="hidden" />
									<tr>
									  <td valign="top">Kota <span class="required">*</span></td>
									  <td valign="top"><input type="text" name="city" value="<?php echo $city; ?>" style="width:350px;" />
										<?php if ($error_city) { ?>
										<span class="error"><?php echo $error_city; ?></span>
										<?php } ?></td>
									</tr>
									<tr>
									  <td valign="top">Kode Pos <span id="postcode-required" class="required">*</span></td>
									  <td valign="top"><input type="text" name="postcode" value="<?php echo $postcode; ?>" style="width:350px;" />
										<?php if ($error_postcode) { ?>
										<span class="error"><?php echo $error_postcode; ?></span>
										<?php } ?></td>
									</tr>
									<!--<tr>
									  <td><span class="required">*</span> <?php echo $entry_country; ?></td>
									  <td><select name="country_id" hidden="hidden">
										  <option value=""><?php echo $text_select; ?></option>
										  <?php foreach ($countries as $country) { ?>
										  <?php if ($country['country_id'] == $country_id) { ?>
										  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
										  <?php } else { ?>
										  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
										  <?php } ?>
										  <?php } ?>
										</select>
										<?php if ($error_country) { ?>
										<span class="error"><?php echo $error_country; ?></span>
										<?php } ?></td>
									</tr>-->
									<select name="country_id" hidden="hidden">
										  <option value=""><?php echo $text_select; ?></option>
										  <?php foreach ($countries as $country) { ?>
										  <?php if ($country['country_id'] == $country_id) { ?>
										  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
										  <?php } else { ?>
										  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
										  <?php } ?>
										  <?php } ?>
										</select>
										<?php if ($error_country) { ?>
										<span class="error"><?php echo $error_country; ?></span>
										<?php } ?>
									<tr>
									  <td valign="top">Wilayah <span class="required">*</span></td>
									  <td valign="top"><select name="zone_id">
										</select>
										<?php if ($error_zone) { ?>
										<span class="error"><?php echo $error_zone; ?></span>
										<?php } ?></td>
									</tr>
								  </table>
								</div>
								<div style="font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-weight: 300;font-size:14px;color:#000000;padding-top:10px;padding-bottom:5px;"><b>Kata Sandi</b></div>
								<div>
								  <table class="form">
									<tr>
									  <td valign="top">Kata Sandi <span class="required">*</span></td>
									  <td valign="top"><input type="password" name="password" value="<?php echo $password; ?>" style="width:350px;" />
										<?php if ($error_password) { ?>
										<span class="error"><?php echo $error_password; ?></span>
										<?php } ?></td>
									</tr>
									<tr>
									  <td valign="top">Konfirmasi Kata Sandi <span class="required">*</span></td>
									  <td valign="top"><input type="password" name="confirm" value="<?php echo $confirm; ?>" style="width:350px;" />
										<?php if ($error_confirm) { ?>
										<span class="error"><?php echo $error_confirm; ?></span>
										<?php } ?></td>
									</tr>
								  </table>
								</div>
								<!--
								<h2><?php echo $text_newsletter; ?></h2>
								<div class="content">
								  <table class="form">
									<tr>
									  <td><?php echo $entry_newsletter; ?></td>
									  <td><?php if ($newsletter) { ?>
										<input type="radio" name="newsletter" value="1" checked="checked" />
										<?php echo $text_yes; ?>
										<input type="radio" name="newsletter" value="0" />
										<?php echo $text_no; ?>
										<?php } else { ?>
										<input type="radio" name="newsletter" value="1" />
										<?php echo $text_yes; ?>
										<input type="radio" name="newsletter" value="0" checked="checked" />
										<?php echo $text_no; ?>
										<?php } ?></td>
									</tr>
								  </table>
								</div>
								-->
								<!--<?php if ($text_agree) { ?>
								<div class="buttons">
								 <div class="right"><?php echo $text_agree; ?>
									<?php if ($agree) { ?>
									<input type="checkbox" name="agree" value="1" checked="checked" />
									<?php } else { ?>
									<input type="checkbox" name="agree" value="1" />
									<?php } ?>
									<input type="submit" value="<?php echo $button_continue; ?>" class="button" />
								  </div>
								</div>
								<?php } else { ?>
								<div class="buttons">
								  <div class="right">
								  	<input type="checkbox" name="agree" value="1" checked="checked" hidden="hidden"/>
									<input type="submit" value="<?php echo $button_continue; ?>" class="button" />
								  </div>
								</div>
								<?php } ?>-->
							
								  <div class="right" style="float:right;margin-right:55px;">
								  	<input type="checkbox" name="agree" value="1" checked="checked" hidden="hidden"/>
									<input type="submit" value=""  class="ss-continue-button" />
								  </div>
							  </form>
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
$('input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
});
//--></script> 
<?php echo $footer; ?>