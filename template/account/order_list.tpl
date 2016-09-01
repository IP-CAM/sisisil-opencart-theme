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
								<?php echo $column_left; ?>
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
							<div style="width:777px;height:50px;">
								<div id="notification"></div>
							</div>
							
							<div id="content" style="width:777px;"><?php echo $content_top; ?>
							  <?php if ($orders) { ?>
							  <?php foreach ($orders as $order) { ?>
							  <div class="order-list">
								<div class="order-id"><b><?php echo $text_order_id; ?></b> #<?php echo $order['order_id']; ?></div>
								<div class="order-status"><b><?php echo $text_status; ?></b> <?php echo $order['status']; ?></div>
								<div class="order-content">
								  <div><b><?php echo $text_date_added; ?></b> <?php echo $order['date_added']; ?><br />
									<b><?php echo $text_products; ?></b> <?php echo $order['products']; ?></div>
								  <div><b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?><br />
									<b><?php echo $text_total; ?></b> <?php echo $order['total']; ?></div>
								  <div class="order-info"><a href="<?php echo $order['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a>&nbsp;&nbsp;<a href="<?php echo $order['reorder']; ?>"><img src="catalog/view/theme/default/image/reorder.png" alt="<?php echo $button_reorder; ?>" title="<?php echo $button_reorder; ?>" /></a></div>
								</div>
							  </div>
							  <?php } ?>
							  <div class="pagination"><?php echo $pagination; ?></div>
							  <?php } else { ?>
							  <div class="content"><?php echo $text_empty; ?></div>
							  <?php } ?>
							  <div class="buttons">
								<div class="right">
								
								<a href="<?php echo $continue; ?>" class="ss-continue-button" style="display:block;"></a></div>
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