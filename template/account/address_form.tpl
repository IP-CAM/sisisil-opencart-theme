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
							
							  <div id="content"><?php echo $content_top; ?>
								  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
									<h2><?php echo $text_edit_address; ?></h2>
									<div class="content">
									  <table class="form">
										<tr>
										  <td>Nama Depan <span class="required">*</span></td>
										  <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
											<?php if ($error_firstname) { ?>
											<span class="error"><?php echo $error_firstname; ?></span>
											<?php } ?></td>
										</tr>
										<tr>
										  <td>Nama Belakang <span class="required">*</span></td>
										  <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
											<?php if ($error_lastname) { ?>
											<span class="error"><?php echo $error_lastname; ?></span>
											<?php } ?></td>
										</tr>
										<!--<tr>
										  <td><?php echo $entry_company; ?></td>
										  <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
										</tr>-->
										<input type="text" name="company" value="<?php echo $company; ?>" hidden="hidden" />
										<?php if ($company_id_display) { ?>
										<!--<tr>
										  <td><?php echo $entry_company_id; ?></td>
										  <td><input type="text" name="company_id" value="<?php echo $company_id; ?>" />
											<?php if ($error_company_id) { ?>
											<span class="error"><?php echo $error_company_id; ?></span>
											<?php } ?></td>
										</tr>-->
										<input type="text" name="company_id" value="<?php echo $company_id; ?>" hidden="hidden" />
										<?php } ?>
										<?php if ($tax_id_display) { ?>
										<tr>
										  <td><?php echo $entry_tax_id; ?></td>
										  <td><input type="text" name="tax_id" value="<?php echo $tax_id; ?>" />
											<?php if ($error_tax_id) { ?>
											<span class="error"><?php echo $error_tax_id; ?></span>
											<?php } ?></td>
										</tr>
										<?php } ?>
										<tr>
										  <td>Alamat <span class="required">*</span></td>
										  <td><input type="text" name="address_1" value="<?php echo $address_1; ?>" />
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
										  <td>Kota <span class="required">*</span></td>
										  <td><input type="text" name="city" value="<?php echo $city; ?>" />
											<?php if ($error_city) { ?>
											<span class="error"><?php echo $error_city; ?></span>
											<?php } ?></td>
										</tr>
										<tr>
										  <td>Kode Pos <span id="postcode-required" class="required">*</span></td>
										  <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" />
											<?php if ($error_postcode) { ?>
											<span class="error"><?php echo $error_postcode; ?></span>
											<?php } ?></td>
										</tr>
										<!--<tr>
										  <td><span class="required">*</span> <?php echo $entry_country; ?></td>
										  <td><select name="country_id">
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
										<tr>
										  <td>Wilayah <span class="required">*</span></td>
										  <td><select name="zone_id">
											</select>
											<?php if ($error_zone) { ?>
											<span class="error"><?php echo $error_zone; ?></span>
											<?php } ?></td>
										</tr>
										<tr>
										  <td>Alamat Default</td>
										  <td><?php if ($default) { ?>
											<input type="radio" name="default" value="1" checked="checked" />
											<?php echo $text_yes; ?>
											<input type="radio" name="default" value="0" />
											<?php echo $text_no; ?>
											<?php } else { ?>
											<input type="radio" name="default" value="1" />
											<?php echo $text_yes; ?>
											<input type="radio" name="default" value="0" checked="checked" />
											<?php echo $text_no; ?>
											<?php } ?></td>
										</tr>
									  </table>
									</div>
									<div class="buttons">
									  <div class="left">
									  	<a href="<?php echo $back; ?>" class="ss-back-button" style="display:block;" ></a>
									  </div>
									  <div class="right">
										<input type="submit" value=""  class="ss-continue-button" />
									  </div>
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
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/address/country&country_id=' + this.value,
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
<?php echo $footer; ?>