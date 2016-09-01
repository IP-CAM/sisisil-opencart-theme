
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
									<b><?php echo $heading_title; ?></b>
								</div>
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
							
							<div id="content"><?php echo $content_top; ?>
							  <h1><?php echo $heading_title; ?></h1>
							  <div class="content"><?php echo $text_error; ?></div>
							  <div class="buttons">
								<div class="right"><a href="<?php echo $continue; ?>" class="ss-continue-button" style="display:block;" ></a></div>
							  </div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>


<?php echo $footer; ?>