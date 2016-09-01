<? ?>
<script type='text/javascript'>
  $(function() {
    $('#focus [title]').tipsy({trigger: 'focus', gravity: 'w'});
  });
</script>
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
							
							<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="pembayaran">
								  <b><?php echo $text_info; ?></b>
								  <div class="content">            
									<table width="100%">
									  <?php if ($this->customer->isLogged()) { ?>
									  <tr>
										<td width="190"><b><span class="required">*</span> <?php echo $entry_nama; ?></b></td>
										<td>
											<input type="text" name="nama" size="30" class="tableLogin" value="<?php echo $nama; ?>" />
											<?php if ($error_nama) { ?>
												<span class="error"><?php echo $error_nama; ?></span>
											<?php } ?>
										</td>
									  </tr>
		  
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_email; ?></b></td>
										<td>
											<input type="text" name="email" size="30" class="tableLogin" value="<?php echo $email; ?>" />
											<?php if ($error_email) { ?>
												<span class="error"><?php echo $error_email; ?></span>
											<?php } ?>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_telp; ?></b></td>
										<td>
											<input type="text" name="telp" size="30" class="tableLogin" value="<?php echo $telp; ?>" />
											<?php if ($error_telp) { ?>
												<span class="error"><?php echo $error_telp; ?></span>
											<?php } ?>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_order_id; ?></b></td>
										<td>
										<select name="order_id" size="1" class="tableLogin" title="Pilih Order Pembayaran">
										<?php foreach ($orders as $order) { ?>
										<option value="<?php echo $order['order_id'];?>">#<?php echo $order['order_id'].' --> '.$order['date_added'].'&nbsp;&nbsp;&nbsp;('.$order['total'].' - '.$order['products'].' produk)';?></option>
										<?php } ?>
										</select>            
										<?php if ($error_order_id) { ?>
										<span class="error"><?php echo $error_order_id; ?></span>
										<?php } ?>
										</td>
									  </tr>
									  <?php } else {?>
									  <tr>
										<td  width="190"><b><span class="required">*</span> <?php echo $entry_nama; ?></b></td>
										<td>
											<input type="text" name="nama" size="30" class="tableLogin" value="<?php echo $nama; ?>"  title="Ex: tidakdijual"/>
											<?php if ($error_nama) { ?>
												<span class="error"><?php echo $error_nama; ?></span>
											<?php } ?>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_email; ?></b></td>
										<td>
											<input type="text" name="email" size="30" class="tableLogin" value="<?php echo $email; ?>"  title="Ex: sampah@tidakdijual.com"/>
											<?php if ($error_email) { ?>
												<span class="error"><?php echo $error_email; ?></span>
											<?php } ?>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_telp; ?></b></td>
										<td>
											<input type="text" name="telp" size="30" class="tableLogin" value="<?php echo $telp; ?>"  title="Ex : 0812345678"/>
											<?php if ($error_telp) { ?>
												<span class="error"><?php echo $error_telp; ?></span>
											<?php } ?>
										</td>
									  </tr>          
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_order_id; ?></b></td>
										<td>
										<input type="text" name="order_id" size="30" class="tableLogin" value="<?php echo $order_id; ?>"  title="Ex: 123"/>
										<?php if ($error_order_id) { ?>
										<span class="error"><?php echo $error_order_id; ?></span>
										<?php } ?>
										</td>
									  </tr>
									  <?php }?>
									</table>
								  </div>
								  <br /><br />


								  <b><?php echo $text_bayar; ?></b>
								  <div class="content" id="focus">            
									<table width="100%">     
									  <tr>
										<td width="190"><b><span class="required">*</span> <?php echo $entry_cara; ?></b></td>
										<td>
										<select name="cara" size="1" class="tableLogin" title="Pilih Cara Pembayaran" onchange="cara_bayar(this.value)">  
										  <option value="ATM">ATM</option> 
										  <option value="Mobile Banking">Mobile Banking</option> 
										  <!--<option value="<?php echo $text_internet_banking; ?>"><?php echo $text_internet_banking; ?></option> -->
										</select> 
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_ke_bank; ?></b></td>
										<td>
										<span id="cara_bayar">
									<select name="ke_bank" size="1" class="tableLogin" title="Pilih bank tujuan pembayaran">  
										  <option value="<?php echo $text_bca; ?>"><?php echo $text_bca; ?></option> 
										  <option value="<?php echo $text_bni; ?>"><?php echo $text_bni; ?></option>
										  <option value="<?php echo $text_mandiri; ?>"><?php echo $text_mandiri; ?></option>
										</select> 
									</span>
										</td>
									  </tr>


										<script type="text/javascript"><!--
										function cara_bayar (method){
											if (method == '<?php echo $text_internet_banking; ?>'){
											document.getElementById('cara_bayar').innerHTML='<input type=text name="ke_bank" class="tableLogin" size="30" title="Ex: tidakdijual">';
											document.getElementById('pelanggan_hide_show').style.display='none';
											document.getElementById('pelanggan_hide_show_2').style.display='inline';
											document.getElementById('pemilik').name='pemilik1';
											document.getElementById('pemilik2').name='pemilik';
											}else{
											document.getElementById('cara_bayar').innerHTML='<select name="ke_bank" size="1" class="tableLogin" title="Pilih bank tujuan pembayaran">                <option value="<?php echo $text_bca; ?>"><?php echo $text_bca; ?></option>               <option value="<?php echo $text_bni; ?>"><?php echo $text_bni; ?></option>              <option value="<?php echo $text_mandiri; ?>"><?php echo $text_mandiri; ?></option>            </select> ';
											document.getElementById('pelanggan_hide_show').style.display='inline';
											document.getElementById('pelanggan_hide_show_2').style.display='none';
											document.getElementById('pemilik').name='pemilik2';
											document.getElementById('pemilik1').name='pemilik';
											}
										}


										//--></script>



									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_jumlah; ?></b></td>
										<td>
										<input type="text" name="jumlah" size="30" class="tableLogin" value="<?php echo $jumlah; ?>" title="Ex: 1 750 000"/>
										<?php if ($error_jumlah) { ?>
										<span class="error"><?php echo $error_jumlah; ?></span>
										<?php } ?>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_tanggal; ?></b></td>
										<td>

							<select name=t>
								<?php
							for ($a=1; $a<=31; $a++){
							echo "<option value=\"$a\" "; if($t == $a){ echo"selected";}  echo">$a</option>";
							}
								?>
							</select>
							<select name=g>
								<?php
							$bulan = array("Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Ags", "Sep", "Okt", "Nov", "Des");
							for ($b=1; $b<=12; $b++){
							echo "<option value=\"$b\" "; if($g == $b){ echo"selected";}  echo">".$bulan[$b-1]."</option> ";
							}
								?>
							</select>
							<select name=l>
								<?php
							for ($c=2012; $c<=2055; $c++){
							echo "<option value=\"$c\" "; if($l == $c){ echo"selected";}  echo">$c</option>";
							}
								?>
							</select>

							<? /*
							<br>

										<input type="text" name="tanggal" size="30" class="tableLogin" value="<?php echo $tanggal; ?>" title="Contoh : 12/12/2010"/>
							*/?>
										<?php if ($error_tanggal) { ?>
										<span class="error"><?php echo $error_tanggal; ?></span>
										<?php } ?>
										</td>
									  </tr>          
		 
									</table>
								  </div>
							<br /><br />
							<!-- 1 -->
							<span id=pelanggan_hide_show>
								  <b><?php echo $text_pelanggan; ?></b>
								  <div class="content" id="focus">            
									<table width="100%">    
									  <tr>
										<td width="190"><b><span class="required">*</span> <?php echo $entry_dari_bank; ?></b></td>
										<td>
										<input type="text" name="dari_bank" size="30" class="tableLogin" value="<?php echo $dari_bank; ?>" title="Contoh : BCA, BNI, Mandiri"/>
										<?php if ($error_dari_bank) { ?>
										<span class="error"><?php echo $error_dari_bank; ?></span>
										<?php } ?>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_no_rekening; ?></b></td>
										<td>
										<input type="text" name="no_rekening" size="30" class="tableLogin" value="<?php echo $no_rekening; ?>" title="Tulis nomor rekening bank Anda dan harus berupa angka/nomor. Contoh : 6007001511"/>
										<?php if ($error_no_rekening) { ?>
										<span class="error"><?php echo $error_no_rekening; ?></span>
										<?php } ?>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_pemilik; ?></b></td>
										<td>
										<input id=pemilik  type="text" name="pemilik" size="30" class="tableLogin" value="<?php echo $pemilik; ?>" title="Tulis nama pemilik rekening bank"/>
										<?php if ($error_pemilik) { ?>
										<span class="error"><?php echo $error_pemilik; ?></span>
										<?php } ?>
										</td>
									  </tr>
									</table>
								  </div>
							</span>

							<!-- 2 -->
							<span id=pelanggan_hide_show_2 style="display:none">
								  <b><?php echo $text_pelanggan_2; ?></b>
								  <div class="content" id="focus">            
									<table width="100%">    
									  <tr>
										<td width="190"><b><span class="required">*</span> <?php echo $entry_pemilik_2; ?></b></td>
										<td>
										<input id=pemilik2 type="text" name="pemilik2" size="30" class="tableLogin" value="<?php echo $pemilik; ?>" title="Ex: tidakdijual"/>
										<?php if ($error_pemilik) { ?>
										<span class="error"><?php echo $error_pemilik; ?></span>
										<?php } ?>
										</td>
									  </tr>

									</table>
								  </div>
							</span>

								  <div class="content" id="focus"> 
							<table width="100%">
									  <tr>
										<td width="190"><b> <?php echo $entry_berita; ?></b></td>
										<td>
										  <textarea name="berita" style="width: 99%;" class="tableLogin" rows="5"><?php echo $berita; ?></textarea>
										</td>
									  </tr>
									  <tr>
										<td><b><span class="required">*</span> <?php echo $entry_captcha; ?></b></td>
									<td><img src="index.php?route=information/contact/captcha" /><br /><input type="text" name="captcha" class="tableLogin" value="<?php echo $captcha; ?>" autocomplete="off" />
										  <?php if ($error_captcha) { ?>
										  <span class="error"><?php echo $error_captcha; ?></span>
										  <?php } ?>
								   </td>
									  </tr>
							</table>
								</div>


								  <div class="buttons">
									<table>
									  <tr>
										<td align="right"><a onclick="$('#pembayaran').submit();" class="ss-continue-button" style="display:block;"></a></td>
									  </tr>
									</table>    
		
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
